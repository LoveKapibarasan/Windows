# Grep

```powershell
Select-String "yyy"
findstr "$search_str" $file
xxx | findstr 'yyy'
```
> Select-String is better in powershell.
**grep**
* `Where-Object { condition }`
    * `$_`: current line
    * `-not`
    * `-like`
    * `-match`
    * `-eq`
    * `-ne`
    * `-gt`
    * `-ge`
    * `-lt`
    * `-le`
    * `-and`
    * `-or`
    * `-nomatch 'REGEX'`