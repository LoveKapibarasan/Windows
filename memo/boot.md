

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