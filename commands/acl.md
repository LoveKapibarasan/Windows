
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
icacls "C:\Users\lovek\.ssh" /inheritance:r
icacls "C:\Users\lovek\.ssh" /remove "SYSTEM"
# Full access
icacls "C:\Users\lovek\.ssh
" /grant "$(whoami):F"
icacls "C:\Users\lovek\.ssh" /remove "Users"
icacls "C:\Users\lovek\.ssh" /remove "Authenticated Users"
```