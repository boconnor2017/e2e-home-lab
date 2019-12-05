yum -y update
yum -y install yum-utils
yum-config-manager --add-repo https://yum.dockerproject.org/repo/main/centos/7
yum -y update
yum -y --nogpgcheck install docker-engine-1.13.1-1.el7.centos.x86_64
service docker start
yum install -y kubelet kubeadm kubectl
