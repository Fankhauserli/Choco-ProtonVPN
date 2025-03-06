$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/3.5.3/ProtonVPN_v3.5.3.exe'
$checksum='b626e2a78217ed36cd1d944273ce30fa36336cf085ae756989bd9fe68e10dde0'

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
