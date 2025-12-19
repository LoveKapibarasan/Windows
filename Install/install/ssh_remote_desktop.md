

# Remote Desktop


### Enable Remote Desktop
* Pro version only.
* System -> Remote desktop

```powershell
# start
net start TermService
# Check
netstat -an | findstr 3389
```

### Connect from Windows

* Connect: Win + R key -> mstsc
```powershell
Test-NetConnection -ComputerName 10.10.0.1 -Port 3389
```


# SSH
```powershell
choco install -y openssh
cd "C:\Program Files\OpenSSH-Win64"
.\install-sshd.ps1

Start-Service sshd
Set-Service sshd -StartupType Automatic
Get-Service sshd
```
### Firewall

```powershell

```