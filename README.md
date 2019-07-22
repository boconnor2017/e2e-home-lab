# Getting Started
Deploy a [Photon OS](https://vmware.github.io/photon/) VM to an ESXi Host (in this tutorial I'm using Version 3.0 build 26156e2 hardware version 11). 
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_005.PNG)

Power On the VM
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_006.PNG)

Login with default username `root` and default password `changeme`. Create permanent password.
![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_007.PNG)

Navigate to `/usr/local` directory. Start docker.
```
root@photon-machine [ /usr/local ]# systemctl start docker
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

Create `config` directory
```
root@photon-machine [ /usr/local ]# mkdir config/
root@photon-machine [ /usr/local ]# ls -l
total 28
drwxr-xr-x  2 root root 4096 May 10 23:15 bin
drwxr-x---  2 root root 4096 Jul 20 17:56 config
drwxr-x--- 10 root root 4096 Jul 20 17:57 e2e-home-lab
```

Copy default configuration files to your local config folder
```
root@photon-machine [ /usr/local ]# cp /usr/local/e2e-home-lab/config/* /usr/local/config/
root@photon-machine [ /usr/local ]# cd config/
root@photon-machine [ /usr/local/config ]# ls -l
total 8
-rw-r----- 1 root root 788 Jul 20 17:56 e2e-lab.config
-rw-r----- 1 root root 713 Jul 20 17:31 local-resolv.conf
```

Using favorite text editor, edit `e2e-lab.config`. Edit `local-resolv.conf`.

Navigate back to `/usr/local`. Using favorite text editor, create a file called `build.sh` with the following script
```
# Cleanup repo
rm -r e2e-home-lab/
# Clone latest repo
git clone https://github.com/boconnor2017/e2e-home-lab.git
# Copy local configuration files to repo config directory
cp /usr/local/config/* /usr/local/e2e-home-lab/config/
cd /usr/local/e2e-home-lab/shell
sh setup-photon-controller.sh
```

Run `build.sh`
```
root@photon-machine [ /usr/local ]# sh build.sh
Cloning into 'e2e-home-lab'...
remote: Enumerating objects: 35, done.
remote: Counting objects: 100% (35/35), done.
remote: Compressing objects: 100% (34/34), done.
remote: Total 346 (delta 17), reused 0 (delta 0), pack-reused 311
Receiving objects: 100% (346/346), 2.30 MiB | 1.72 MiB/s, done.
Resolving deltas: 100% (139/139), done.



################################################
###   Starting deployment of E2E Home Lab    ###
################################################



# Checking Config parameters for Domain Controller
...
```

At the completion of this step, you should have a fully functioning lab. 

# Next Steps
The purpose of this lab environment is to run E2E solutions. For details see [E2E Github Repository](https://github.com/boconnor2017/vmw-e2e).
