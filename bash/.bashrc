#
# ~/.bashrc
#

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

# Add bash aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# System paths
export PATH=/usr/local/bin:$HOME/.local/bin:/usr/local/lib:$PATH

# Cargo path
export PATH=$HOME/.cargo/bin:$PATH

# Cuda path
export PATH=/usr/local/cuda-9.0/bin:$PATH

# Entry point for Depthai demo app, enables to run <depthai_launcher> in terminal
export PATH=$PATH:$HOME/Luxonis/depthai/entrypoint

# Mxe path
export PATH=$HOME/Documenti/mxe/usr/bin:$PATH

# Linker paths
export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Pkg-config paths
PKG_CONFIG=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG

# Python path
export PYTHONPATH=/usr/local/lib/python3.7/site-packages

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

# Finish function
function finish(){
    [ -d .git ] && git config --local --remove-section user
}

# Run when the terminal exits
trap finish EXIT

# Exec fish
exec fish

