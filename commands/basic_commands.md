
**mv**
ps: `move`, 
```powershell
Move-Item -Path "$source" -Destination "$destination"
## No -Recurse
```
**rm**

ps: `Remove-Item`
    * `-Recurse`
    * `-Force`


**cd**
* the same
* care path notation
* ps: `$HOME` = `~`
> No ~

**echo**
> Alias
* ps: `Write-Output`
* cmd: `echo`

**cat**
* ps: `Get-Content`
* cmd: `type`

**Write out**
* ps: 
  1. `Set-Content $file`
  2. `Add-Content $file`: `>>` Append

**|**
* the same

**replace**
```ps1
$str -replace "$old", "$new"
```

```powershell
whoami
where program # which
```


### Power
ps: `Restart-Computer`
cmd: `shutdown /r /t 0`

### Variable Expansion
```powershell
$name = "Alice"
$message = "Hello, $name!"
Write-Output $message
```

* Literal `'literal'`

### Regex
* ps: `*`

### Disks

`C`: 

### Escape

`$` = `$

### Env
```ps1
refreshenv
# add environment variable permanently
## !! Sometimes it does not work on powershell immediately 
setx PATH "$env:PATH;C:\ProgramData\**\bin"
```
