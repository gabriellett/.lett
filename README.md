# .lett

My dotfiles.

## Automatic installation:

```
curl -L https://raw.githubusercontent.com/gabriellett/.lett/master/install.sh | sh
```

## Manual installation

First you need to install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

Then clone this repo in your home folder:
	
```
git clone https://github.com/gabriellett/.lett ~/.lett
```

Link the .vim, .vimrc, .zshrc and .tmux.conf from .lett to your home

To make powerline pretties copy `.lett/to-oh-my-zsh/themes/ys_powerline.zsh-theme` to `~/.oh-my-zsh/themes
To make git directory info show on your shell, copy `.lett/to-oh-my-zsh/functions/git.zsh` to `~/.oh-my-zsh/functions`
If you want imgcat to work, copy (using -R) `.lett/to-oh-my-zsh/plugins/*` to `~/.oh-my-zsh/plugins/`*
If you want zshell to highlight suff on your command line, use: 

```
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

I use the following VIM plugins, clone the ones you want


```
# better ACK inside VIM
git clone https://github.com/mileszs/ack.vim ~/.lett/.vim/bundle/ack.vim
# CTRL-P for completion
git clone https://github.com/kien/ctrlp.vim.git ~/.lett/.vim/bundle/ctrlp.vim
# Easy motion for a more "visual" search
git clone https://github.com/easymotion/vim-easymotion ~/.lett/.vim/bundle/vim-easymotion
# Scala highlight
git clone https://github.com/lenniboy/vim-scala ~/.lett/.vim/bundle/scala.vim
# JS highlight
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
# JSON highlight
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim.json
# rust highlight
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
```

If you want a pretty powerline on tmux, use:

```
pip install powerline-status
pip install psutil
```

And finally create the temp VIM dir so vim stop complaining about it:

```
mkdir ~/.lett/.vim/tmp
```
