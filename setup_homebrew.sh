xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

binaries=(
  python
  node
  tree
  git
)

echo "installing binaries..."
brew install ${binaries[@]}


#set up github stuff
git config --global user.name  "theeltahir"
git config --global user.email "theeltahir@eltahir.eltahir"
git config --global color.ui always
git config --global color.branch.current   "green reverse"
git config --global color.branch.local     green
git config --global color.branch.remote    yellow
git config --global color.status.added     green
git config --global color.status.changed   yellow
git config --global color.status.untracked red
git config --global core.editor "subl --wait --new-window"
