$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName    = "$env:chocolateyPackageName"
  softwareName   = 'Keybase*'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url            = "https://prerelease.keybase.io/windows/Keybase_6.2.1-20230721143806%2Be6160f1b9e.amd64.msi"
  checksum       = "6929986CB421759EAE744AD488836D07AEF2CACB4AAE6E5BA13059A7AA34E638"
  checksumType   = 'sha256'
  validExitCodes = @(0, 1641, 3010)
}

Install-ChocolateyPackage @packageArgs
