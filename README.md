# packaging
Packaging instructions for Raspirus

## Chocolatey
- choco pack 
- Get-ChildItem *.nupkg | ren -NewName raspirus.nupkg
- choco push raspirus.nupkg --source https://push.chocolatey.org
- Remove-Item .\raspirus.nupkg
