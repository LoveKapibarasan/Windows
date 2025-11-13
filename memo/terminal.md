# Terminal

## Command Prompt application
* Older
* `.cmd` or `.bat`.

**Execute**
```cmd
cd "$path_to"
file.bat
```


## Powershell
* a modern shell and scripting environment
* `.ps1`
* * 1 was PowerShell V1, but even version 2 it is the same.

**Execution**
```powershell
cd "$path_to"
.\file.ps1
# Ignore script execution blocks
powershell -ExecutionPolicy Bypass -File ".\name.ps1"
```

**Copy and Paste**
* select & `Ctrl` + `C`
* `Ctrl` + `V`

**.bashrc**
```powershell
echo $PROFILE
# C:\Users\<username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```


### Chmod

```powershell
# Allow to run a script
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```