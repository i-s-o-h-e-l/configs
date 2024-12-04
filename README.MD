# Instructions

### Setup keyboard layout
#### Autohotkey
- Create a shortcut to .ahk file 
- Copy the shortcut to %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
#### Kanata
##### On Windows
- Install driver from https://github.com/oblitum/Interception and copy Interception\library\x64\interception.dll into configs\keyboard\kanata
- Download  kanata_gui_wintercept.exe from https://github.com/jtroo/kanata/releases/latest/download/kanata_gui_wintercept.exe and put into configs\keyboard\kanata
- (Optionally) Add mouse id to kanata.kbd
- Copy the shortcut to kanata_gui_wintercept.exe into %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

### Setup conda in MSYS2
- find conda.exe by running `where conda` in cmd
- navigate to the folder
- run  `./conda.exe init zsh`
- check that the correct .zshrc was modified, if not manually copy the commands into corect .zshrc
- if you get the parse error: ???  

### Fix errors with MSYS2 if the user name has cyrillics
- in windows create new local user without cyrillics in the name
- create the directory in c/users with the name
- setup zsh as usual with ~ as c/users/new_name
- change back to the previous user, everything should work

### Install neovim 
#### On Windows
- download and install https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi
- download and install https://github.com/equalsraf/neovim-qt/releases/latest/download/neovim-qt-installer.msi
- go to C:\Program Files\neovim-qt 0.2.18\bin and create a shortcut to nvim-qt.exe
#### On WSL/Ubuntu
- \>10 verion available via snap https://snapcraft.io/nvim
`sudo snap install nvim --classic`
`PATH=$PATH:/snap/bin`

- if snap doesnt work on WSL see https://askubuntu.com/a/1501564

### Make symlinks

see https://www.msys2.org/docs/symlinks/ https://superuser.com/questions/167076/how-can-i-delete-a-symbolic-link-in-windows
- enable developer mode in windows settings
- in cmd: 

`mklink C:\msys64\home\%USERNAME%\.zshrc %cd%\.zshrc`

`mklink /d %LOCALAPPDATA%\nvim %cd%\nvim`

`mkdir %APPDATA%\alacritty && mklink %APPDATA%\alacritty\alacritty.toml %cd%\alacritty.toml`

- in bash

`ln -s $(pwd)/alacritty.toml ~/.config/alacritty/alacritty.toml`

`ln -s $(pwd)/nvim ~/nvim`

`ln -s $(pwd)/.tmux.conf ~/.tmux.conf`

`ln -s $(pwd)/.zshrc ~/.zshrc`

# To do and bugs
- add tmux config and installation to script
- add creating symlinks automatically to script
- add nvim gui config
- tmux doesn't work with msys2 https://github.com/microsoft/terminal/issues/5132
- conda completion sees only base evironment in MSYS (and ubuntu?), but works on WSL
- neovim doesn't work in MSYS if config is in path with cyrillic symbols 
- conda init adds binaries to path that conflict with mingw, this breaks git, cygpath,... 
- cursor flickers in nvim qt (see https://neovim.io/doc/user/faq.html)
- cursor changes in terminal after nvim

