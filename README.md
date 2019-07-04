# Getting Started
Download the repository (zip) to the Control Laptop on the `C:\` drive. Extract the master folder. 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_001.PNG)

Open PowerShell ISE, open `C:\e2e-home-lab-master\e2e-home-lab-master\OVF\copy-ova-to-repo.ps1`. Point `$src` parameters to their appropriate filesystems. Run the script to copy OVF templates (or copy them manually). 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_002.PNG)

Edit configuration file with appropriate connection details to the lab
```
TODO
```

Open PowerShell. Run the following scripts (in order):
```
cd .\e2e-home-lab-master\e2e-home-lab-master\powerShell
```

```
.\e2e-build-lab.ps1
```

For detailed lab setup instructions, see the wiki page. 
