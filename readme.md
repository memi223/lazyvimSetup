# Make a backup of your current Neovim files:

_required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

_optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak




# Clone the starter then delete .git

git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim

Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force

nvim

:LazyHealth

* missing installation

winget install BurntSushi.ripgrep.MSVC
winget install sharkdp.fd

winget install JesseDuffield.lazygit
winget install 7zip.7zip
