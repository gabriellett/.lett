# .lett

Some dotfiles :)

## Automatic installation:

	curl -L https://raw.githubusercontent.com/gabriellett/.lett/master/install.sh | sh

## Manual installation

Just clone into your home using
	
	git clone https://github.com/gabriellett/.lett ~/.lett

### zsh configuration

Install zsh using your default package manager.
Change default shell using chsh (point it to /bin/zsh)

	git clone https://github.com/gabriellett/.lett/oh-my-zsh into ~/.lett/.oh-my-zsh

Thenk make the following links:

	ln -s ~/.lett/.zshrc ~/.zshrc
	ln -s ~/.lett/.oh-my-zsh ~/.oh-my-zsh

And restart zsh

### .vim installation

	ln -s ~/.vim .vim
### .vim plugins

	git clone https://github.com/vim-scripts/XML-Folding.git
	git clone https://github.com/kien/ctrlp.vim.git
	git clone https://github.com/othree/html5.vim.git
	git clone https://github.com/godlygeek/tabular.git
	git clone https://github.com/tpope/vim-dispatch.git
	git clone https://github.com/nelstrom/vim-markdown-folding.git
	git clone https://github.com/tpope/vim-surround.git
	
### install powerline

(you can also install it from the AUR)

	pacman -S python
	pip install --user git+git://github.com/Lokaltog/powerline
	
### Troubleshooting

If you are getting swap files errors, make sure your vim tmp dir is created (check the location at install.sh)
