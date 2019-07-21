#!/bin/bash
source /usr/local/e2e-home-lab/config/e2e-lab.config
echo ""
echo ""
echo ""
echo "################################################"
echo "###   Starting deployment of E2E Home Lab    ###"
echo "################################################"
echo ""
echo ""
echo ""
echo "# Checking Config parameters for Domain Controller"
echo "Deploy Domain Controller ESXi Host: $dmnctl_connect_esxi_host"
echo "Connect Domain Controller ESXi Host with User: $dmnctl_connect_esxi_user"
echo "Connect  Domain Controller ESXi Host with Password: $dmnctl_connect_esxi_pass"
echo "Deploy Domain Controller to Datastore: $dmnctl_deployto_datastore"
echo "Deploy Domain Controller to Network: $dmnctl_deployto_network"
echo "Domain Controller OVF Source: $dmnctl_ovf_source"
echo "Domain Controller VM Name: $dmnctl_vm_name"
echo "Domain Controller Number of CPU: $dmnctl_vm_cpu"
echo "Domain Controller Memory (GB): $dmnctl_vm_memGB"
echo "Domain Controller Disk Size (GB): $dmnctl_vm_diskGB"
echo "Domain Controller VM Guest Admin: $dmnctl_vm_user"
echo "Domain Controller VM Guest Password: $dmnctl_vm_pass"
echo "# Checking Config parameters for Nested ESXi Hosts"
echo "Deploy Nested ESXi to ESXi Host: $nesxi_connect_esxi_host"
echo "Connect Nested ESXi ESXi Host with User: $nesxi_connect_esxi_user"
echo "Connect Nested ESXi ESXi Host with Password: $nesxi_connect_esxi_pass"
echo "Deploy Nested ESXi to Datastore: $nesxi_deployto_datastore"
echo "Deploy Nested ESXi to Network: $nesxi_deployto_network"
echo "Nested ESXi OVF Source $nesxi_ovf_source"
echo "Nested ESXi Naming Convention: $nesxi_namingConvention"
echo ""
echo ""
echo "# Installing powershell"
tdnf install powershell
echo "# Installing Python"
cd /usr/local/e2e-home-lab
yum -y install python3 python-pip
echo "# Installing pyvmomi packages"
pip install pyvmomi
pip install ndg-httpsclient
pip install pyopenssl
pip install pyasn1
echo "# Installing vconnector"
git clone https://github.com/dnaeon/py-vconnector.git
cd py-vconnector
python3 setup.py install
mkdir /var/lib/vconnector
cd /usr/local/e2e-home-lab
echo "# Initializing vconnector database"
vconnector-cli init
echo "# Run vconnector-cli -H $dmnctl_connect_esxi_host -U $dmnctl_connect_esxi_user -P $dmnctl_connect_esxi_pass add"
