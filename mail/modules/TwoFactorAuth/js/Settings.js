'use strict';

var
	ko = require('knockout'),
	_ = require('underscore'),

	TextUtils = require('%PathToCoreWebclientModule%/js/utils/Text.js'),
	Types = require('%PathToCoreWebclientModule%/js/utils/Types.js'),

	Screens = require('%PathToCoreWebclientModule%/js/Screens.js')
;

module.exports = {
	ServerModuleName: '%ModuleName%',
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
		var oAppDataSection = _.extend({}, oAppData[this.ServerModuleName] || {}, oAppData['%ModuleName%'] || {});

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
				Screens.showLoading(TextUtils.i18n('%MODULENAME%/CONFIRM_MODULE_NOT_ENABLED'));

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
