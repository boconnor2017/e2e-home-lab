setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
sed -i '/swap/d' /etc/fstab
swapoff -a
