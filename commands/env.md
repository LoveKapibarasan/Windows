```powershell

# Export
$env:XXX = "YYY"

# Permanent but not current session
setx XXX "YYY"
```



### Replace Path
```powershell

$userPath = [Environment]::GetEnvironmentVariable("Path", "User")

# Replace
$newPath = $userPath -replace ";C:\\Old\\Path", ""

# New Path
[Environment]::SetEnvironmentVariable("Path", $newPath, "User")

# check
[Environment]::GetEnvironmentVariable("Path", "User")
```