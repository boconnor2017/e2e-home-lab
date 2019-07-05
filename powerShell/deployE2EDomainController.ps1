# Author: Brendan O'Connor
# Standard Disclaimer: this script is not a validated or copywrite solution from VMWare. Please
#                      do not attempt to run this in a production environment. Nested Virtualization
#                      is not supported by VMWare, any results of this script are solely for lab
#                      environments. Use at your own risk. 
# Date: June 2019

# Input Parameters from Configuration File
. "C:\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1"

# Initiate Connection to ESXi Host and Deploy the Template
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $dmnctl_connect_esxi_host -User $dmnctl_connect_esxi_user -Password $dmnctl_connect_esxi_pass
Import-vApp -Source $dmnctl_ovf_source -VMHost $dmnctl_connect_esxi_host

# Customize the VM
$pos1 = ($dmnctl_ovf_source.LastIndexOf("\"))+1
$pos2 = (($dmnctl_ovf_source.Length)-$pos1)-4
$templateName = $dmnctl_ovf_source.Substring($pos1,$pos2);

Set-VM -VM $templateName -NumCpu $dmnctl_vm_cpu -MemoryGB $dmnctl_vm_memGB -Name $dmnctl_vm_name -Confirm:$false

# Power on the VM
Start-VM -VM $dmnctl_vm_name
Start-Sleep -s 15

# Run DNS Configuraion Scripts
Invoke-VMScript -ScriptText 'mkdir C:\pshell' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
Invoke-VMScript -ScriptText 'Copy-Item -Path \\172.16.0.4\drop\* -Destination C:\pshell\' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
Invoke-VMScript -ScriptText 'C:\pshell\set-DomainController-IP.ps1' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass



