echo "Hello there! This script will install lett's environment on your machine"

echo "Starting by backing up all your current files to ~/init_files_before_dotlett...."
mkdir ~/init_files_before_dotlett
mv ~/.zshrc ~/.vim ~/.vimrc ~/.alacritty.yml ~/.fzf.zsh ~/.tmux.conf ~/.oh-my-zsh ~/.lett ~/init_files_before_dotlett/
echo "Backup done!"

echo "(re)installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Checking wether brew is installed or not"
which -s brew
if [[ $? != 0 ]] ; then
	# Install Homebrew
	echo "brew is not installed, installing it..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "brew found, updating it..."
	brew update
fi

echo "Installing all tools from brew, this might take a while..."
brew install fzf ripgrep
brew install --cask spotify sip rectangle alfred kap alacritty

echo "Now we are ready to clone the dotfiles"
git clone https://github.com/gabriellett/.lett ~/.lett

echo "Linking all the files to your home"
ln -s ~/.lett/.vim ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.lett/.zshrc ~/.zshrc
ln -s ~/.lett/.tmux.conf ~/.tmux.conf
ln -s ~/.lett/.fzf.zsh ~/.fzf.zsh
ln -s ~/.lett/.alacritty.yml ~/.alacritty.yml

echo "Making sure themes are installed on oh-my-zsh..."
cp ~/.lett/to-oh-my-zsh/themes/ys_powerline.zsh-theme ~/.oh-my-zsh/themes
cp ~/.lett/to-oh-my-zsh/functions/git.zsh ~/.oh-my-zsh/functions
cp -R ~/.lett/to-oh-my-zsh/plugins/* ~/.oh-my-zsh/plugins/

echo "Installing some plugins on oh-my-zsh"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/jscutlery/nx-completion.git ~/.oh-my-zsh/custom/plugins/nx-completion

echo "Setting up vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/easymotion/vim-easymotion ~/.lett/.vim/bundle/vim-easymotion
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim.json
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.lett/.vim/tmp

echo "Installing nvim..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "Vim setup done, make sure you run :PlugInstall when you open it"

echo "Setting up powerline for tmux"
pip3 install powerline-status
pip3 install psutil
