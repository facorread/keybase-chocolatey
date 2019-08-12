$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  softwareName           = 'Keybase*'
  FileType               = 'msi'
  SilentArgs             = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url                    = 'https://prerelease.keybase.io/windows/Keybase_4.3.0-20190809132440%2Bf8de90a10f.amd64.msi'
  checksum               = 'f61655dbdc9b2c33e5cddb05cb34ee698deba5ebf2145f0b43934f8332e1cf80'
  checksumType           = 'sha256'
  validExitCodes         = @(0,1641,3010)
}

Install-ChocolateyPackage @packageArgs
