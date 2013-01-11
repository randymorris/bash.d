export HISTFILE=~/.history/bash
export HISTIGNORE="&:[bf]g:exit:reset"
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000
export HISTFILESIZE=2000

export EDITOR="emacsclient -c -a ''"

if [[ -x /usr/bin/src-hilite-lesspipe.sh ]]; then
    export LESSOPEN="|/usr/bin/src-hilite-lesspipe.sh %s"
fi
export LESS="-RFX"
export LESSHISTFILE=~/.history/less

export PATH=~/bin/:$PATH
