# Run in admin terminal
Remove-Item -Recurse -Force "C:\ProgramData\chocolatey"

# Allow the installation script from internet
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco search "$package"
# Install choco

PS C:\WINDOWS\system32> Test-Path "C:\ProgramData\chocolatey\bin\choco.exe"                                             >>                                                                                                                      False                                                                                                                   PS C:\WINDOWS\system32>
choco install git git-lfs intellijidea-community pycharm-community python -y
choco install openssh docker-desktop tex-live wireshark R.Studio rust dbevear -y
git lfs install

# Git: $HOME\.ssh

# Install npcap https://npcap.com

# Adguard https://adguard.com/en/adguard-windows/overview.html
# AdGuard Extension: https://microsoftedge.microsoft.com/addons/detail/adguard-browser-assistant/calilkfbhgibagenlbchfbiafnacldki

# Pasonemu
# https://pasonemu.com/

# HTMail
# https://microsoftedge.microsoft.com/addons/detail/htmail-insert-html-into-/fmolpbepkmdanohdmaglpnldhebfjkkd

# Rust
irm https://sh.rustup.rs | iex


# =====
# Uninstall Microsoft store
Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage

