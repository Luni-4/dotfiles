# Some more ls aliases
alias ls='ls --color=auto'
alias la='ls -al'

# Grep alias
alias grep='grep --color=auto'

# Nvim aliases
alias vim='nvim'
alias nvim-update='nvim -u ~/.config/nvim/plugins.vim +PlugInstall +PlugUpdate \
                   +UpdateRemotePlugins +qa'

# Update and upgrade aliases
alias cl='sudo apt clean &&
          sudo apt autoclean &&
          sudo rm -rf /var/lib/apt/lists/*'
alias i='sudo apt install'
alias re='sudo apt remove --autoremove'
alias ud='sudo apt update && sudo apt dist-upgrade'
alias ui='sudo apt update && sudo apt install'

# Git aliases
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gbd='git branch -D'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master'
alias gcp='git cherry-pick'
alias gc='git commit'
alias gh='git hist'
alias gpul='git pull'
alias gpu='git push'
alias gpuf='git push -f'
alias gpro='git prune origin'
alias gprr='git prune remote'
alias grb='git rebase -i'
alias grb2='git rebase -i HEAD~2'
alias gr='git reset'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gst='git stash'
alias gstp='git stash pop'
alias gs='git status'

# Tmux aliases
alias dev='~/scripts/dev-tmux'
alias vlc-dev='~/scripts/vlc-tmux ~/vlc vlc'
alias vlmc-dev='~/scripts/vlc-tmux ~/vlmc vlmc'

# Vlc git-patch aliases
alias vlc-spatch='git spatch vlc-devel@videolan.org'
alias vlc-mpatch='git mpatch vlc-devel@videolan.org'

# Python aliases
alias python='python3.7'
alias pyvenv-create='~/scripts/python-venv-create'
alias pyvenv='~/scripts/python-venv'

# 0x0 alias
alias 0x0='~/scripts/0x0'
