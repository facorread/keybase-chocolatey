$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  softwareName           = 'Keybase*'
  FileType               = 'msi'
  SilentArgs             = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url                    = 'https://prerelease.keybase.io/windows/Keybase_5.2.0-20200130014557%2Bcf82db8320.amd64.msi'
  checksum               = '6f42d476c67fee71273c27525230378ec646ed2d08020971a89f2584e76ba95c'
  checksumType           = 'sha256'
  validExitCodes         = @(0,1641,3010)
}

Install-ChocolateyPackage @packageArgs
