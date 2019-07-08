# Getting Started
Download the repository (zip) to the Control Laptop on the `C:\` drive. Extract the master folder. 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_001.PNG)

Open PowerShell ISE, from the PowerShell console run `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`

(Skip this step if you already have a populated configuration file): Open `https://github.com/boconnor2017/e2e-home-lab/blob/master/powerShell/_e2e-lab-configuration-parameters.ps1` and populate parameters accordingly. Save this file locally for next time.

Open `https://github.com/boconnor2017/e2e-home-lab/blob/master/powerShell/labSetup.ps1`. Point `$src` parameters to their appropriate filesystems. Run the script to copy OVF templates (or copy them manually). 

![](https://github.com/boconnor2017/e2e-home-lab/blob/master/img/getting_started_002.PNG)

Open `cd .\e2e-home-lab-master\e2e-home-lab-master\powerShell\_e2e-lab-configuration-parameters.ps1` and populate the configuration parameters. Save the configuration file locally. Next time you download this git repo, copy your populated config file in place of the default config file. 

Open and Run the E2E lab builder:
```
build-e2e-lab.ps1
```

To destroy the lab, Open and Run:
```
destroy-e2e-lab.ps1
```

For detailed prerequisites and lab setup instructions, see the wiki page. 
