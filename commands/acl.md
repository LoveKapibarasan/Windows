
# ACL (Access Control List)
```powershell
icacls file
```
    * `/grant`, `/grant:r`: replace
    * `/remove`

`F`: Full Access
`R`: Read only

```powershell
# remove inheritence
icacls "$HOME\.ssh" /inheritance:r
icacls "$HOME\.ssh" /remove "SYSTEM"
# Full access
icacls "$HOME\.ssh" /grant "$(whoami):F"
icacls "$HOME\.ssh" /remove "Users"
icacls "$HOME\.ssh" /remove "Authenticated Users"
```