$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://github.com/PirxcyFinal/PirxcyProxyFinal/raw/main/main.py" -OutFile "main.py"
