_subs_tool_complete()
{
    local current previous options
    current=${COMP_WORDS[COMP_CWORD]}
    previous=${COMP_WORDS[COMP_CWORD-1]}
    options='-h --help -i --input -d --dir -R --recursive -A --audio -s --subs -N --no-mouse -v --version -q --quiet -V --very-verbose'

    case "$previous" in
        -i|--input)
            compopt -o filenames
            mapfile -t COMPREPLY < <(compgen -f -- "$current")
            ;;
        -d|--dir)
            compopt -o filenames
            mapfile -t COMPREPLY < <(compgen -d -- "$current")
            ;;
        *)
            if [[ -z $current || $current == -* ]]; then
                mapfile -t COMPREPLY < <(compgen -W "$options" -- "$current")
            else
                compopt -o filenames
                mapfile -t COMPREPLY < <(compgen -f -- "$current")
            fi
            ;;
    esac
}

complete -F _subs_tool_complete ,subs_tool
