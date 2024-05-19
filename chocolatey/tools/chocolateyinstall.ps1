$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'raspirus_1.2.0_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  file         = $fileLocation
  softwareName  = 'raspirus'
  checksum      = '23c9caa80d6657822e7bb004a59af8fdf4205210f33c7dccdfbda96c1f12623d'
  checksumType  = 'sha256'
  checksum64    = '23c9caa80d6657822e7bb004a59af8fdf4205210f33c7dccdfbda96c1f12623d'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

















