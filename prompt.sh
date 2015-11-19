export PS1='\w $ '

source /etc/bash_completion 2> /dev/null
source /usr/local/etc/bash_completion 2> /dev/null

if $(type -t __git_ps1 > /dev/null); then
    export GIT_PS1_SHOWDIRTYSTATE=yes
    export PS1='$(__git_ps1 "[%s]") \w $ '
fi

