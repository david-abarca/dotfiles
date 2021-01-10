# ---------- ZSH General

# Autoload the ZSH completion to avoid autocomplete errors
autoload -U +X compinit && compinit

# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

# Fix issue with pasting text into terminal is slow
# DISABLE_MAGIC_FUNCTIONS=true

# Disable terminal tab auto title
DISABLE_AUTO_TITLE="true"

# ---------- ZSH Plugins

plugins=(
  colored-man-pages
  colorize
  docker
  docker-compose
  git
  kubectl
  kubetail
  poetry
  systemd
  terraform
  tig
  vagrant
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

# zsh autosuggestions
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax hilight
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Terraform
complete -o nospace -C /usr/local/bin/terraform terraform

# ---------- Aliases
source $HOME/.aliases

# ---------- ZSH Spaceship Theme Settings

ZSH_THEME="spaceship"

source "$ZSH/custom/themes/spaceship.zsh-theme"

# other
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=false

# ORDER
SPACESHIP_PROMPT_ORDER=(
  time        # Time stamps section
  vi_mode     # Prompted before
  user        # Username section
  host        # Hostname section
  char        # Prompt character
  exit_code   # Exit code section
  dir         # Current directory section
  git
  node
  docker
  aws
  pyenv
  kubectl
  terraform
)

# Info about Spaceship prompt
# https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md

# time
SPACESHIP_TIME_SHOW=false
SPACESHIP_TIME_COLOR=yellow

# vi_mode
SPACESHIP_VI_MODE_SHOW=true

# user
SPACESHIP_USER_SHOW=false
SPACESHIP_USER_COLOR=yellow
SPACESHIP_USER_COLOR_ROOT=red

# exit_code
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_PREFIX=''
SPACESHIP_EXIT_CODE_SUFFIX=' '
SPACESHIP_EXIT_CODE_SYMBOL=✘
SPACESHIP_EXIT_CODE_COLOR=red

# host
SPACESHIP_HOST_SHOW=false
SPACESHIP_HOST_PREFIX=''
SPACESHIP_HOST_SUFFIX=' '
SPACESHIP_HOST_COLOR=blue
SPACESHIP_HOST_COLOR_SSH=green

# dir
SPACESHIP_DIR_PREFIX=''
SPACESHIP_DIR_TRUNC='1' # show only last directoryexport PYENV_ROOT="$HOME/.pyenv"

# include .bashrc if it exists
if [ -f $HOME/.zshrc_private ]; then
    . $HOME/.zshrc_private
fi
