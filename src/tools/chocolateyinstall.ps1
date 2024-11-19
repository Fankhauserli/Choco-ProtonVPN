$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/3.4.3/ProtonVPN_v3.4.3.exe'
$checksum='37dbcc06cdf2dbb879f60976eb8a3407246f04d64a08de9922da879dddc76b08'

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
