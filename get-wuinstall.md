## Install PSWindowsUpdate
```shell
Install-Module -Name PSWindowsUpdate -Force
```
```shell
import-Module -Name PSWindowsUpdate --silent
```
```shell
get-wuinstall --verbose --download --install --acceptall
```
## Set an alias "update" for the command
### Locate your ps1 profile file: Open an administrator powershell prompt
```shell
$profil
```
### Go to this location: if file exist: edit it/ if not: create it
```shell
Function run-update {Get-Wuinstall -Acceptall -Verbose -install}
New-Alias update run-update
```
