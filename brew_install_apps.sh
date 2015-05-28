brew update
brew upgrade

brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions


brew install mackup
# ==== cask ====
brew install brew-cask


# ================================================================
# casks
# ================================================================

brew cask update

apps=(
  atom
  google-chrome
  slack
  appcleaner
  firefox
  spotify
  iterm2
  sublime-text3
  virtualbox
  flux
  mpv
  vlc
  cloudup
  transmission
  chromium
  firefox-aurora
  flashlight
  airmail-beta
  bettertouchtool
  f-lux
  iterm2
  the-unarchiver
  logitech-control-center
  gfxcardstatus
)
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

fonts=(
  font-anonymous-pro
  font-m-plus
  font-clear-sans
  font-roboto
  font-anonymous-pro-for-powerline
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# install fonts'
echo "installing quicklook plugins.."
brew cask install qlprettypatch qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r

# ================================================================
# casks cleanup
# ================================================================


brew cask cleanup
