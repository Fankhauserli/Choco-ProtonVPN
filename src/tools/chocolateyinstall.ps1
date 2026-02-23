$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/4.3.12/ProtonVPN_v4.3.12.exe'
$checksum='503eafb3658d3d8403cb63b14e0d21a5baa9553d95572eb345d2c4548b210b0d'

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
