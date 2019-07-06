# Creates DNS entries for E2E Lab
Add-DnsServerResourceRecordA -Name "control" -ZoneName "e2e.local" -AllowUpdateAny -IPv4Address "172.16.0.4"
Add-DnsServerResourceRecordA -Name "esxi01" -ZoneName "e2e.local" -AllowUpdateAny -IPv4Address "172.16.0.5"
Add-DnsServerResourceRecordA -Name "esxi02" -ZoneName "e2e.local" -AllowUpdateAny -IPv4Address "172.16.0.6"
