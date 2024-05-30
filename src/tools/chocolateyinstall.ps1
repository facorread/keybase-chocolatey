$ErrorActionPreference = 'Stop';

# URL and SHA256 checksum come from
# https://s3.amazonaws.com/prerelease.keybase.io/update-windows-prod-v2.json
# Subscribe to updates on this file on https://www.wachete.com

$packageArgs = @{
  packageName    = "$env:chocolateyPackageName"
  softwareName   = 'Keybase*'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
  url            = "https://prerelease.keybase.io/windows/Keybase_6.3.0-20240528112728%2B16b027d126.amd64.msi"
  checksum       = "cc09a79d8867a9cb0faa44a19a1ccde803a4c7e88899d56c96b039e52e274d05"
  checksumType   = 'sha256'
  validExitCodes = @(0, 1641, 3010)
}

Install-ChocolateyPackage @packageArgs
