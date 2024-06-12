$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12

#Install main.py
Write-Output "Installing main.py"
Invoke-WebRequest -Uri "https://github.com/PirxcyFinal/PirxcyProxyFinal/raw/main/main.py" -OutFile "main.py"

# Install python
$PYTHON_VERSION = "3.10.11"
$PYTHON_EXE = "python-installer.exe"
$PYTHON_URL = "https://www.python.org/ftp/python/$PYTHON_VERSION/python-$PYTHON_VERSION-amd64.exe"

# Download the Python installer
Write-Output "Downloading Python from: $PYTHON_URL and storing in $PYTHON_EXE"
Invoke-WebRequest -Uri $PYTHON_URL -OutFile $PYTHON_EXE

# Install Python
Clear-Host
Write-Output "Installing Python $PYTHON_VERSION"
Start-Process -FilePath $PYTHON_EXE -ArgumentList '/quiet', '/passive', 'InstallAllUsers=0', 'PrependPath=1', 'Include_test=0', 'Include_pip=1', 'Include_doc=0' -Wait

exit
