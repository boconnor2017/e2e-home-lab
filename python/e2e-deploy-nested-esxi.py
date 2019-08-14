# Creates Nested ESXi Hosts by pulling from VirtuallyGhetto repo

import os

print("Starting deployment of nested ESXi hosts")

def deployNESXI(ovaname):
   print("Deploying "+ ovaname)
   os.system('python3 deploy-ova-sample.py -s esxi02.e2e.local -u root -p BlizzanBandits123 --ova-path https://download3.vmware.com/software/vmw-tools/nested-esxi/Nested_ESXi6.7_Appliance_Template_v1.ova -ds e2e-esxi02-ds01')
   os.system('python3 renamer.py -s 172.16.0.6 -u root -p BlizzanBandits123 -n Nested_ESXi6.7_Appliance_Template -r '+ovaname)

ovaname = "TEST1"
deployNESXI(ovaname)

ovaname = "TEST2"
deployNESXI(ovaname)

ovaname = "TEST3"
deployNESXI(ovaname)

ovaname = "TEST4"
deployNESXI(ovaname)
