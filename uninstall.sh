unlink ~/.vim
unlink ~/.vimrc

rm -rf ~/.oh-my-zsh
rm -rf ~/.lett

# We keep the backup as a backup lol
cp -R ~/init_files_before_dotlett/* ~/

echo "Not uninstalling brew packages, nvm or pip stuff as you might have installed some of those before, if you want, delete them manually, check the install script for a list of packages."
