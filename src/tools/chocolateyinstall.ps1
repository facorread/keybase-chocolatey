$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  softwareName           = 'Keybase*'
  FileType               = 'msi'
  SilentArgs             = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url                    = 'https://prerelease.keybase.io/windows/Keybase_5.2.1-20200225124929%2B9845113a89.amd64.msi'
  checksum               = '55e096c87d1f90e02b000d50479b1bb0288de4e78e75f8fe49c153a3bc4d0888'
  checksumType           = 'sha256'
  validExitCodes         = @(0,1641,3010)
}

Install-ChocolateyPackage @packageArgs
