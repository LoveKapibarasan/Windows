
# Environment Variables
```powershell

# Export
$env:XXX = "YYY"

# Permanent but not current session
setx XXX "YYY"
```

```powershell
[Environment]::SetEnvironmentVariable("valuable_name", "value", "scope")
Get-ChildItem Env:
```

## PATH
* `\`
* Not capital-sensitive.


```powershell
$env:Path
PATH = system PATH (Machine) + user PATH (User)
User > Machine
[Environment]::GetEnvironmentVariable("Path", "Machine")
[Environment]::GetEnvironmentVariable("Path", "User")
```




### Add Path

```powershell
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$newFolder = "D:\MyApp\bin"

# Duplication Check
if ($userPath -notlike "*$newFolder*") {
    $newPath = "$userPath;$newFolder"
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
} else{
    Write-Host "Not Added"
}
```


### Replace Path
```powershell


# Never forget this
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")

# Replace
$newPath = $userPath -replace ";C:\\Old\\Path", ""


Write-Host "Check: $userPath `n`n`n , $newPath"

# New Path
[Environment]::SetEnvironmentVariable("Path", $newPath, "User")

# check
[Environment]::GetEnvironmentVariable("Path", "User")
```