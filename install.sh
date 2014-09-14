curl -L http://install.ohmyz.sh | sh

git clone https://github.com/gabriellett/.lett ~/.lett

mv ~/.zshrc ~/.zshrc_bkp

ln -s ~/.lett/.vim ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.lett/.zshrc ~/.zshrc

cp ~/.lett/to-oh-my-zsh/themes/ys_powerline.zsh-theme ~/.oh-my-zsh/themes
cp ~/.lett/to-oh-my-zsh/functions/git.zsh ~/.oh-my-zsh/functions

mkdir ~/.lett/.vim/tmp
