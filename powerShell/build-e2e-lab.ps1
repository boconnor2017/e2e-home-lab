# Author: Brendan O'Connor
# Standard Disclaimer: this script is not a validated or copywrite solution from VMWare. Please
#                      do not attempt to run this in a production environment. Nested Virtualization
#                      is not supported by VMWare, any results of this script are solely for lab
#                      environments. Use at your own risk. 
# Date: June 2019

echo "##############################################"
echo "#######   Starting Build of E2E Lab    #######"
echo "##############################################"

# Input Parameters from Configuration File
. "C:\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1"

# Initiate Connection to ESXi Host
echo "Connecting to ESXi Host " $dmnctl_connect_esxi_host
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $dmnctl_connect_esxi_host -User $dmnctl_connect_esxi_user -Password $dmnctl_connect_esxi_pass

# Deploy Domain Controller
echo "Deploying Domain Controller for e2e.local"
echo "   1. Deploying Windows OVF Template from source " $dmnctl_ovf_source
Import-vApp -Source $dmnctl_ovf_source -VMHost $dmnctl_connect_esxi_host -Datastore $dmnctl_deployto_datastore
   $pos1 = ($dmnctl_ovf_source.LastIndexOf("\"))+1
   $pos2 = (($dmnctl_ovf_source.Length)-$pos1)-4
   $templateName = $dmnctl_ovf_source.Substring($pos1,$pos2);
Set-VM -VM $templateName -NumCpu $dmnctl_vm_cpu -MemoryGB $dmnctl_vm_memGB -Name $dmnctl_vm_name -Confirm:$false
echo "   2. Starting VM ...." $dmnctl_vm_name
Start-VM -VM $dmnctl_vm_name
Start-Sleep -s 15
echo "   3. Creating local pshell directory on VM " $dmnctl_vm_name
Invoke-VMScript -ScriptText 'mkdir C:\pshell' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
echo "   4. Copying files...."
Invoke-VMScript -ScriptText 'Copy-Item -Path \\172.16.0.4\drop\*.ps1 -Destination C:\pshell\' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
echo "   5. Configuring network.... " 
Invoke-VMScript -ScriptText 'C:\pshell\set-DomainController-IP.ps1' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
echo "   6. Installing DNS and AD.... " 
Invoke-VMScript -ScriptText 'C:\pshell\deplou-DomainController-DNS_AD.ps1' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
echo "   7. Creating DNS Entries.... " 
Invoke-VMScript -ScriptText 'C:\pshell\generate-e2e-dns-entries.ps1' -VM $dmnctl_vm_name -GuestUser $dmnctl_vm_user -GuestPassword $dmnctl_vm_pass
echo "# # # # # # # DOMAIN CONTROLLER SETUP IS COMPLETE # # # # # # # #"



