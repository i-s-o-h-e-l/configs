# Instructions
### Download windows terminal theme
https://windowsterminalthemes.dev/?theme=DraculaPlus
or copy 
```
{
  "name": "DraculaPlus",
  "black": "#21222C",
  "red": "#FF5555",
  "green": "#50FA7B",
  "yellow": "#ffcb6b",
  "blue": "#82aaff",
  "purple": "#c792ea",
  "cyan": "#8BE9FD",
  "white": "#F8F8F2",
  "brightBlack": "#545454",
  "brightRed": "#FF6E6E",
  "brightGreen": "#69FF94",
  "brightYellow": "#ffcb6b",
  "brightBlue": "#D6ACFF",
  "brightPurple": "#FF92DF",
  "brightCyan": "#A4FFFF",
  "brightWhite": "#F8F8F2",
  "background": "#212121",
  "foreground": "#F8F8F2"
}
```

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

see https://www.msys2.org/docs/symlinks/
- enable developer mode in windows settings
- in cmd: 

`mklink C:\msys64\home\KirillA\.zshrc .\.zshrc`

`mklink /d %LOCALAPPDATA%\nvim .\nvim`

`mkdir %APPDATA%\alacritty && mklink %APPDATA%\alacritty\alacritty.toml .\alacritty.toml`


# To do
- add windows terminal config
- add conda init to .zshrc
  - add more places where conda can be
- add tmux config and installation to script
- add creating symlinks automatically to script
- fix nvim bug with cyrillic symbols

# Bugs
- tmux doesn't work with msys2 https://github.com/microsoft/terminal/issues/5132
- conda completion sees only base evironment in MSYS (and ubuntu?), but works on WSL
- neovim doesn't work if config is in pqth with cyrillic symbols 
- cygpath works weird after conda init

