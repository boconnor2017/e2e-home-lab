# Getting Started with Docker

Start Docker on Photon VM
```
systemctl start docker
```

Run PowerCLI from a container
```
docker run --rm -it -v /usr/local/e2e-home-lab/powerShell/:/usr/local/powerShell vmware/powerclicore
```

Build Image using Dockerfile
```
docker build -t e2e-lab-image-01 .
```
