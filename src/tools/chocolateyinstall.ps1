$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName    = "$env:chocolateyPackageName"
  softwareName   = 'Keybase*'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url            = "https://prerelease.keybase.io/windows/Keybase_6.3.1-20240530101712%2B0c98770127.amd64.msi"
  checksum       = "dcb7709e7a3d32335db1d59a584d7b0cdf9a4fbfbe25ab797af9796f17cd582f"
  checksumType   = 'sha256'
  validExitCodes = @(0, 1641, 3010)
}

Install-ChocolateyPackage @packageArgs
