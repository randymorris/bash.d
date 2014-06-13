shopt -s extglob

for f in aliases prompt environment functions; do
    [[ -r ~/.bash.d/$f.sh ]] && . ~/.bash.d/$f.sh
done

[[ -f "~/.bash.d/local-environment.sh" ]] && . ~/.bash.d/local-environment.sh
