# spelling suggestions from google
# usage: sp somehting
sp () {
    curl -sd "<spellrequest><text>$@</text></spellrequest>" https://www.google.com/tbproxy/spell | \
    sed -n '/s="[0-9]"/{s/<[^>]*>/ /g; s/\t/ /g; s/ *\(.*\)/suggestions: \1\n/g; p}' | \
    tee >(grep -Eq '.*' || echo -e "OK")
}

# show permissions at every level of a given path
shop () {
    namei -lmv "$(readlink -f "$1")"
}
