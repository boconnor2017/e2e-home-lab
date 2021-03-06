<#
Version: 2.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: August 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: Edit the values and run this script against a DNS server to automatically create necessary
            DNS entries for VMWare Cloud Foundation. The values should be based on completed information
            in the CloudBuilder spreadsheet. 
#>

# E2E Lab DNS Entries 172.16.0.0/24 subnet
# 172.16.0.1: DFGW
# 172.16.0.2: 
# 172.16.0.3: TEST Photon VM
Add-DnsServerResourceRecordA -Name "e2e-control" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.4"
Add-DnsServerResourceRecordA -Name "esxi01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.5"
Add-DnsServerResourceRecordA -Name "esxi02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.6"
Add-DnsServerResourceRecordA -Name "e2e-vcenter" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.7"
Add-DnsServerResourceRecordA -Name "e2e-nsx" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.8"
# 172.16.0.9: DNS Server
# 172.16.0.10: ESG Uplink01
# 172.16.0.11-13: NSX Controllers
# 172.16.0.14-16: VTEP IP Pool
Add-DnsServerResourceRecordA -Name "e2e-cb01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.17"
Add-DnsServerResourceRecordA -Name "e2e-vcf01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.18"
Add-DnsServerResourceRecordA -Name "e2e-cb02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.19"

# VCF DNS Entries 172.16.10.0/24 subnet
# 172.16.10.1: DFGW
# 172.16.10.2: CloudBuilder (DNS entry not required)
Add-DnsServerResourceRecordA -Name "e2e-vcfjump01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.3"
# 172.16.10.4: 
# 172.16.10.5: 
Add-DnsServerResourceRecordA -Name "e2e-nesxi01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.10"
Add-DnsServerResourceRecordA -Name "e2e-nesxi02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.11"
Add-DnsServerResourceRecordA -Name "e2e-nesxi03" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.12"
Add-DnsServerResourceRecordA -Name "e2e-nesxi04" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.13"
Add-DnsServerResourceRecordA -Name "e2e01vrli01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.14"
Add-DnsServerResourceRecordA -Name "e2e01vrli01a" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.15"
Add-DnsServerResourceRecordA -Name "e2e01vrli01b" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.16"
Add-DnsServerResourceRecordA -Name "e2e01vrli01c" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.17"
# 172.16.10.18-59: 
Add-DnsServerResourceRecordA -Name "e2e01m01sddcmgr" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.60"
Add-DnsServerResourceRecordA -Name "e2e01m01psc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.61"
Add-DnsServerResourceRecordA -Name "e2e01w01psc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.62"
Add-DnsServerResourceRecordA -Name "e2e01m01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.63"
Add-DnsServerResourceRecordA -Name "e2e01m01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.64"
Add-DnsServerResourceRecordA -Name "e2e01w01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.68"
Add-DnsServerResourceRecordA -Name "e2e01w01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.69"
# 172.16.10.70-89
Add-DnsServerResourceRecordA -Name "e2e-nesxi05" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.100"
Add-DnsServerResourceRecordA -Name "e2e-nesxi06" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.101"
Add-DnsServerResourceRecordA -Name "e2e-nesxi07" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.102"
Add-DnsServerResourceRecordA -Name "e2e-nesxi08" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.103"
