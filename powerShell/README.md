# Getting Started with PowerCLI on Photon
Install powershell
```
tdnf install powershell
```

Run powershell
```
root@photon-machine [ /usr/local/e2e-home-lab ]# pwsh
PowerShell 6.1.0-271-gc1e171622acb2917914fbc3fde69322b07863b3b
Copyright (c) Microsoft Corporation. All rights reserved.

https://aka.ms/pscore6-docs
Type 'help' to get help.

PS /usr/local/e2e-home-lab>
```

Install PowerCLI
```
PS /usr/local/e2e-home-lab> Install-Module -Name VMware.PowerCLI

Untrusted repository
You are installing the modules from an untrusted repository. If you trust this repository, change its InstallationPolicy value by running the Set-PSRepository cmdlet.
Are you sure you want to install the modules from 'PSGallery'?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): A
PS /usr/local/e2e-home-lab>
```

Disable SSL certificate validation
```
PS /usr/local/e2e-home-lab> Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

Perform operation?
Performing operation 'Update PowerCLI configuration.'?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): Y

Scope    ProxyPolicy     DefaultVIServerMode InvalidCertificateAction  DisplayDeprecationWarnings WebOperationTimeout
                                                                                                  Seconds
-----    -----------     ------------------- ------------------------  -------------------------- -------------------
Session  UseSystemProxy  Multiple            Ignore                    True                       300
User                                         Ignore
AllUsers

PS /usr/local/e2e-home-lab>
```
