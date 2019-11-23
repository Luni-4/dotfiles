# Some more ls aliases
alias ls='ls --color=auto'
alias la='ls -al'

# Grep alias
alias grep='grep --color=auto'

# Vim alias
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
alias job='~/scripts/job-tmux ~/vlc job'

# Python alias
alias python='python3.7'
