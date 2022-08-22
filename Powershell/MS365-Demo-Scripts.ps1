<# 

Microsoft 365 Demo Powershell
=====================================

 - Valto 2020

#>

#Add Users to Office365 Group
Connect-MsolService

Add-UnifiedGroupLinks -Identity "TwoSaints@valto.co.uk" -LinkType "Members" -Links "Test@valto.co.uk","steve.davies@valto.co.uk"

#PowerShell to Import Members to office 365 group from CSV
Connect-MsolService

Import-CSV "C:\Scripts\GroupMembers.csv" | ForEach-Object {
    Add-UnifiedGroupLinks -Identity $_.GroupID -LinkType Members -Links $_.Member
    Write-host -f Green "Added Member '$($_.Member)' to Office 365 Group '$($_.GroupID)'"
}

#_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 


# MESSAGE TRACE 
Connect-ExchangeOnline
Get-MessageTrace -RecipientAddress robert@valto.co.uk -StartDate 3/21/2022 -EndDate 3/22/2022 | Out-GridView #Export-Csv -Path C:\Scripts\MailTrace.csv

#_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 

# ADD CALENDAR PERMISSIONS
Connect-ExchangeOnline
Add-MailboxFolderPermission -Identity Adam.Campbell@valto.co.uk:\Calendar -User robert@valto.co.uk -AccessRights Editor -SharingPermissionFlags Delegate


#RESET USER PASSWORDS 
Connect-MsolService
Set-MSOLUserPassword -UserPrincipalName "Test@valto.co.uk" -NewPassword "SuperSecretPassword01" -ForceChangePassword $true

#Get O365 Users
Get-MsolUser -UserPrincipalName "robert@valto.co.uk"
Get-MsolUser -UserPrincipalName "Test@valto.co.uk"

#Azure AD Device List
Connect-AzureAD
Get-AzureADDevice
