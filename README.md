# Dotfiles

## Usage

```bash
sudo apt install make

git clone https://github.com/samvid25/dotfiles ~/dotfiles
cd ~/dotfiles

make install
```

This will:
* Create the directory structure
* Install packages
* Install fonts
* Load dotfiles (symlinks)
* Change the default shell to `zsh`.

<hr \>

Each step can also be run individually:
* `make create-directories`
* `make install-packages`: Each package/set of packages can also be installed individually:
    * `make install-zsh` installs:
        * `zsh`
        * `zsh-syntax-highlighting`
        * `oh-my-zsh`
        * `zsh-autosuggestions`
        * `fonts-powerline`
        * `powerlevel10k`
    * `make install-python` installs:
        * `python`
        * `pip`
    * `make install-node` installs:
        * `node`
        * `npm`
    * `make install-vscode` installs Visual Studio Code (via `snap`)
* `make install-fonts`
* `make load-dotfiles`
* `make change-shell`

### Windows Subsystem for Linux

Using these dotfiles and themes in WSL requires installing Powerline fonts in Windows. Run the following in an admin Powershell instance:
```
git clone https://github.com/powerline/fonts.git
.\install.ps1
```

## TODO
* Add Cairo-Dock config + Start on startup
* Add better echo lines to scripts
* Split `.zshrc` into `.history`
* Move existing dotfiles to a backup instead of deleting them
* Add more fonts
* Update vscode config
* Add vim config
* Add Windows Terminal config file