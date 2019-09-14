# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Do not put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Append to the history file, do not overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Setting history length and history filesize
HISTSIZE=1000
HISTFILESIZE=2000

eval "$(dircolors ~/.dircolors)"
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Set default editor
export EDITOR=nvim
export VISUAL=nvim

# Added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# Added bash aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Python Path
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

# Single git patch function
function spatch(){
    [ -d .git ] || return
    while IFS=';' read -r name mail
    do
        git spatch "$mail" $1 $2
    done <~/name_email.txt
}

# Multiple git patch function
function mpatch(){
    [ -d .git ] || return
    while IFS=';' read -r name mail
    do
        git mpatch "$mail" $1 $2
    done <~/name_email.txt
}

# Finish function
function finish(){
    [ -d .git ] && git config --local --remove-section user
}

# Run when the terminal exits
trap finish EXIT
