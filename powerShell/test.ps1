# Used to test scripts - the content of this file is not static
# Input Parameters from Configuration File
. "C:\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1"

# Initiate Connection to ESXi Host
echo "Connecting to ESXi Host " $dmnctl_connect_esxi_host
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -server $dmnctl_connect_esxi_host -User $dmnctl_connect_esxi_user -Password $dmnctl_connect_esxi_pass

#Enter samples below
