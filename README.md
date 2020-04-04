# Doctriam Dotfiles
For myself, my dotfiles with an installer to automate symlinks in Manjaro
XFCE for bashrc, bash aliases, vimrc, and terminalrc (xfce4-terminal).
Installer also downloads and Awesome WM profile.  Also added an updateSDDM
script since those files have to be copied into the /etc and /usr folders.

### Update(4/4/2020):
Added SDDM installation and configuration.

## Installation
Install GIT.  In Manjaro XFCE:
```
sudo pacman -S git --noconfirm
```
Download and install
```
git clone https://github.com/doctriam/dotfiles ~/dotfiles
~/dotfiles/install
```

## Update Dotfiles
Updating these files requires copying into root folders.  I've simplified this
by adding an update script.  Run the following.
```
cd ~/dotfiles
git pull
./updateSDDM
```

