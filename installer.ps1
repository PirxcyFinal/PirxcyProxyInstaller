$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for the current session
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Define the URL of the text file
$url = "https://github.com/PirxcyFinal/PirxcyProxyFinal/raw/main/main.py"
curl -L -o "main.py" "https://github.com/PirxcyFinal/PirxcyProxyFinal/raw/main/main.py"
