Write-Host "Congratulations! Script Successfully"

# Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process

# Install  chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Chocolatey install

# chocolatey gui
choco install -y chocolateygui
# node.js
choco install -y nodejs
# python 3
choco install -y python3
# 7z
choco install -y 7z.install
# git
choco install -y git 
