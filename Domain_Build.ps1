#Run on a plain 2012 OS
Import-module ServerManager
Add-WindowsFeature AD-Domain-Services, DNS, GPMC, RSAT, RSAT-Role-Tools, RSAT-AD-Tools, RSAT-AD-PowerShell, RSAT-ADDS, RSAT-AD-AdminCenter, RSAT-ADDS-Tools, RSAT-ADLDS, RSAT-RDS-Tools, UpdateServices-RSAT, UpdateServices-API, UpdateServices-UI, RSAT-ADCS, RSAT-ADCS-Mgmt, RSAT-Online-Responder, RSAT-ADRMS, RSAT-DHCP, RSAT-DNS-Server, RSAT-File-Services, RSAT-NPAS, RSAT-Print-Services, RSAT-RemoteAccess, RSAT-RemoteAccess-Mgmt, RSAT-VA-Tools, WDS-AdminPack


Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012R2" `
-DomainName "somedomain.com" `
-DomainNetbiosName "somedomain" `
-ForestMode "Win2012R2" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-SafeModeAdministratorPassword (ConvertTo-SecureString "PleaseChangeThisField!" -AsPlainText -Force) `
-Force:$true
