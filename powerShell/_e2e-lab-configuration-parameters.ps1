# Parameters required to deploy the E2E lab
#
#

# Domain Controller Parameters
$dmnctl_connect_esxi_host = '172.16.0.5'
$dmnctl_connect_esxi_user = 'root'
$dmnctl_connect_esxi_pass = ''
$dmnctl_deployto_datastore = 'e2e-esxi01-ds01'
$dmnctl_deployto_network = 'VM Network'
$dmnctl_ovf_source = 'C:\e2e-home-lab-master\e2e-home-lab-master\OVF\DMNCTRL\e2e-local-domain-controller-template.ovf'
$dmnctl_vm_name = 'e2e-dmnctl01'
$dmnctl_vm_cpu = 2
$dmnctl_vm_memGB = 8
$dmnctl_vm_diskGB = 50
$dmnctl_vm_user = 'administrator'
$dmnctl_vm_pass = ''

# Nested ESXi Parameters
$nesxi_connect_esxi_host = '172.16.0.6'
$nesxi_connect_esxi_user = 'root'
$nesxi_connect_esxi_pass = ''
$nesxi_deployto_datastore = 'e2e-esxi02-ds01'
$nesxi_deployto_network = 'VM Network'
$nesxi_ovf_source = 'C:\e2e-home-lab-master\e2e-home-lab-master\OVF\NESXI\e2e-lab-esxi-6.7.ova'
$nesxi_namingConvention = 'e2e-nesxi'
