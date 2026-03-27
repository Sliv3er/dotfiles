# ~/.bashrc - Ayoub Ghodhbane

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Window size
shopt -s checkwinsize

# Custom prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Source aliases
if [ -f ~/dotfiles/shell/aliases.sh ]; then
    . ~/dotfiles/shell/aliases.sh
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Go
export PATH=$PATH:/usr/local/go/bin

# Local bin
export PATH=$PATH:$HOME/.local/bin

echo "Welcome back, Ayoub! "