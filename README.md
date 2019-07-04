# Getting Started
Download the repository (zip) to the Control Laptop on the `C:\` drive. Extract the master folder. 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_001.PNG)

Open PowerShell ISE, open `C:\e2e-home-lab-master\e2e-home-lab-master\OVF\copy-ova-to-repo.ps1`. Point `$src` parameters to their appropriate filesystems. Run the script to copy OVF templates (or copy them manually). 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_002.PNG)

Open `cd .\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1` and populate the configuration parameters. Save the configuration file locally. Next time you download this git repo, copy your populated config file in place of the default config file. 

Run the E2E lab builder:
```
.\e2e-build-lab.ps1
```

For detailed lab setup instructions, see the wiki page. 
