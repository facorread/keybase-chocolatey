$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  softwareName           = 'Keybase*'
  FileType               = 'msi'
  SilentArgs             = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url                    = 'https://prerelease.keybase.io/windows/Keybase_5.1.1-20191211173333%2B15bbb94c23.amd64.msi'
  checksum               = '3ece44933d3798203e06572cff36eea08544c35abf4aef0ce3cb04bdaeb57a7c'
  checksumType           = 'sha256'
  validExitCodes         = @(0,1641,3010)
}

Install-ChocolateyPackage @packageArgs
