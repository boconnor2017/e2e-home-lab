# Quick Start installation of Kubernetes on CentOS 7

(From a local directory such as /usr/local/K8) Run:
```
curl https://raw.githubusercontent.com/boconnor2017/e2e-home-lab/master/kubernetes/install/00_CentOS7.sh >> quickstart_centOS7.sh
```

Run:
```
sh quickstart_centOS7.sh
```

Run scripts on both Master and Nodes. On the master, initialize:
```
kubeadm init
```

On the node, join by running the results of the command above. When completed, run this on the master:
```
cp /etc/kubernetes/admin.conf $HOME/
chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf
```
