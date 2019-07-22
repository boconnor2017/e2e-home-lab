# Getting Started with Docker

Start Docker on Photon VM
```
systemctl start docker
```

Run PowerCLI from a container
```
 root@photon-machine [ /usr/local/e2e-home-lab/docker ]# docker run --rm -it -v /usr/local/e2e-home-lab/powerShell/:/usr/local/powerShell vmware/powerclicore
```

Build Image using Dockerfile
```
root@photon-machine [ /usr/local/e2e-home-lab/docker ]# docker build -t e2e-lab-image-01 .
```
