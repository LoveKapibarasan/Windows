
# Alias
```powershell
Get-Alias $command
```



**mv**
ps: `move`, 
```powershell
Move-Item -Path "$source" -Destination "$destination"
## No -Recurse
# -Force: Overwrite
```

**cp**
```powershell
Copy-Item -Path "$source" -Destination "$destination"
# -Force : Overwrite True
```

**make a file**
```powershell
New-Item -Path $PATH_TO -ItemType File
New-Item -Path $PATH_TO -ItemType Directory -Force
```

**rm**

ps: `Remove-Item`
    * `-Recurse`
    * `-Force`


**cd**
* care path notation
* ps: `$HOME` = `~`
> No ~
```powershell
Set-Location "$Path_to"
```

**read**
```powershell
$name = Read-Host -Prompt "Enter xxx"
```

**echo**
```powershell
Write-Host [[-Object] <Object>] [parameters]
# -ForegroundColor Red
# -BackgroundColor Yellow
Write-Output # Pipeline, no color
Write-Information # Pipeline, no color, $InformationPreference = 'Continue'
Write-Debug # yellow, $DebugPreference = 'Continue'
Write-Warning # yellow, $WarningPreference = 'Continue'
Write-Error # red, $ErrorActionPreference = 'Continue'
```

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

**ls, dir**
```powershell
Get-ChildItem
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

**Vim, Nano**
```powershell
notepad $file
```

**here string**
```powershell
@"
line1
line2
"@
```

**curl**
```powershell
curl $url
# Non-Formated output
curl.exe $url
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

### Variable Expansion
* The same as bash

### Escape

`$` = `$

### Env
```ps1
refreshenv
# add environment variable permanently
## !! Sometimes it does not work on powershell immediately 
setx PATH "$env:PATH;C:\ProgramData\**\bin"
```
