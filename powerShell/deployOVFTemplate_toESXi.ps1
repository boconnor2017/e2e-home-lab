# Author: Brendan O'Connor
# Standard Disclaimer: this script is not a validated or copywrite solution from VMWare. Please
#                      do not attempt to run this in a production environment. Nested Virtualization
#                      is not supported by VMWare, any results of this script are solely for lab
#                      environments. Use at your own risk. 
# Date: June 2019

# Input Parameters
$connect_esxi_host = ''
$connect_esxi_user = 'root'
$connect_esxi_pass = ''

$deployto_datastore = 'e2e-esxi01-ds01'
$deployto_network = 'VM Network'

$ovf_source = 'c:\OVF\e2e-win12r2-template.ovf'

# Initiate Connection to ESXi Host and create the VM
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $esxi_host -User $esxi_user -Password $esxi_pass
Import-vApp -Source $ovf_source -VMHost $connect_esxi_host
