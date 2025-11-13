
# 1.
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
# Simbolic Link is only allowed for Admin
# Dest file should exist !!
New-Item -ItemType File -Path $PROFILE -Force
New-Item -ItemType SymbolicLink -Path .\Microsoft_PowerShell_profile.ps1 -Target "$(Write-Output $PROFILE)"

# Execution Policy
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
