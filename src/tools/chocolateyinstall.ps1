$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/4.2.0/ProtonVPN_v4.2.0.exe'
$checksum='bcca820138c4fd32a9e79383d866248cf8c9d8b34fec8a24ce21941bf8759031'

$packageArgs = @{
  packageName    = 'protonvpn-fankhauserli'
  fileType       = $URL.Split(".")[$URL.Split(".").Length-1]
  url            = $URL
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = $checksum
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
