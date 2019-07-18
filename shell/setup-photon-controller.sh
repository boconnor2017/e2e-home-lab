echo **Installing Python
cd /usr/local/e2e-home-lab
yum -y install python3 python-pip 
echo **Installing vconnector
git clone https://github.com/dnaeon/py-vconnector.git
cd py-vconnector
python3 setup.py install
mkdir /var/lib/vconnector
cd /usr/local/e2e-home-lab
echo **Initializing vconnector database
vconnector-cli init
echo **
echo **
echo ** Note: replace <esxi02.e2e.local> with the appropriate host name you want to enable
echo **Run vconnector-cli -H esxi02.e2e.local -U root -P <password> add
echo **Run vconnector-cli -H esxi02.e2e.local enable
echo **Run vconnector-cli get
