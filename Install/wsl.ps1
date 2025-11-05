# Install WSL
wsl --install

# Enable required Windows features
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable AMD-V (AMD CPUs) in BIOS

# Set version
wsl --set-default-version 2

# Get list
wsl.exe --list --online

# Install Ubuntu
wsl --install -d Ubuntu
wsl --set-version Ubuntu 2


# lsblk
Get-Disk

# Mount USB
# wsl --mount <DiskPath> [--partition <Number>] [--type <Filesystem>] [--bare]
wsl --mount \\.\PHYSICALDRIVE2 --partition 1

# Enter into WSL
wsl