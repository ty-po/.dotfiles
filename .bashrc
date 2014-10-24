# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -CF'

alias cd..='cd ..'
alias cd.='cd ..'

export PS1="\[\e]0;\w\a\]\n\[\e[36m\]\u@\h \[\e[1;30m\]\w\[\e[0m\]\n\$"


#  systemy things ...
alias hgrep='grep \!* /etc/hosts | more'
alias psgrep='ps -eaf | grep \!* | grep -v grep'

alias vi='vim'

#Git Aliases
alias gits='git status'
alias gitca="git commit -a"

# add to path
export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/etc"
export MANPATH="$MANPATH:/usr/local/man"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
                                 
