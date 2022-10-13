#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#
# All Commands must be run from a terminal using 'Run As Administrator' 
#
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# Install Choclatey
# https://chocolatey.org/install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Terraform
# https://www.terraform.io/downloads
choco install terraform -y --force

# Install Azure CLI
# https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows
choco install azure-cli -y --force

# Install VSCode
# https://code.visualstudio.com/Download
choco install vscode -y --force

# Install PoweShell 7 (Core) - OPTIONAL
# https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows
choco install powershell-core -y --force
