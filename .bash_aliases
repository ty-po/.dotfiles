###Standard###
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -CF'

alias cd..='cd ..'
alias cd.='cd ..'
alias vi='vim'

alias less='less -R'

alias untar='tar -zxvf'

alias df='df -h'
alias du='du -h'

# Mosh Alias
alias msh='mosh' #(like ssh)

# Git Aliases
alias gits='git status'
alias gitca='git commit -a'

# Tmux Aliases
alias tmux="TERM=screen-256color-bce tmux" #new
alias tm='tmux list-sessions'     #list
alias tmr='tmux attach -d'        #resume (and detach)
alias tma='tmux attach -t'        #attach
alias tmk='tmux kill-session -t'  #kill
alias tmka='tmux kill-session'    #kill all

alias g="grep -rnw '.' -e" 

alias weather="wget -qO - http://wttr.in/New%20York,%20United%20States | head -n27 |tail -n26"

alias c="gcalcli"
alias gcal="c calw -w 16"

alias gg="googler"
###Instance Specific###
