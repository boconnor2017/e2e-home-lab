# Getting Started
Deploy a Photon OS VM to an ESXi Host. 
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_005.PNG)

Power On the VM
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_006.PNG)

Login with default username `root` and default password `changeme`. Create permanent password.
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_007.PNG)

Navigate to `/usr/local` directory. Run `yum -y update` command
```
root@photon-machine [ /usr/local ]# yum -y update
...

Complete!
root@photon-machine [ /usr/local ]#
```

Install `git`
```
root@photon-machine [ /usr/local ]# yum -y install git
...

Complete!
root@photon-machine [ /usr/local ]#
```

Clone this repository
```
root@photon-machine [ /usr/local ]# git clone https://github.com/boconnor2017/e2e-home-lab
Cloning into 'e2e-home-lab'...
remote: Enumerating objects: 311, done.
remote: Total 311 (delta 0), reused 0 (delta 0), pack-reused 311
Receiving objects: 100% (311/311), 2.29 MiB | 1.51 MiB/s, done.
Resolving deltas: 100% (122/122), done.
root@photon-machine [ /usr/local ]# ls -l
total 24
drwxr-xr-x  2 root root 4096 May 10 23:15 bin
drwxr-x---  9 root root 4096 Jul 21 00:36 e2e-home-lab
```
