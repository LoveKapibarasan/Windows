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

### Boot Config

```powershell
# Boot Configuration Data edit 

# default OS
bcdedit /default {identifier}

# Check boot entries
bcdedit /enum

# Timeout
bcdedit /timeout 30

# Safeboot
bcdedit /set {current} safeboot minimal
## minimal = default
## network, alternateshell

bcdedit /deletevalue {current} safeboot
```


