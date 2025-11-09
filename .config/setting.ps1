
# 1.
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
# Simbolic Link is only allowed for Admin
New-Item -ItemType SymbolicLink -Path .\Microsoft_PowerShell_profile.ps1 -Target "$(Write-Output $PROFILE)"