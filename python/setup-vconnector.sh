yum -y update
yum -y install python3 python-pip git
git clone https://github.com/dnaeon/py-vconnector.git
cd py-vconnector
python3 setup.py install
