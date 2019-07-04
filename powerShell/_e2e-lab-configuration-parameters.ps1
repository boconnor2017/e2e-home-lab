# Parameters required to deploy the E2E lab
#
#

$dmnctl_connect_esxi_host = ''
$dmnctl_connect_esxi_user = 'root'
$dmnctl_connect_esxi_pass = ''
$dmnctl_deployto_datastore = 'e2e-esxi01-ds01'
$dmnctl_deployto_network = 'VM Network'
$dmnctl_ovf_source = 'C:\e2e-home-lab-master\e2e-home-lab-master\OVF\DMNCTRL\e2e-local-domain-controller-template.ovf'
$dmnctl_vm_name = 'e2e-dmnctl01'
$dmnctl_vm_cpu = 2
$dmnctl_vm_memGB = 8
$dmnctl_vm_diskGB = 50
