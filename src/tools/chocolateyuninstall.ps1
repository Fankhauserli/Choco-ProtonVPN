$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    softwareName   = 'ProtonVPN'
    fileType       = 'exe'
    silentArgs     = '/qn'
    validExitCodes = @(0, 3010)
}

Uninstall-ChocolateyPackage @packageArgs