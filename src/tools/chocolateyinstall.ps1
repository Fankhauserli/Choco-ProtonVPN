$ErrorActionPreference = 'Stop';

$URL = 'https://github.com/ProtonVPN/win-app/releases/download/3.2.11/ProtonVPN_v3.2.11.exe'
$checksum = 'EB37BF757A2613E6B5C0D328E9B27C64902249C510D8883593E83FF289794AA0'

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = $URL.Split(".")[$URL.Split(".").Length-1]
  url            = $URL
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = $checksum
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs