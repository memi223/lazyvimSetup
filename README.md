## A guide to lazyvimSetup on Window
### Requirements
1. Neovim >= 0.11.2 
```
winget install Neovim.Neovim
```
2. Git >= 2.19.0 (basics support)
```
winget install --id Git.Git -e --source winget
```
3. a Nerd Font(v3.0 or greater) [see page](https://www.nerdfonts.com/font-downloads)

4. lazygit (optinal) [see page](https://github.com/jesseduffield/lazygit)

5. C compiler
install MSYS2
```
winget install --id MSYS2.MSYS2 -e
```
update MSYS2
```
C:\msys64
dir 
C:\msys64\usr\bin\bash.exe -lc "pacman -Syu"
C:\msys64\usr\bin\bash.exe -lc "pacman -Syu"
```
install the C compiler
```
C:\msys64\usr\bin\bash.exe -lc "pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain"
```
add UCRT64 to PATH
```
setx /M PATH "%PATH%;C:\msys64\ucrt64\bin"
```
