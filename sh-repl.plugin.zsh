if [[ -o zle ]]; then

__get_query() {
    eval "$LBUFFER" | sh-repl
    return $?
}

sh-complete() {
    local query="$(__get_query)"
    local ret=$?
    if [ -n "$query" ]; then
        LBUFFER="${LBUFFER} | $query"
    fi
    zle reset-prompt
    return $ret
}

zle -N sh-complete
# bind `alt + v` to jq-complete
bindkey '\ev' sh-complete
fi

export PATH=$PATH:${0:A:h}/bin
