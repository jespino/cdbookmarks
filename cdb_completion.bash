_cdb () {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "`cdbookmarks --list`" -- ${cur}) )
}
complete -o default -o nospace -F _cdb cdb
