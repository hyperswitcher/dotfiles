all: homebrew packages configs

homebrew:
	sudo true
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sudo -u $$USER bash

packages:
	brew install wezterm zen-browser neovim stow
	brew install --cask font-victor-mono-nerd-font

configs:
	stow -t ~/.config . --ignore=Makefile
