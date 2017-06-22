curl -L http://install.ohmyz.sh | sh

git clone https://github.com/gabriellett/.lett ~/.lett

mv ~/.zshrc ~/.zshrc_bkp

ln -s ~/.lett/.vim ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.lett/.zshrc ~/.zshrc
ln -s ~/.lett/.tmux.conf ~/.tmux.conf

cp ~/.lett/to-oh-my-zsh/themes/ys_powerline.zsh-theme ~/.oh-my-zsh/themes
cp ~/.lett/to-oh-my-zsh/functions/git.zsh ~/.oh-my-zsh/functions
cp -R ~/.lett/to-oh-my-zsh/plugins/* ~/.oh-my-zsh/plugins/

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

#vim stuff: 
git clone https://github.com/mileszs/ack.vim ~/.lett/.vim/bundle/ack.vim
git clone https://github.com/kien/ctrlp.vim.git ~/.lett/.vim/bundle/ctrlp.vim
git clone https://github.com/easymotion/vim-easymotion ~/.lett/.vim/bundle/vim-easymotion
git clone https://github.com/lenniboy/vim-scala ~/.lett/.vim/bundle/scala.vim
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim.json
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim

#Powerline for TMUX
pip install powerline-status
pip install psutil

mkdir ~/.lett/.vim/tmp
