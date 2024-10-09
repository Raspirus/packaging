# packaging
Packaging instructions for Raspirus

## Repositories:
- Arch: https://aur.archlinux.org/packages/raspirus
- Chocolatey: https://community.chocolatey.org/packages/raspirus

## Chocolatey
- choco pack 
- Get-ChildItem *.nupkg | ren -NewName raspirus.nupkg
- choco push raspirus.nupkg --source https://push.chocolatey.org
- Remove-Item .\raspirus.nupkg

## Arch
- Paste content of `.ssh` into `home/<user>/.ssh`
- Clone raspirus repository:
    ```sh
    git -c init.defaultbranch=master clone ssh://aur@aur.archlinux.org/raspirus.git
    ```
- Remember to set the git name and email with `git config user.name "..."` and `git config user.email "..."`
- Then execute:
    ```
    makepkg --printsrcinfo > .SRCINFO
    git add PKGBUILD .SRCINFO
    git commit -m "useful commit message"
    git push
    ```
Extracted from: [Arch Wiki](https://wiki.archlinux.org/title/AUR_submission_guidelines)

### Docker ARCH
- `docker build -t aur-builder .`
- `docker run -it -v $(pwd):/home/auruser aur-builder`
- SSH setup:
    ```
    sudo chown -R auruser:auruser ~/.ssh
    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/aur
    chmod 644 ~/.ssh/aur.pub
    ```
- Home perms: `sudo chown -R auruser:auruser .`
