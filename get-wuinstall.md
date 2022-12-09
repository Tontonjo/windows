# Update Windows using command prompt  
## Tonton Jo - 2022  
## Sources
https://www.powershellgallery.com/packages/PSWindowsUpdate/2.2.0.3  
https://4sysops.com/archives/how-to-create-a-powershell-alias/  
http://woshub.com/pswindowsupdate-module/  
## Install PSWindowsUpdate  
```shell
Install-Module -Name PSWindowsUpdate -Force
```
```shell
import-Module -Name PSWindowsUpdate --silent
```
## Download and install updates
```shell
get-wuinstall --verbose --download --install --acceptall
```
## Set an alias "update" for the command
### Locate your ps1 profile file: Open an administrator powershell prompt
```shell
$profile
```
### Go to this location: if file exist: edit it / if not: create it
```shell
Function run-update {Get-Wuinstall -Acceptall -Verbose -install}
New-Alias update run-update
```
### Now you can update with ease using an elevated powershell prompt
```shell
update
```

