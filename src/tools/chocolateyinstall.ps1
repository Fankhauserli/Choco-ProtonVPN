$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/2.4.1/ProtonVPN_v2.4.1.exe'
$checksum='b336c2a9f0b9b4114138d79a86686a9c85dcdda52c7bb62705eb129c2d85c813'

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