

**Remote Desktop**
* Pro version only.
* System -> Remote desktop
```powershell
# start
net start TermService
# Check
netstat -an | findstr 3389
Get-NetConnectionProfile
# make this as private(trusted)
Set-NetConnectionProfile -InterfaceAlias "wg0" -NetworkCategory Private

Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```



* Connect: Win + R key -> mstsc
```powershell
Test-NetConnection -ComputerName 10.10.0.1 -Port 3389
```