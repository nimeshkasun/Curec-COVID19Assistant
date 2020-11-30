'use strict';

var
	_ = require('underscore'),
	ko = require('knockout'),

	Screens = require('%PathToCoreWebclientModule%/js/Screens.js'),
	TextUtils = require('%PathToCoreWebclientModule%/js/utils/Text.js'),
	CAbstractPopup = require('%PathToCoreWebclientModule%/js/popups/CAbstractPopup.js'),
	Ajax = require('%PathToCoreWebclientModule%/js/Ajax.js'),
	App = require('%PathToCoreWebclientModule%/js/App.js');
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

CVerifyTokenPopup.prototype.PopupTemplate = '%ModuleName%_VerifyTokenPopup';

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
		Screens.showError(TextUtils.i18n('%MODULENAME%/ERROR_WRONG_PIN'));
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
