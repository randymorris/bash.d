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
        canonical_wd=$(readlink -f "$PWD")
        if [ $# -ne 0 ]; then
            builtin cd "$1"
        elif [ -n "$root" -a "$canonical_wd" != "$root" ]; then
            # `wcroot` always returns the canonical path to the root
            # of the working copy.  We don't want to cd to the
            # canonical path if the current directory is a symlink.
            # Instead, stay with the symlink by extracting it from
            # $PWD.
            subdir="${canonical_wd#$root}"
            basedir="${PWD%$subdir}"
            builtin cd "$basedir"
        else
            builtin cd
        fi
    else
        builtin cd "$*"
    fi
}
