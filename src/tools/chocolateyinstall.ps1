$ErrorActionPreference = 'Stop';

$URL='https://github.com/ProtonVPN/win-app/releases/download/2.4.1/ProtonVPN_v2.4.1.exe'
$checksum='a91a98ea748eea115dd10b75626565ff8b59bb9f8cec01cbd978ffb5ee8a910e'

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