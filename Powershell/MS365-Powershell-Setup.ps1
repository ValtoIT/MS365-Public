<# 

Microsoft 365 Powershell Module Setup
=====================================

* Install Module
* Connect to the various services 

 - Valto 2020
 - We recommend you run these with local admin rights
 - Run Powershell 7.x https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell
 - Install latest .NET 


#>

Set-ExecutionPolicy Unrestricted



#-------------------------------------------------------------------------------------------------------

# EXCHANGE ONLINE MODULE V2
# https://docs.microsoft.com/en-us/powershell/exchange/exchange-online-powershell-v2?view=exchange-ps

#Install
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Update-Module -Name ExchangeOnlineManagement

#Connect
Connect-ExchangeOnline

#--------------------------------------------------------------------------------------------------------






#-------------------------------------------------------------------------------------------------------

# SHAREPOINT ONLINE MODULE
# https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online

#Install
Install-Module -Name Microsoft.Online.SharePoint.PowerShell
Import-Module Microsoft.Online.SharePoint.PowerShell
Update-Module -Name Microsoft.Online.SharePoint.PowerShellt

#Connect
Connect-SPOService -Url https://cloudwhizzltd-admin.sharepoint.com

#--------------------------------------------------------------------------------------------------------






#-------------------------------------------------------------------------------------------------------

# TEAMS MODULE
# https://docs.microsoft.com/en-us/microsoftteams/teams-powershell-install

#Install Powershell Gallery
Install-Module -Name PowerShellGet -Force -AllowClobber

#Install 
Install-Module -Name MicrosoftTeams -Force -AllowClobber
Import-Module MicrosoftTeams
Update-Module -Name MicrosoftTeams

#Connect
Connect-MicrosoftTeams

#--------------------------------------------------------------------------------------------------------







#-------------------------------------------------------------------------------------------------------

# Azure AD MODULE
# https://docs.microsoft.com/en-us/powershell/azure/active-directory/install-adv2?view=azureadps-2.0

#Install 
Install-Module AzureAD
Install-module AzureADPreview #Note that you cannot install both the preview version and the GA version on the same computer at the same time.

Import-Module AzureAD
Update-Module -Name AzureAD

#Connect
Connect-AzureAD

#--------------------------------------------------------------------------------------------------------







#-------------------------------------------------------------------------------------------------------

# Microsoft Online MODULE
# https://docs.microsoft.com/en-us/powershell/azure/active-directory/install-msonlinev1?view=azureadps-1.0

#Install 
Install-Module MSOnline

Import-Module MSOnline
Update-Module -Name MSOnline

#Connect
Connect-MsolService

#--------------------------------------------------------------------------------------------------------