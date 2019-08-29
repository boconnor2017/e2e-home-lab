# Run this script on a Windows 2012R2 VM
Install-WindowsFeature -Name DNS -IncludeManagementTools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName "e2e.local" -force
