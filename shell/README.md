# Recommended Tips
For complete end to end automation of this lab, you're going to need to have a few configuration files stored locally. 

Follow these steps after first time clone of this repo:

Navigate to `/usr/local` directory
```
root@photon-machine [ / ]# cd /usr/local/
root@photon-machine [ /usr/local ]#
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

Using favorite text editor, create a file called `build.sh` with the following script
```
# Cleanup repo
rm -r e2e-home-lab/
# Clone latest repo
git clone https://github.com/boconnor2017/e2e-home-lab.git
# Copy local configuration files to repo config directory
cp /usr/local/config/* /usr/local/e2e-home-lab/config/

```
