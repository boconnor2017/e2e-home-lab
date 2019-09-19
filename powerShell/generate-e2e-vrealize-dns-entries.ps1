<#
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: September 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: Edit the values and run this script against a DNS server to automatically create necessary
            DNS entries for vRealize. 
#>

# vRealize Suite Lifecycle Manager
Add-DnsServerResourceRecordA -Name "e2e01m01vrslcm01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.10"
# vRealize Operations
Add-DnsServerResourceRecordA -Name "e2e01m01vrops01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.11"
Add-DnsServerResourceRecordA -Name "e2e01m01vropsm01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.12"
Add-DnsServerResourceRecordA -Name "e2e01m01vropsr01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.13"
Add-DnsServerResourceRecordA -Name "e2e01m01vropsd01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.14"
Add-DnsServerResourceRecordA -Name "e2e01m01vropsc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.15"
# vRealize Automation
Add-DnsServerResourceRecordA -Name "e2e01m01vra01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.16"
Add-DnsServerResourceRecordA -Name "e2e01m01vra01a" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.17"
Add-DnsServerResourceRecordA -Name "e2e01m01vra01b" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.18"
Add-DnsServerResourceRecordA -Name "e2e01m01vra01c" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.19"
Add-DnsServerResourceRecordA -Name "e2e01m01ims01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.20"
Add-DnsServerResourceRecordA -Name "e2e01m01ims01a" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.21"
Add-DnsServerResourceRecordA -Name "e2e01m01ims01b" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.22"
Add-DnsServerResourceRecordA -Name "e2e01m01iws01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.23"
Add-DnsServerResourceRecordA -Name "e2e01m01iws01a" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.24"
Add-DnsServerResourceRecordA -Name "e2e01m01iws01b" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.25"
Add-DnsServerResourceRecordA -Name "e2e01m01idp01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.14.26"
# NOTE: for nested VVD, include Log Insight. This script is the vRealize Suite footprint for nested VCF.
