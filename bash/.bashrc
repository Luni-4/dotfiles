# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start tmux when a new shell is launched
#[[ -z "$TMUX" ]] && exec tmux

# Do not put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Append to the history file, do not overwrite it
shopt -s histappend

# Setting history length and history filesize
HISTSIZE=1000
HISTFILESIZE=2000

eval "$(dircolors ~/.dircolors)"
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Some more ls aliases
alias ls='ls --color=auto'
alias la='ls -al'

# Grep alias
alias grep='grep --color=auto'

# Python aliases and paths
alias python=python3.7
export PYTHONPATH=/usr/local/lib/python3.7/site-packages

# Some paths
PATHS=/usr/local/cuda-9.0/bin:/usr/local/lib:~/Documenti/mxe/usr/bin
export PATH=$PATHS:$PATH
export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Pkg-config path
PKG_CONFIG=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG

# Vulkan Lunar-G
export VULKAN_SDK=~/vulkan/1.1.108.0/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/vulkan/explicit_layer.d

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Create python virtual environment
function create-venv() {
  mkdir ~/$1
  cd ~/$1
  virtualenv --system-site-packages -p python3 venv
}

# Activate python virtual environment
function active-venv(){
  source ~/$1/venv/bin/activate
}

# 0x0 function
function 0x0(){
    curl -F'file=@'$1 https://0x0.st
}

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
