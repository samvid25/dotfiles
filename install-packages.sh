#!/bin/bash

echo "Updating package lists..."
sudo apt update


# Install zsh, oh-my-zsh, powerline fonts and powerlevel10k
#--------------------------------------------------------------------------------------------
sudo apt -y install zsh
if type -p zsh > /dev/null; then
    echo "zsh installed."
else
    echo "zsh install failed."
fi

sudo apt-get install zsh-syntax-highlighting

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions

sudo apt install fonts-powerline

git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
#--------------------------------------------------------------------------------------------


# Install Node and NPM
#--------------------------------------------------------------------------------------------
sudo apt -y install nodejs
if type -p node > /dev/null; then
    echo "node installed."
else
    echo "node install failed."
fi

sudo apt -y install npm
if type -p npm > /dev/null; then
    echo "npm installed."
else
    echo "npm install failed."
fi
#--------------------------------------------------------------------------------------------


# Install Python and Pip
#--------------------------------------------------------------------------------------------
sudo apt -y install python3
if type -p python3 > /dev/null; then
    echo "python installed."
else
    echo "python install failed."
fi

sudo apt -y install python3-pip
if type -p pip3 > /dev/null; then
    echo "pip installed."
else
    echo "pip install failed."
fi
#--------------------------------------------------------------------------------------------


# Install VSCode
#--------------------------------------------------------------------------------------------
sudo snap install --classic code
if type -p code > /dev/null; then
    echo "VSCode installed."
else
    echo "VSCode install failed."
fi
#--------------------------------------------------------------------------------------------


# Install git-completion and git-prompt
#--------------------------------------------------------------------------------------------
cd ~/
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
mv ~/git-completion.bash ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "git-completion and git-prompt installed and configured"
#--------------------------------------------------------------------------------------------


# Install fonts
#--------------------------------------------------------------------------------------------
cp fonts/*.otf ~/.fonts
#--------------------------------------------------------------------------------------------


# Install cairo-dock
#--------------------------------------------------------------------------------------------
sudo apt install cairo-dock cairo-dock-plug-ins
if type -p cairo-dock > /dev/null; then
    echo "Cairo-Dock installed."
else
    echo "Cairo-Dock install failed."
fi
#--------------------------------------------------------------------------------------------