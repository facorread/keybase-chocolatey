$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName    = "$env:chocolateyPackageName"
  softwareName   = 'Keybase*'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url            = "https://prerelease.keybase.io/windows/Keybase_5.9.0-20211216215858%2B9b33c9201f.amd64.msi"
  checksum       = "6678cef4f1e7f38530e34232a07775596fbb54b60b643a37b7da76c4c80fbde2"
  checksumType   = 'sha256'
  validExitCodes = @(0, 1641, 3010)
}

Install-ChocolateyPackage @packageArgs
