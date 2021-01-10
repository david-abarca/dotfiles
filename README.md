# dotfiles
Instead of having to reconfigure some application settings manually I use dotfiles in combination with the app stow.

For eg. zsh, htop, tmux, vimrc can all be configured automatically every time you setup a new host or restore your computer, lets say you buy a new mac.
## Instructions
1. Clone the repo to your home directory.
```
cd ~
git clone git@github.com:david-abarca/dotfiles.git
```
2. Once cloned, use stow to create sym links to the folders. This assumes you have the final configuration in the dotfiles already.
```
cd dotfiles
stow --verbose tmux vimrc zsh
```
3. You should now have sym links pointing to the files in the dotfiles structure.
