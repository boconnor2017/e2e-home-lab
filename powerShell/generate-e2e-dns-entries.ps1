<#
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: August 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: Edit the values and run this script against a DNS server to automatically create necessary
            DNS entries for VMWare Cloud Foundation. The values should be based on completed information
            in the CloudBuilder spreadsheet. 
MANAGEMENT WORKLOAD DOMAIN SAMPLE DNS ENTRIES (see VCF Documentation on my.vmware.com for details)
e2e01m01sddcmgr	e2e.local	172.16.10.60	SDDC Manager
e2e01m01psc01	e2e.local	172.16.10.61	Platform Services Controller 01
e2e01m02psc02	e2e.local	172.16.10.62	Platform Services Controller 02
e2e01m01vc01	e2e.local	172.16.10.63	vCenter Server
e2e01m01esx01	e2e.local	172.16.10.101	ESXi host 01
e2e01m01esx02	e2e.local	172.16.10.102	ESXi host 02
e2e01m01esx03	e2e.local	172.16.10.103	ESXi host 03
e2e01m01esx04	e2e.local	172.16.10.104	ESXi host 04
e2e01m01nsx01	e2e.local	172.16.10.64	NSX-V Manager
VI WORKLOAD DOMAIN #1 (repeat this section for any additional workload domains)
e2e01w01vc01	e2e.local	172.16.10.68	Additional vCenter Server for VI Workload Domain #1
e2e01w01nsx01	e2e.local	172.16.10.69	Additional NSX-V Manager for VI Workload Domain #1
e2e01w01esx01	e2e.local	172.16.17.101	ESXi host 05
e2e01w01esx02	e2e.local	172.16.17.102	ESXi host 06
e2e01w01esx03	e2e.local	172.16.17.103	ESXi host 07
e2e01w01esx04	e2e.local	172.16.17.104	ESXi host 08
#>


Add-DnsServerResourceRecordA -Name "e2e01m01sddcmgr" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.60"
Add-DnsServerResourceRecordA -Name "e2e01m01psc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.61"
Add-DnsServerResourceRecordA -Name "e2e01m02psc02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.62"
Add-DnsServerResourceRecordA -Name "e2e01m01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.63"
Add-DnsServerResourceRecordA -Name "e2e01m01esx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.101"
Add-DnsServerResourceRecordA -Name "e2e01m01esx02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.102"
Add-DnsServerResourceRecordA -Name "e2e01m01esx03" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.103"
Add-DnsServerResourceRecordA -Name "e2e01m01esx04" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.104"
Add-DnsServerResourceRecordA -Name "e2e01m01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.64"
Add-DnsServerResourceRecordA -Name "e2e01w01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.68"
Add-DnsServerResourceRecordA -Name "e2e01w01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.69"

Add-DnsServerResourceRecordA -Name "e2e01w01esx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.101"
Add-DnsServerResourceRecordA -Name "e2e01w01esx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.102"
Add-DnsServerResourceRecordA -Name "e2e01w01esx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.103"
Add-DnsServerResourceRecordA -Name "e2e01w01esx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.104"
