
**mv**
ps: `move`, 
```powershell
Move-Item -Path "$source" -Destination "$destination"
## No -Recurse
# -Force: Overwrite
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

**&&**
* `;`

**replace**
```ps1
$str -replace "$old", "$new"
```

**w**

```powershell
whoami
where program # which
```

**path**
```powershell
Resolve-Path $file_Path
```


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

**path**
1. `\`
2. Does not care capital case

### Escape

`$` = `$

### Env
```ps1
refreshenv
# add environment variable permanently
## !! Sometimes it does not work on powershell immediately 
setx PATH "$env:PATH;C:\ProgramData\**\bin"
```
