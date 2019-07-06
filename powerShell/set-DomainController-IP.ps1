# Set IP Address
New-NetIPAddress -InterfaceAlias Ethernet0 -IPAddress 172.16.0.9 -PrefixLength 24 -DefaultGateway 172.16.0.1
#Enable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0