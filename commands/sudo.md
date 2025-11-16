### User Management
```powershell
# gpasswd, usermod = net
# Enable the built-in Administrator account
net user Administrator /active:yes

# Set a password for it
net user Administrator "$YourPasswordHere"

# Admin Group
net localgroup Administrators "$env:USERNAME" /delete
net localgroup Administrators "$env:USERNAME" /add


# su = runas
runas /user: Administrator powershell

# same
whoami
```

### sudo
1. Run as Administrator
2. 
```powershell
Start-Process powershell -Verb RunAs -ArgumentList "-File `".\script.ps1`""
```


