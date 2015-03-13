# show permissions at every level of a given path
shop () {
    namei -lmv "$(readlink -f "$1")"
}

# `cd` with no arguments will first attempt to change to the root of
#  the current working copy.  If already at the root or no working
#  copy is found, cd to $HOME.
function cd() {
    if which wcroot &> /dev/null; then
        root=$(wcroot)
        if [ $# -ne 0 ]; then
            builtin cd "$1"
        elif [ -n "$root" -a "$PWD" != "$root" ]; then
            builtin cd "$root"
        else
            builtin cd
        fi
    else
        builtin cd $*
    fi
}
