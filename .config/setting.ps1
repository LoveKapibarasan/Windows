
# 1.
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
# Simbolic Link is only allowed for Admin
# Dest file should exist !!
New-Item -ItemType File -Path $PROFILE -Force
Copy-Item -Path .\Microsoft.PowerShell_profile.ps1 -Destination "$(Write-Output $PROFILE)" -Force
# New-Item -ItemType SymbolicLink -Path "$(Write-Output $PROFILE)" -Target .\Microsoft.PowerShell_profile.ps1 -Force

Get-Item $PROFILE | Select-Object FullName, LinkType, Target


# Execution Policy
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# 2.
Copy-Item -Path .\.bashrc -Destination $HOME