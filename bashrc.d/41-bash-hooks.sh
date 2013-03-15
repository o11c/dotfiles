PROMPT_COMMAND='newline;START_OF_COMMAND=yep'
line_hook()
{
    echo \# $(date "+%F %T%:z (%s)"): $(jobs-info) > /dev/tty;
}
debug_hook() { true; }
trap -- 'test -n "$START_OF_COMMAND" && line_hook; unset START_OF_COMMAND; debug_hook' DEBUG
