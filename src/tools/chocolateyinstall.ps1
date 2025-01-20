$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/3.5.1/ProtonVPN_v3.5.1.exe'
$checksum='29b0dd066e8e5a64c807d28d9ee75aa25e54c36011be9738d547e6bc0e4399cb'

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
