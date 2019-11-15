$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  softwareName           = 'Keybase*'
  FileType               = 'msi'
  SilentArgs             = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url                    = 'https://prerelease.keybase.io/windows/Keybase_5.0.0-20191114142502%2Bf73f97dac6.amd64.msi'
  checksum               = 'ced292eb5eb525ccb6767ea8b411d5bceb5d89231d95f5b7e192ba2b43b34917'
  checksumType           = 'sha256'
  validExitCodes         = @(0,1641,3010)
}

Install-ChocolateyPackage @packageArgs
