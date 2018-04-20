function __chtf_need_arg
    set -l num (count (__fish_print_cmd_args))
    test $num -eq 1
end

function __chtf_versions
    chtf | string trim -c ' *'
end

complete -c chtf -n '__chtf_need_arg' -x -s h -l help
complete -c chtf -n '__chtf_need_arg' -x -s V -l version

complete -c chtf -n '__chtf_need_arg' -x -a '(__chtf_versions)' -d 'Installed version'
complete -c chtf -n '__chtf_need_arg' -x -a 'system' -d 'Global version'

# Only complete one arg
complete -c chtf -n 'not __chtf_need_arg' -f
