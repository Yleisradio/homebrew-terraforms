function _chtf() {
    local cur=${COMP_WORDS[COMP_CWORD]}

    if [[ "$COMP_CWORD" -eq 1 ]]; then
        local completions

        if [[ ${cur} == -* ]] ; then
            completions="-h --help -V --version"
        else
            completions="$(chtf | tr -d ' *') system"
        fi

        COMPREPLY=( $(compgen -W "$completions" -- "$cur") )
    fi
}

complete -F _chtf chtf
