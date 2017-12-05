export GOPATH=~/Environments/go
PATH=$PATH:/usr/local/sbin:$(go env GOPATH)/bin

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n\W\[\033[36m\]\$(parse_git_branch) \[\033[00m\]λ "

eval "$(jump shell)"

function title {
    echo -ne "\033]0;"$*"\007"
}

itermocil --list

