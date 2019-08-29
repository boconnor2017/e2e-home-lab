# Run this script on a Windows 2012R2 VM
Install-WindowsFeature -Name DNS -IncludeManagementTools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName "e2e.local" -force
# Set IP Address
New-NetIPAddress -InterfaceAlias Ethernet0 -IPAddress 172.16.0.9 -PrefixLength 24 -DefaultGateway 172.16.0.1
#Enable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
