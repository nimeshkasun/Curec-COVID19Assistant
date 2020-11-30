<?php
/**
 * This code is licensed under AGPLv3 license or Afterlogic Software License
 * if commercial version of the product was purchased.
 * For full statements of the licenses see LICENSE-AFTERLOGIC and LICENSE-AGPL3 files.
 */

namespace Aurora\Modules\GoogleAuthWebclient;

/**
 * This module adds ability to login using Google account.
 * 
 * @license https://www.gnu.org/licenses/agpl-3.0.html AGPL-3.0
 * @license https://afterlogic.com/products/common-licensing Afterlogic Software License
 * @copyright Copyright (c) 2019, Afterlogic Corp.
 *
 * @package Modules
 */
class Module extends \Aurora\System\Module\AbstractWebclientModule
{
	protected $sService = 'google';
	
	protected $aRequireModules = array(
		'OAuthIntegratorWebclient', 
		'Google'
	);
	
	/***** private functions *****/
	protected function issetScope($sScope)
	{
		return in_array($sScope, explode(' ', $this->getConfig('Scopes')));
	}
	
	/**
	 * Initializes FacebookAuthWebclient Module.
	 * 
	 * @ignore
	 */
	public function init()
	{
		$this->subscribeEvent('OAuthIntegratorWebclient::GetServices::after', array($this, 'onAfterGetServices'));
		$this->subscribeEvent('OAuthIntegratorAction', array($this, 'onOAuthIntegratorAction'));
		$this->subscribeEvent('Google::GetSettings', array($this, 'onGetSettings'));
		$this->subscribeEvent('Google::UpdateSettings::after', array($this, 'onAfterUpdateSettings'));
		$this->subscribeEvent('RevokeAccessToken', array($this, 'onRevokeAccessToken'));
	}
	
	/**
	 * Adds service name to array passed by reference.
	 * 
	 * @ignore
	 * @param array $aArgs
	 * @param array $aServices Array with services names passed by reference.
	 */
	public function onAfterGetServices($aArgs, &$aServices)
	{
		$oModule = \Aurora\System\Api::GetModule('Google');
		$sId = $oModule->getConfig('Id', '');
		$sSecret = $oModule->getConfig('Secret', '');
		
		if ($oModule->getConfig('EnableModule', false) && $this->issetScope('auth') && !empty($sId) && !empty($sSecret))
		{
			$aServices[] = $this->sService;
		}
	}	
	
	/**
	 * Passes data to connect to service.
	 * 
	 * @ignore
	 * @param string $aArgs Service type to verify if data should be passed.
	 * @param boolean|array $mResult variable passed by reference to take the result.
	 */
	public function onOAuthIntegratorAction($aArgs, &$mResult)
	{
		if ($aArgs['Service'] === $this->sService)
		{
			$sOAuthScopes = isset($_COOKIE['oauth-scopes']) ? $_COOKIE['oauth-scopes'] : '';
			$aGoogleScopes = [
				'https://www.googleapis.com/auth/userinfo.email',
				'https://www.googleapis.com/auth/userinfo.profile'
			];
			$this->broadcastEvent('PopulateScopes', $sOAuthScopes, $aGoogleScopes);

			$mResult = false;
			$oConnector = new Classes\Connector($this);
			if ($oConnector)
			{
				$oGoogleModule = \Aurora\System\Api::GetModule('Google');
				if ($oGoogleModule)
				{
					$mResult = $oConnector->Init(
						$oGoogleModule->getConfig('Id'),
						$oGoogleModule->getConfig('Secret'),
						[$sOAuthScopes, \implode($aGoogleScopes, ' ')]
					);
				}
			}
			return true;
		}
	}
	
	/**
	 * Passes data to connect to service.
	 * 
	 * @ignore
	 * @param string $aArgs Service type to verify if data should be passed.
	 * @param boolean|array $mResult variable passed by reference to take the result.
	 */
	public function onGetSettings($aArgs, &$mResult)
	{
		$oUser = \Aurora\System\Api::getAuthenticatedUser();
		
		if (!empty($oUser))
		{
			$aScope = array(
				'Name' => 'auth',
				'Description' => $this->i18N('SCOPE_AUTH'),
				'Value' => false
			);
			if ($oUser->Role === \Aurora\System\Enums\UserRole::SuperAdmin)
			{
				$aScope['Value'] = $this->issetScope('auth');
				$mResult['Scopes'][] = $aScope;
			}
			if ($oUser->isNormalOrTenant())
			{
				if ($aArgs['OAuthAccount'] instanceof \Aurora\Modules\OAuthIntegratorWebclient\Classes\Account)
				{
					$aScope['Value'] = $aArgs['OAuthAccount']->issetScope('auth');
				}
				if ($this->issetScope('auth'))
				{
					$mResult['Scopes'][] = $aScope;
				}
			}
		}
	}
	
	public function onAfterUpdateSettings($aArgs, &$mResult)
	{
		$sScope = '';
		if (isset($aArgs['Scopes']) && is_array($aArgs['Scopes']))
		{
			foreach($aArgs['Scopes'] as $aScope)
			{
				if ($aScope['Name'] === 'auth')
				{
					if ($aScope['Value'])
					{
						$sScope = 'auth';
						break;
					}
				}
			}
		}
		$this->setConfig('Scopes', $sScope);
		$this->saveModuleConfig();
	}

	public function onRevokeAccessToken()
	{
		$oConnector = new Classes\Connector($this);
		if ($oConnector)
		{
			$oGoogleModule = \Aurora\System\Api::GetModule('Google');
			if ($oGoogleModule)
			{
				$mResult = $oConnector->RevokeAccessToken(
					$oGoogleModule->getConfig('Id'),
					$oGoogleModule->getConfig('Secret')
				);
			}
		}
	}
}
