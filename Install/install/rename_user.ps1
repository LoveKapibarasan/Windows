# Run PowerShell as Administrator

# Set your old and new usernames
$OldUsername = Read-Host -Prompt "Enter your old user name"
$NewUsername = "user"

Rename-LocalUser -Name "lovek" -NewName "user"

# Get all profile list registry keys
$ProfileListPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList"
$Profiles = Get-ChildItem -Path $ProfileListPath

# Loop through each profile SID
foreach ($P in $Profiles) {
    $ProfileImagePath = (Get-ItemProperty -Path $P.PSPath -Name ProfileImagePath -ErrorAction SilentlyContinue).ProfileImagePath
    Write-Verbose "Processing $ProfileImagePath" -Verbose
    # Check if this profile matches the old username
    if ($ProfileImagePath -like "*\$OldUsername") {
        Write-Host "Found profile: $($P.PSChildName)" -ForegroundColor Green
        Write-Host "Current path: $ProfileImagePath" -ForegroundColor Yellow

        # Update the ProfileImagePath
        $NewPath = $ProfileImagePath -replace $OldUsername, $NewUsername
        Set-ItemProperty -Path $P.PSPath -Name ProfileImagePath -Value $NewPath -Confirm

        Write-Host "Updated to: $NewPath" -ForegroundColor Green
    }
}

Write-Host "`nRegistry update complete!" -ForegroundColor Cyan

Write-Host "Updatring home directory..."
Rename-Item -Path "C:\Users\$OldUsername" -NewName "$NewUsername"

