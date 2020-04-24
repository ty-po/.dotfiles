[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{black}% %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{yellow}%n%F{grey}% @%F{yellow}% %m %F{grey}% ${PWD/#$HOME/~} $ '
RPROMPT=\$vcs_info_msg_0_
