# TODO add other MSYS2 environments
if [ -d /mingw64 ]; then USING_MSYS2=true; else USING_MSYS2=false; fi
if [ ! command -v apt &> /dev/null ]; then USING_UBUNTU=true; else USING_UBUNTU=false; fi   # check if apt is installed

# Install packages
if [ $USING_MSYS2 ]; then
    echo "Installing MSYS2 packages"
    pacman -S --needed --noconfirm mingw-w64-x86_64-toolchain git make mingw-w64-x86_64-cmake mingw-w64-x86_64-clang mingw-w64-x86_64-clang-tools-extra mingw-w64-x86_64-python mingw-w64-x86_64-python-pip zsh mingw-w64-x86_64-ripgrep mingw-w64-x86_64-fzf mingw-w64-x86_64-bat mingw-w64-x86_64-fd mingw-w64-x86_64-neovim mingw-w64-x86_64-nodejs

elif [ $USING_UBUNTU ] ; then   
    echo "Installing Ubuntu packages"
    # TODO add other packages
    sudo apt install zsh tmux bat
fi

if [ ! -d $HOME/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh"
    # see https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#unattended-install
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

if [ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]; then
    echo "Installing powerlevel10k"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    # https://github.com/zsh-users/zsh-autosuggestions
    echo "Installing zsh-autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    # https://github.com/zsh-users/zsh-syntax-highlighting
    echo "Installing zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/conda-zsh-completion ]; then
    # https://github.com/conda-incubator/conda-zsh-completion
    echo "Installing conda-zsh-completion"
    git clone https://github.com/conda-incubator/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion
fi

# TODO
# Configure terminal
# # if alacritty found
# if [ $USING_UBUNTU ]; then
#     mkdir $HOME/.config/alacritty
#     cp ./alacritty.toml $HOME/.config/alacritty/alacritty.toml
# fi

# TODO
# Configure tmux

# TODO
# Configure neovim