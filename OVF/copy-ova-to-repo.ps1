# Copies OVA files from shared or local filesystem into the downloaded github repo

$dmnctrl_src = 'C:\OVF\DMNCTRL\'
$nesxi_src = 'C:\OVF\NESXI\'
$photon_src = 'C:\OVF\PHOTON\'
$vcf_src = 'C:\OVF\VCF\'

echo 'Copying files...'
cp $dmnctrl_src\* C:\e2e-home-lab-master\e2e-home-lab-master\OVF\DMNCTRL\
echo 'Domain controller OVAs copied.'
cp $nesxi_src\* C:\e2e-home-lab-master\e2e-home-lab-master\OVF\NESXI\
echo 'Nested ESXI OVAs copied.'
cp $photon_src\* C:\e2e-home-lab-master\e2e-home-lab-master\OVF\PHOTON\
echo 'Photon OVAs copied.'
cp $vcf_src\* C:\e2e-home-lab-master\e2e-home-lab-master\OVF\VCF\
echo 'CloudBuilder OVA copied.'
echo '############################################'
echo 'DONE!'
