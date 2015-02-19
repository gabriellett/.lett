curl -L http://install.ohmyz.sh | sh

git clone https://github.com/gabriellett/.lett ~/.lett

mv ~/.zshrc ~/.zshrc_bkp

ln -s ~/.lett/.vim ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.lett/.zshrc ~/.zshrc

cp ~/.lett/to-oh-my-zsh/themes/ys_powerline.zsh-theme ~/.oh-my-zsh/themes
cp ~/.lett/to-oh-my-zsh/functions/git.zsh ~/.oh-my-zsh/functions

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

#vim stuff: 
git clone https://github.com/mileszs/ack.vim ~/.lett/.vim/bundle/ack.vim
git clone https://github.com/kien/ctrlp.vim.git ~/.lett/.vim/bundle/ctrlp.vim

mkdir ~/.lett/.vim/tmp
