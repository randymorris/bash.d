export PS1='\w $'

if [ -f /usr/share/git/git-prompt.sh ]; then
    source /usr/share/git/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=yes
    export PS1='\w$(__git_ps1 " [%s]") $ '
fi
