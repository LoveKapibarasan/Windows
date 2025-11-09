
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

### Path
`\` style.