alias rs="source ~/.bash_profile"
alias ll="ls -l"
alias g="git"
alias pp="ps auxwww | grep play"
alias forcekill="kill -9"

function parse_git_branch {
  ref=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

function base_dir_name {
  echo $(basename "$PWD")
}

WHITE="\[\e[1;37m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
RESET="\[\033[0;00m\]"

PS1="$RED\$(date +%H:%M) \$(base_dir_name) $WHITE \$(parse_git_branch)$GREEN \$ $RESET"