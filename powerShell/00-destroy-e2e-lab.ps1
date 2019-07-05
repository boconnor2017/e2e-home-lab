# Author: Brendan O'Connor
# Standard Disclaimer: this script is not a validated or copywrite solution from VMWare. Please
#                      do not attempt to run this in a production environment. Nested Virtualization
#                      is not supported by VMWare, any results of this script are solely for lab
#                      environments. Use at your own risk. 
# Date: June 2019

# Input Parameters from Configuration File
. "C:\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1"

# Initiate Connection to ESXi Host
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $dmnctl_connect_esxi_host -User $dmnctl_connect_esxi_user -Password $dmnctl_connect_esxi_pass

# Shut Down Running VMs
Stop-VM -VM $dmnctl_vm_name -Kill:$true
Remove-VM - VM $dmnctl_vm_name -DeletePermanently:$true
