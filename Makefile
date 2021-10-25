SHELL := /bin/bash
ZSH_PATH=~/.oh-my-zsh

create-directories:
	@if mkdir ~/My_Files; then \
		echo "~/My_Files/" created; \
	else \
		echo "Error creating ~/My_Files/"; \
	fi

	@if mkdir ~/scripts; then \
		echo "~/scripts/" created; \
	else \
		echo "Error creating ~/scripts/"; \
	fi

install-zsh:
	@if sudo apt -y install zsh; then \
		echo "zsh installed"; \
	else \
		echo "zsh install failed"; \
	fi

	@if sudo apt-get install zsh-syntax-highlighting; then \
		echo "zsh-syntax-highlighting installed"; \
	else \
		echo "zsh-syntax-highlighting install failed"; \
	fi

	@sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	@echo "oh-my-zsh installed"

	@git clone https://github.com/zsh-users/zsh-autosuggestions $(ZSH_PATH)/plugins/zsh-autosuggestions
	@echo "zsh-autosuggestions plugin installed"

	@sudo apt install fonts-powerline
	@echo "Powerline fonts installed"

	@git clone https://github.com/romkatv/powerlevel10k.git $(ZSH_PATH)/themes/powerlevel10k
	@echo "powerlevel10k installed"

install-git-completion:
	@mkdir ~/.zsh
	@curl -o ~/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
	@curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

	@echo "git-completion installed"
	#@curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

install-python:
	@if sudo apt -y install python3; then \
		echo "python installed."; \
	else \
		echo "python install failed."; \
	fi

	@if sudo apt -y install python3-pip; then \
		echo "pip installed."; \
	else \
		echo "pip install failed."; \
	fi

install-node:
	@if sudo apt -y install nodejs; then \
		echo "node installed."; \
	else \
		echo "node install failed."; \
	fi

	@if sudo apt -y install npm; then \
		echo "npm installed."; \
	else \
		echo "npm install failed."; \
	fi

install-vscode:
	@if sudo snap install --classic code; then \
		echo "vscode installed."; \
	else \
		echo "vscode install failed."; \
	fi

install-packages: install-zsh install-python install-node install-code

install-fonts:
	cp fonts/*.otf ~/.fonts

delete-dotfiles:
	@sudo rm -rf ~/.environment > /dev/null 2>&1
	@sudo rm -rf ~/.aliases > /dev/null 2>&1
	@sudo rm -rf ~/.p10k.zsh > /dev/null 2>&1
	@sudo rm -rf ~/.zshrc > /dev/null 2>&1
	@sudo rm -rf ~/.gitconfig > /dev/null 2>&1
	@sudo rm -rf ~/.config/Code/User/settings.json > /dev/null 2>&1

load-dotfiles: delete-dotfiles
	$(eval dotfile_dir := $(shell pwd))
	@ln -sf $(dotfile_dir)/zsh/.environment ~/.environment
	@ln -sf $(dotfile_dir)/zsh/.aliases ~/.aliases
	@ln -sf $(dotfile_dir)/zsh/.p10k.zsh ~/.p10k.zsh
	@ln -sf $(dotfile_dir)/zsh/.zshrc ~/.zshrc
	@ln -sf $(dotfile_dir)/git/.gitconfig ~/.gitconfig
	@ln -sf $(dotfile_dir)/vscode/settings.json ~/.config/Code/User/settings.json

change-shell:
	@sudo chsh -s $(which zsh) $(whoami)
	@echo "Default shell changed to zsh. Reboot to use zsh."

install: create-directories install-packages load-fonts load-dotfiles change-shell
