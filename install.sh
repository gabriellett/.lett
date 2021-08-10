echo "Hello there! This script will install lett's environment on your machine"

if [ -d ~/init_files_before_dotlett ]; then
	echo "Backup directory already exists, please remove it or move it and run this install script again"
	exit 1
fi

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
brew install fzf ripgrep alacritty rectangle alfred kap tmux
brew install --cask spotify sip 

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

echo "Installing nvim..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install stable
nvm alias default stable

echo "Setting up vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/easymotion/vim-easymotion ~/.lett/.vim/bundle/vim-easymotion
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim.json
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.lett/.vim/tmp

echo "Vim setup done, running plug install..."
vim -c ':PlugInstall | quit | quit'
vim -c ':CocInstall coc-tsserver | quit | quit'
vim -c ':CocInstall coc-eslint | quit | quit'

echo "Setting up powerline for tmux"
pip3 install powerline-status
pip3 install psutil
echo "source '$(pip3 show powerline-status | grep Location | awk '{ print $2 }')/powerline/bindings/tmux/powerline.conf'" | cat - ~/.tmux.conf > ~/.tmux.conf.tmp && mv ~/.tmux.conf.tmp ~/.tmux.conf

echo "Installing fonts..."
curl -LJ "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf" -o ~/Library/Fonts/Sauce\ Code\ Pro\ Nerd\ Font\ Complete.ttf
