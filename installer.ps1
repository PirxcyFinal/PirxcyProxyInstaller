$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for the current session
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Define the URL of the text file
$url = "https://github.com/PirxcyFinal/PirxcyProxyFinal/raw/main/main.py"

# Define the path where the text file will be saved
$filePath = "main.py"

# Ensure the directory exists, if not create it
$directory = [System.IO.Path]::GetDirectoryName($filePath)
if (-not (Test-Path -Path $directory) -and $directory -ne $null) {
    New-Item -ItemType Directory -Path $directory -Force
}

try {
    # Download the content from the URL
    $response = Invoke-WebRequest -Uri $url

    # Save the content to the text file
    $response.Content | Out-File -FilePath $filePath -Encoding UTF8

    Write-Output "[+] $filePath installed successfully!"
} catch {
    Write-Error "Failed to download or save the file: $_"
}
