CONFIG_DIR=~/

all:
	unzip .vim.zip -d .vim
	unzip .oh-my-zsh.zip
	cp -r $(CURDIR)/.oh-my-zsh $(CONFIG_DIR)
	cp $(CURDIR)/.zshrc $(CONFIG_DIR)
	cp $(CURDIR)/.tmux.conf $(CONFIG_DIR)
	cp -r $(CURDIR)/.vim $(CONFIG_DIR)
	cp -r $(CURDIR)/.autojump $(CONFIG_DIR)
	cp $(CURDIR)/.vimrc $(CONFIG_DIR)

vim:
	unzip .vim.zip -d .vim
	cp -r $(CURDIR)/.vim $(CONFIG_DIR)
	cp $(CURDIR)/.vimrc $(CONFIG_DIR)

tmux:
	cp $(CURDIR)/.tmux.conf $(CONFIG_DIR)

zsh:
	unzip .oh-my-zsh.zip
	cp -r $(CURDIR)/.oh-my-zsh $(CONFIG_DIR)
	cp $(CURDIR)/.zshrc $(CONFIG_DIR)
	
autojump:
	cp -r $(CURDIR)/.autojump $(CONFIG_DIR)
