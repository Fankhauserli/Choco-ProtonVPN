$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/3.2.11/ProtonVPN_v3.2.11.exe'
$checksum='eb37bf757a2613e6b5c0d328e9b27c64902249c510d8883593e83ff289794aa0'

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