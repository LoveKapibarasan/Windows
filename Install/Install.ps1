# Run in admin terminal
Remove-Item -Recurse -Force "C:\ProgramData\chocolatey"

# Allow the installation script
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))



choco search "$package"
# Install choco
PS C:\WINDOWS\system32> Test-Path "C:\ProgramData\chocolatey\bin\choco.exe"                                             >>                                                                                                                      False                                                                                                                   PS C:\WINDOWS\system32>        
choco install git git-lfs intellijidea-community pycharm-community python -y
choco install openssh docker-desktop tex-live wireshark R.Studio -y
git lfs install

# Git: $HOME\.ssh

# Install npcap https://npcap.com

# Adguard https://adguard.com/en/adguard-windows/overview.html
# AdGuard Extension: https://microsoftedge.microsoft.com/addons/detail/adguard-browser-assistant/calilkfbhgibagenlbchfbiafnacldki

# Pasonemu
# https://pasonemu.com/

# PerplexityAI Comet
# https://www.perplexity.ai/

# HTMail
# https://microsoftedge.microsoft.com/addons/detail/htmail-insert-html-into-/fmolpbepkmdanohdmaglpnldhebfjkkd
# Switch to HTML mode

# IntelliJ Plugin ID
# 1. com.intellij.plugin.adernov.powershell

# Uninstall Microsoft store, Paint, Solitaire, XBox, Onedrive, News
Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage
Get-AppxPackage *Microsoft.News* | Remove-AppxPackage