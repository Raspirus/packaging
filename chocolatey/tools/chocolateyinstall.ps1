$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'raspirus_1.1.3_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  file         = $fileLocation
  softwareName  = 'raspirus'
  checksum      = 'EBE46AFA16653EA721C43E4E79518C128E25AC9102BA8EE42B665F7652FF2159'
  checksumType  = 'sha256'
  checksum64    = 'EBE46AFA16653EA721C43E4E79518C128E25AC9102BA8EE42B665F7652FF2159'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

















