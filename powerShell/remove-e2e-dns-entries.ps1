<#
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: August 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: Edit the values and run this script against a DNS server to automatically remove necessary
            DNS entries for VMWare Cloud Foundation. The values should be based on completed information
            in the CloudBuilder spreadsheet. 
#>

# E2E Lab DNS Entries 172.16.0.0/24 subnet
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-control" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "esxi01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "esxi02" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-vcenter" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nsx" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-cb01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-vcf01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-cb02" -RRType "A" -Force

# VCF DNS Entries 172.16.10.0/24 subnet
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-vcfjump01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-cb02" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi02" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi03" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi04" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01vrli01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01vrli01a" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01vrli01b" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01vrli01c" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01m01sddcmgr" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01m01psc01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01w01psc01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01m01vc01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01m01nsx01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01w01vc01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e01w01nsx01" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi05" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi06" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi07" -RRType "A" -Force
Remove-DnsServerResourceRecord -ZoneName "e2e.local" -Name "e2e-nesxi08" -RRType "A" -Force

