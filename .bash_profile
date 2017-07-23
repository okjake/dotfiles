export GOPATH=~/Environments/go
PATH=$PATH:/usr/local/sbin:$(go env GOPATH)/bin

export PS1="\nλ "

eval "$(jump shell)"

function title {
    echo -ne "\033]0;"$*"\007"
}

itermocil --list

