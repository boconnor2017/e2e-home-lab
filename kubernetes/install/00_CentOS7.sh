# Install Kubernetes on CentOS 7
# Author: Brendan O'Connor
# Version 1.0 
# November 2019
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step01_configK8Repo.sh >> step01_configK8Repo.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step02_a_installK8Packages.sh >> step02_a_installK8Packages.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step02_b_Kubelet.sh >> step02_b_Kubelet.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step03_configFW.sh >> step03_configFW.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step04_IPTables.sh >> step04_IPTables.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step05_selinux_swap.sh >> step05_selinux_swap.sh
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/step06kubeconfig.sh >> step06kubeconfig.sh
sh step01_configK8Repo.sh
sh step02_a_installK8Packages.sh
sh step02_b_Kubelet.sh
sh step03_configFW.sh
sh step04_IPTables.sh
sh step05_selinux_swap.sh
sh step06kubeconfig.sh
