export PS1='[\W]\$ '
PS1='[\W]\$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -lGFh'
alias g='git'

function better_cd {
  cd $1 && ls 
}

alias cd=better_cd

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

export GIT_PROMPT_THEME=Single_line_Dark

test -f ~/.git-completion.bash && . $_

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
fi
