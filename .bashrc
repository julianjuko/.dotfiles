export PS1='[\W]\$ '
PS1='[\W]\$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export HISTSIZE=
export HISTFILESIZE=

alias ls='ls -lGFh'
alias g='git'
alias y='yarn'
alias h='history'

function better_cd {
  cd "$@" && ls
}

alias cd=better_cd

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  source $HOME/.bash-git-prompt/gitprompt.sh
fi

export GIT_PROMPT_THEME=Single_line_Dark

test -f ~/.git-completion.bash && . $_

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
fi
