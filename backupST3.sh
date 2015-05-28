# Make your backup Folder.
mkdir ~/dotfiles/ST3/
cd ~/Library/Application\ Support/Sublime\ Text\ 3/

# Move the files.
mv Packages/ ~/dotfiles/ST3/
mv Installed\ Packages/ ~/dotfiles/ST3/

# Make symlinks
ln -s ~/dotfiles/ST3/Packages/ Packages
ln -s ~/dotfiles/ST3/Installed\ Packages Installed\ Packages
