#Connecting the Dot(file)s With Git

##Learning Objectives
- Describe the importance of 'dotfiles'
- Describe the strategies of backing up and versioning our configurations
- Show examples starter examples
- Describe resources to set up more sophisticated configurations

##What are dotfiles?
- In unix based OS's, files that start a '.' are used to store settings or configurations
- These files are generally hidden from normal views
- Examples: .bash_profile, .gitignore, .zshrc, .vimrc

##Why are they important?
- These files keep configurations for certain applications
- Examples: path directories, important aliases, shortcut keys, themes, etc
- Like in Rails, keeping these settings consistent allows consistent behavior accross different enviroments
- How much downtime do you expect if you needed to reinstall your OS? replace your laptop? get a new laptop for work?

##Strategies for Backing up
####Make copies on external drives
- Unlimited privacy and space
- No additional software needed (outside of backup software)
- How do you keep track of your changes to enviroments?
- Maintaining and keeping track of physical media is not convinient

####Cloud Storage options: Google Drive, Dropbox, iCloud... etc
- Data automatically sync and backups are created
- Great for private and large files.
- Does not promote the open source style of information sharing.
- Requires propietary clients

####Version Control: GitHub
- Allows user to track changes using the power of Git
- Users in the community share their dotfiles which allows for collaboration and sharing of best practices
- Gives visitors a sense of personality (Favorite OS, text editors, scripts, program languages)
- Built into the command line, great for scripting and automatation.


##Git ini... not so fast!
- Dotfiles are spread out, how do you keep track of all them?  dont git init your home directory

####Specify a source file in bash profile
`source ~/dotfiles/scripts/alias`
- Using the source command, you can load external files into your terminal session
- This requires the user to keep track of their changes in the correct files (Good habbit, seperation of concerns)
- This does not get automatically added to new enviroments and installations
  - bootstrap scripts will add these to your default bash_profile


####Create Symlinks

- Symlinks are shortcuts to the actual file.
- Using the below example, any changes done to SublimeText packages are propogated to the dotfiles directory instead
- Changes are automatically backed up to Git or the 'cloud'
- Careful of private data, space constraints. (consider dropbox over git)

```
# Make your backup Folder.
mkdir ~/dotfiles/ST3/
cd ~/Library/Application\ Support/Sublime\ Text\ 3/

# Move the files.
mv Packages/ ~/dotfiles/ST3/
mv Installed\ Packages/ ~/dotfiles/ST3/

# Make symlinks
ln -s ~/dotfiles/ST3/Packages/ Packages
ln -s ~/dotfiles/ST3/Installed\ Packages Installed\ Packages
```

- Mackup is a utilility that automates this process: https://github.com/lra/mackup

##Setup Scripts
- Use shell scripts to automate the process of setting up your enviroment

#### Brew install
- Homebrew is the 'gem install' or 'NPM Install' for mac osx applications
- `brew install node`
- `brew install postgresql`
- `brew install mongo`

#### OSX defaults write
- Use the 'defaults write' commands in scripts to edit system settings.
```
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
```

- This can change anything from dock settings to screenshot locations to keyboard settings.
- These commands are powerful, be careful copying commands form the internet

##Resources Around the Web
####Google dotfiles
- Users generally post their dotfiles on GitHub
- People love to show off, so there is most likely a blog post associated with their set up instructions
- Everyone has their own style and methods, use the power of open source to share and learn new techniques

#### OS X for hackers script
- https://gist.github.com/brandonb927/3195465
- This is a great script for preconfiguring OS X.  It prompts every settings change.  Study this script and make your own.

#### Thoughtbot Repos:
- Thoughtbot https://github.com/thoughtbot/laptop
- https://github.com/thoughtbot/dotfiles

#### Great Resources
- https://github.com/mathiasbynens/dotfiles
- Awesome: https://github.com/sindresorhus/awesome
- This is a big list of EVERYTHING, can be overwhelming. Focus on an area of interest.
- Awesome Dotfiles: https://github.com/webpro/awesome-dotfiles
- Awesome Dev Env: https://github.com/jondot/awesome-devenv

