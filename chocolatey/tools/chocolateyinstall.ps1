$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'raspirus_1.1.2_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  file         = $fileLocation
  softwareName  = 'raspirus'
  checksum      = 'C0C8AE72C7FF479607C32C200193EA9103EB20C721B6C68AA054A73E4844E5A4'
  checksumType  = 'sha256'
  checksum64    = 'C0C8AE72C7FF479607C32C200193EA9103EB20C721B6C68AA054A73E4844E5A4'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

















