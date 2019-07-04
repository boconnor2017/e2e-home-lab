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

$ovf_source = 'c:\OVF\DMNCTRL\e2e-local-domain-controller-template.ovf'

$vm_name = `e2e-dmnctl01`
$vm_cpu = 2
$vm_memGB = 8
$vm_diskGB = 50

# Initiate Connection to ESXi Host and Deploy the Template
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $esxi_host -User $esxi_user -Password $esxi_pass
Import-vApp -Source $ovf_source -VMHost $connect_esxi_host

# Customize the VM
$pos1 = ($ovf_source.LastIndexOf("\"))+1
$pos2 = (($ovf_source.Length)-$pos1)-4
$templateName = $ovf_source.Substring($pos1,$pos2);

Set-VM -VM $templateName -NumCpu $vm_cpu -MemoryGB $vm_memGB -Name $vm_name

# Power on the VM
Start-VM -VM $vm_name
