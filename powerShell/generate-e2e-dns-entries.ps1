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
e2e-nesxi01		e2e.local	172.16.10.10	ESXi host 01
e2e-nesxi02		e2e.local	172.16.10.11	ESXi host 02
e2e-nesxi03		e2e.local	172.16.10.12	ESXi host 03
e2e-nesxi04		e2e.local	172.16.10.13	ESXi host 04
e2e01m01nsx01	e2e.local	172.16.10.64	NSX-V Manager
VI WORKLOAD DOMAIN #1 (repeat this section for any additional workload domains)
e2e01w01vc01	e2e.local	172.16.10.68	Additional vCenter Server for VI Workload Domain #1
e2e01w01nsx01	e2e.local	172.16.10.69	Additional NSX-V Manager for VI Workload Domain #1
e2e-nesxi05		e2e.local	172.16.10.100	ESXi host 05
e2e-nesxi06		e2e.local	172.16.10.101	ESXi host 06
e2e-nesxi07		e2e.local	172.16.10.102	ESXi host 07
e2e-nesxi08		e2e.local	172.16.10.103	ESXi host 08
#>

# E2E Lab DNS Entries 172.16.0.0/24 subnet
Add-DnsServerResourceRecordA -Name "e2e-control" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.4"
Add-DnsServerResourceRecordA -Name "esxi01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.5"
Add-DnsServerResourceRecordA -Name "esxi02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.6"
Add-DnsServerResourceRecordA -Name "e2e-vcenter" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.7"
Add-DnsServerResourceRecordA -Name "e2e-nsx" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.8"
Add-DnsServerResourceRecordA -Name "e2e-cb01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.17"
Add-DnsServerResourceRecordA -Name "e2e-vcf01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.0.18"

# VCF DNS Entries 172.16.10.0/24 subnet
Add-DnsServerResourceRecordA -Name "e2e01m01sddcmgr" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.60"
Add-DnsServerResourceRecordA -Name "e2e01m01psc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.61"
Add-DnsServerResourceRecordA -Name "e2e01m02psc02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.62"
Add-DnsServerResourceRecordA -Name "e2e01m01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.63"
Add-DnsServerResourceRecordA -Name "e2e-nesxi01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.10"
Add-DnsServerResourceRecordA -Name "e2e-nesxi02" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.11"
Add-DnsServerResourceRecordA -Name "e2e-nesxi03" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.12"
Add-DnsServerResourceRecordA -Name "e2e-nesxi04" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.13"
Add-DnsServerResourceRecordA -Name "e2e01m01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.64"
Add-DnsServerResourceRecordA -Name "e2e01w01vc01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.68"
Add-DnsServerResourceRecordA -Name "e2e01w01nsx01" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.69"

Add-DnsServerResourceRecordA -Name "e2e-nesxi05" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.100"
Add-DnsServerResourceRecordA -Name "e2e-nesxi06" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.101"
Add-DnsServerResourceRecordA -Name "e2e-nesxi07" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.102"
Add-DnsServerResourceRecordA -Name "e2e-nesxi08" -ZoneName "e2e.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.10.103"

