# `.`files

This is a collection of my dotfiles and scripts to install packages to set-up a new Linux system.

## Usage

```bash
sudo apt update
sudo apt install git make

git clone https://github.com/samvid25/dotfiles ~/dotfiles
cd ~/dotfiles

make install
```

This will:
* Create the directory structure
* Install packages (uses `apt` and `snap`)
* Install fonts
* Load dotfiles (create symlinks)
* Change the default shell to `zsh`.

<hr \>

Each step can also be run individually:
* `make create-directories`: Creates `~/My_Files/` (I prefer a separate `My_Files` subdirectory cause we all know the clutter that accumulates in the `HOME` directory) and `~/scripts/` (a collection of scripts I regularly use - added to `PATH`)
* `make install-packages`: Each package/set of packages can also be installed individually:
    * `make install-zsh` installs:
        * `zsh`
        * `zsh-syntax-highlighting`
        * `oh-my-zsh`
        * `zsh-autosuggestions`
        * `fonts-powerline`
        * `powerlevel10k`
    * `make install-git-completion` installs [`git-completion`](https://github.com/git/git/tree/master/contrib/completion) for `zsh`
    * `make install-python` installs:
        * `python`
        * `pip`
    * `make install-node` installs:
        * `node`
        * `npm`
    * `make install-vscode` installs Visual Studio Code (via `snap`)
* `make install-fonts`
* `make load-dotfiles`
* `make change-shell` (requires logging out and logging back in)

### Windows Subsystem for Linux

Using these dotfiles and themes in WSL requires installing Powerline fonts in Windows. Run the following in an admin PowerShell instance:
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