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
```

Run `build.sh`
```
root@photon-machine [ /usr/local ]# sh build.sh
Cloning into 'e2e-home-lab'...
remote: Enumerating objects: 16, done.
remote: Counting objects: 100% (16/16), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 327 (delta 6), reused 0 (delta 0), pack-reused 311
Receiving objects: 100% (327/327), 2.30 MiB | 1.69 MiB/s, done.
Resolving deltas: 100% (128/128), done.
```

Navigate to `/usr/local/e2e-home-lab/shell` and run `setup-photon-controller.sh`
```
root@photon-machine [ /usr/local ]# cd e2e-home-lab/shell/
root@photon-machine [ /usr/local/e2e-home-lab/shell ]# sh setup-photon-controller.sh



################################################
###   Starting deployment of E2E Home Lab    ###
################################################



# Checking Config parameters for Domain Controller
...
```
