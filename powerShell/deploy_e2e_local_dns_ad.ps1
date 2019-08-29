<#
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: June 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: Run this script on a generic Windows 2012R2 VM. This script will create
            the e2e.local DNS and AD server for the E2E Lab. 
#>

# Set IP Address of the VM
New-NetIPAddress -InterfaceAlias Ethernet0 -IPAddress 172.16.0.9 -PrefixLength 24 -DefaultGateway 172.16.0.1
#Enable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
# Install DNS and AD
Install-WindowsFeature -Name DNS -IncludeManagementTools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName "e2e.local" -force

