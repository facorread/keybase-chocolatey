$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName    = "$env:chocolateyPackageName"
  softwareName   = 'Keybase*'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url            = "https://prerelease.keybase.io/windows/Keybase_5.7.0-20210622153854%2Be3826b703a.amd64.msi"
  checksum       = "dacb6f8e0d6a3d6dc8aa680b1d5519d4c1a47a2bf28d37cf119c9b65eb75fc5e"
  checksumType   = 'sha256'
  validExitCodes = @(0, 1641, 3010)
}

Install-ChocolateyPackage @packageArgs
