(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[8],{

/***/ "2xdY":
/*!*****************************************************************!*\
  !*** ./modules/TwoFactorAuth/js/popups/ConfirmPasswordPopup.js ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var
	_ = __webpack_require__(/*! underscore */ "F/us"),
	ko = __webpack_require__(/*! knockout */ "0h2I"),

	Screens = __webpack_require__(/*! modules/CoreWebclient/js/Screens.js */ "SQrT"),
	TextUtils = __webpack_require__(/*! modules/CoreWebclient/js/utils/Text.js */ "RN+F"),
	CAbstractPopup = __webpack_require__(/*! modules/CoreWebclient/js/popups/CAbstractPopup.js */ "czxF"),
	Ajax = __webpack_require__(/*! modules/CoreWebclient/js/Ajax.js */ "o0Bx")
;

/**
 * @constructor
 */
function CConfirmPasswordPopup()
{
	CAbstractPopup.call(this);

	this.onConfirm = null;
	this.password = ko.observable('');
	this.inPropgress = ko.observable(false);
	this.action = '';
}

_.extendOwn(CConfirmPasswordPopup.prototype, CAbstractPopup.prototype);

CConfirmPasswordPopup.prototype.PopupTemplate = 'TwoFactorAuth_ConfirmPasswordPopup';

CConfirmPasswordPopup.prototype.onOpen = function (onConfirm, sAction)
{
	this.onConfirm = onConfirm;
	this.action = sAction;
};

CConfirmPasswordPopup.prototype.verifyPassword = function ()
{
	this.inPropgress(true);
	Ajax.send(
		'TwoFactorAuth',
		this.action, 
		{
			'Password': this.password()
		},
		this.onGetVerifyResponse,
		this
	);
};

CConfirmPasswordPopup.prototype.onGetVerifyResponse = function (oResponse)
{
	var oResult = oResponse.Result;

	if (oResult)
	{
		if (_.isFunction(this.onConfirm))
		{
			this.onConfirm(oResponse);
		}
		this.closePopup();
		this.password('');
	}
	else
	{
		Screens.showError(TextUtils.i18n('TWOFACTORAUTH/ERROR_WRONG_PASSWORD'));
	}
	this.inPropgress(false);
};

module.exports = new CConfirmPasswordPopup();


/***/ }),

/***/ "7Lti":
/*!**********************************************!*\
  !*** ./modules/TwoFactorAuth/js/Settings.js ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function($) {

var
	ko = __webpack_require__(/*! knockout */ "0h2I"),
	_ = __webpack_require__(/*! underscore */ "F/us"),

	TextUtils = __webpack_require__(/*! modules/CoreWebclient/js/utils/Text.js */ "RN+F"),
	Types = __webpack_require__(/*! modules/CoreWebclient/js/utils/Types.js */ "AFLV"),

	Screens = __webpack_require__(/*! modules/CoreWebclient/js/Screens.js */ "SQrT")
;

module.exports = {
	ServerModuleName: 'TwoFactorAuth',
	HashModuleName: 'two-factor-auth',
	EnableTwoFactorAuth: false,
	ShowRecommendationToConfigure: true,

	/**
	 * Initializes settings from AppData object sections.
	 * 
	 * @param {Object} oAppData Object contained modules settings.
	 */
	init: function (oAppData)
	{
		var oAppDataSection = _.extend({}, oAppData[this.ServerModuleName] || {}, oAppData['TwoFactorAuth'] || {});

		if (!_.isEmpty(oAppDataSection))
		{
			this.EnableTwoFactorAuth = Types.pBool(oAppDataSection.EnableTwoFactorAuth, this.EnableTwoFactorAuth);
			this.ShowRecommendationToConfigure = Types.pBool(oAppDataSection.ShowRecommendationToConfigure, this.ShowRecommendationToConfigure);
			this.checkIfEnabled();
		}
	},

	update: function (bShowRecommendationToConfigure)
	{
		this.ShowRecommendationToConfigure = bShowRecommendationToConfigure;
	},
	
	checkIfEnabled: function ()
	{
		var bTfaSettingsOpened = window.location.hash === 'settings/two-factor-auth' || window.location.hash === '#settings/two-factor-auth';
		if (this.ShowRecommendationToConfigure && !this.EnableTwoFactorAuth && !bTfaSettingsOpened)
		{
			setTimeout(function () {
				Screens.showLoading(TextUtils.i18n('TWOFACTORAUTH/CONFIRM_MODULE_NOT_ENABLED'));

				$('.report_panel.loading a').on('click', function () {
					Screens.hideLoading();
				});

				setTimeout(function () {
					Screens.hideLoading();
				}, 10000);
			}, 100);
		}
	}
};

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! jquery */ "EVdn")))

/***/ }),

/***/ "PMya":
/*!*************************************************************************!*\
  !*** ./modules/TwoFactorAuth/js/views/TwoFactorAuthSettingsFormView.js ***!
  \*************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var
	_ = __webpack_require__(/*! underscore */ "F/us"),
	ko = __webpack_require__(/*! knockout */ "0h2I"),

	Screens = __webpack_require__(/*! modules/CoreWebclient/js/Screens.js */ "SQrT"),
	TextUtils = __webpack_require__(/*! modules/CoreWebclient/js/utils/Text.js */ "RN+F"),
	ModulesManager = __webpack_require__(/*! modules/CoreWebclient/js/ModulesManager.js */ "OgeD"),
	CAbstractSettingsFormView = ModulesManager.run('SettingsWebclient', 'getAbstractSettingsFormViewClass'),
	Settings = __webpack_require__(/*! modules/TwoFactorAuth/js/Settings.js */ "7Lti"),
	Popups = __webpack_require__(/*! modules/CoreWebclient/js/Popups.js */ "76Kh"),
	ConfirmPasswordPopup = __webpack_require__(/*! modules/TwoFactorAuth/js/popups/ConfirmPasswordPopup.js */ "2xdY"),
	Ajax = __webpack_require__(/*! modules/CoreWebclient/js/Ajax.js */ "o0Bx")
;

/**
 * @constructor
 */
function CTwoFactorAuthSettingsFormView()
{
	CAbstractSettingsFormView.call(this, Settings.ServerModuleName);

	this.showRecommendationToConfigure = ko.observable(Settings.ShowRecommendationToConfigure);

	this.isEnabledTwoFactorAuth = ko.observable(Settings.EnableTwoFactorAuth);
	this.isPasswordVerified = ko.observable(false);
	this.isShowSecret = ko.observable(false);
	this.isValidatingPin = ko.observable(false);
	this.QRCodeSrc = ko.observable('');
	this.secret = ko.observable('');
	this.pin = ko.observable('');
}

_.extendOwn(CTwoFactorAuthSettingsFormView.prototype, CAbstractSettingsFormView.prototype);

CTwoFactorAuthSettingsFormView.prototype.ViewTemplate = 'TwoFactorAuth_TwoFactorAuthSettingsFormView';

CTwoFactorAuthSettingsFormView.prototype.confirmPassword = function ()
{
	Popups.showPopup(ConfirmPasswordPopup, [
		_.bind(this.onConfirmPassword, this),
		'EnableTwoFactorAuth'
	]);
};

CTwoFactorAuthSettingsFormView.prototype.onConfirmPassword = function (Response)
{
	if(Response && Response.Result && Response.Result.Secret && Response.Result.QRcode)
	{
		this.QRCodeSrc(Response.Result.QRcode);
		this.secret(Response.Result.Secret);
		this.isShowSecret(true);
		this.disableShowRecommendation();
	}
};

CTwoFactorAuthSettingsFormView.prototype.validatePin= function ()
{
	this.isValidatingPin(true);
	Ajax.send(
		'TwoFactorAuth',
		'TwoFactorAuthSave', 
		{
			'Pin': this.pin(),
			'Secret': this.secret()
		},
		this.onValidatingPinResponse,
		this
	);
};

CTwoFactorAuthSettingsFormView.prototype.disableShowRecommendation = function ()
{
	this.showRecommendationToConfigure(false);
	Ajax.send('TwoFactorAuth', 'UpdateSettings', {'ShowRecommendationToConfigure': false}, function () {
		Settings.update(false);
	});
}

CTwoFactorAuthSettingsFormView.prototype.onValidatingPinResponse = function (Response)
{
	this.isValidatingPin(false);
	if(Response && Response.Result)
	{
		this.QRCodeSrc('');
		this.secret('');
		this.pin('');
		this.isShowSecret(false);
		this.isEnabledTwoFactorAuth(true);
	}
	else
	{
		Screens.showError(TextUtils.i18n('TWOFACTORAUTH/ERROR_WRONG_PIN'));
	}
};

CTwoFactorAuthSettingsFormView.prototype.disable = function ()
{
	Popups.showPopup(ConfirmPasswordPopup, [
		_.bind(function () {
			this.QRCodeSrc('');
			this.secret('');
			this.pin('');
			this.isShowSecret(false);
			this.isEnabledTwoFactorAuth(false);
		}, this),
		'DisableTwoFactorAuth'
	]);
};

module.exports = new CTwoFactorAuthSettingsFormView();


/***/ }),

/***/ "Rr39":
/*!*********************************************!*\
  !*** ./modules/TwoFactorAuth/js/manager.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var
	_ = __webpack_require__(/*! underscore */ "F/us"),

	App = __webpack_require__(/*! modules/CoreWebclient/js/App.js */ "IAk5"),
	TextUtils = __webpack_require__(/*! modules/CoreWebclient/js/utils/Text.js */ "RN+F"),
	Settings = __webpack_require__(/*! modules/TwoFactorAuth/js/Settings.js */ "7Lti")
;

module.exports = function (oAppData) {
	Settings.init(oAppData);

	return {
		/**
		 * Runs before application start. Subscribes to the event before post displaying.
		 * 
		 * @param {Object} ModulesManager
		 */
		start: function (ModulesManager) {
			ModulesManager.run('SettingsWebclient', 'registerSettingsTab', [
				function () { return __webpack_require__(/*! modules/TwoFactorAuth/js/views/TwoFactorAuthSettingsFormView.js */ "PMya"); },
				Settings.HashModuleName,
				TextUtils.i18n('TWOFACTORAUTH/LABEL_SETTINGS_TAB')
			]);

			var onAfterlLoginFormConstructView = function (oParams) {
				var
					oLoginScreenView = oParams.View,
					Popups = __webpack_require__(/*! modules/CoreWebclient/js/Popups.js */ "76Kh"),
					VerifyTokenPopup = __webpack_require__(/*! modules/TwoFactorAuth/js/popups/VerifyTokenPopup.js */ "YI4A")
				;

				if (oLoginScreenView)
				{
					// Do not completely replace previous onSystemLoginResponse, because it might be already changed by another plugin
					var fOldOnSystemLoginResponse = oLoginScreenView.onSystemLoginResponse.bind(oLoginScreenView);
					if (!_.isFunction(fOldOnSystemLoginResponse))
					{
						fOldOnSystemLoginResponse = oLoginScreenView.onSystemLoginResponseBase.bind(oLoginScreenView);
					}
					if (!_.isFunction(fOldOnSystemLoginResponse))
					{
						fOldOnSystemLoginResponse = function () {};
					}
					oLoginScreenView.onSystemLoginResponse = function (oResponse, oRequest) {

						if (oRequest.Parameters.Domain != undefined)
						{
							oRequest.Parameters.Login = oRequest.Parameters.Login + '@' + oRequest.Parameters.Domain;
						}

						//if TwoFactorAuth enabled - trying to verify user token
						if (oResponse.Result && oResponse.Result.TwoFactorAuth)
						{
							Popups.showPopup(VerifyTokenPopup, [
								_.bind(this.onSystemLoginResponseBase, this),
								_.bind(function () { this.loading(false); }, this),
								oRequest.Parameters.Login,
								oRequest.Parameters.Password
							]);
						}
						else
						{
							fOldOnSystemLoginResponse(oResponse, oRequest);
						}
					}
				}
			}.bind(this);
			App.subscribeEvent('StandardLoginFormWebclient::ConstructView::after', onAfterlLoginFormConstructView);
			App.subscribeEvent('MailLoginFormWebclient::ConstructView::after', onAfterlLoginFormConstructView);
		}
	};
};


/***/ }),

/***/ "YI4A":
/*!*************************************************************!*\
  !*** ./modules/TwoFactorAuth/js/popups/VerifyTokenPopup.js ***!
  \*************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var
	_ = __webpack_require__(/*! underscore */ "F/us"),
	ko = __webpack_require__(/*! knockout */ "0h2I"),

	Screens = __webpack_require__(/*! modules/CoreWebclient/js/Screens.js */ "SQrT"),
	TextUtils = __webpack_require__(/*! modules/CoreWebclient/js/utils/Text.js */ "RN+F"),
	CAbstractPopup = __webpack_require__(/*! modules/CoreWebclient/js/popups/CAbstractPopup.js */ "czxF"),
	Ajax = __webpack_require__(/*! modules/CoreWebclient/js/Ajax.js */ "o0Bx"),
	App = __webpack_require__(/*! modules/CoreWebclient/js/App.js */ "IAk5");
;

/**
 * @constructor
 */
function CVerifyTokenPopup()
{
	CAbstractPopup.call(this);
	
	this.onConfirm = null;
	this.onCancel = null;
	this.pin = ko.observable('');
	this.inPropgress = ko.observable(false);
	this.pinFocused = ko.observable(false);
	this.isMobile = ko.observable(App.isMobile() || false);

	this.Login = null;
	this.Password = null;
}

_.extendOwn(CVerifyTokenPopup.prototype, CAbstractPopup.prototype);

CVerifyTokenPopup.prototype.PopupTemplate = 'TwoFactorAuth_VerifyTokenPopup';

CVerifyTokenPopup.prototype.onOpen = function (onConfirm, onCancel, Login, Password)
{
	this.onConfirm = onConfirm;
	this.onCancel = onCancel;
	this.Login = Login;
	this.Password = Password;
	this.pinFocused(true);
};

CVerifyTokenPopup.prototype.verifyPin = function ()
{
	this.inPropgress(true);
	Ajax.send(
		'TwoFactorAuth',
		'VerifyPin', 
		{
			'Pin': this.pin(),
			'Login': this.Login,
			'Password': this.Password
		},
		this.onGetVerifyResponse,
		this
	);
};

CVerifyTokenPopup.prototype.onGetVerifyResponse = function (oResponse)
{
	var oResult = oResponse.Result;

	if (oResult)
	{
		if (_.isFunction(this.onConfirm))
		{
			this.onConfirm(oResponse);
		}
		this.closePopup();
		this.pin('');
	}
	else
	{
		Screens.showError(TextUtils.i18n('TWOFACTORAUTH/ERROR_WRONG_PIN'));
		this.pin('');
	}
	this.inPropgress(false);
};

CVerifyTokenPopup.prototype.cancelPopup = function ()
{
	if (_.isFunction(this.onCancel))
	{
		this.onCancel(false);
	}
	this.closePopup();
};

module.exports = new CVerifyTokenPopup();


/***/ })

}]);