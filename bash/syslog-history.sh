# History to syslog
PROMPT_COMMAND='AT_PROMPT=t'
function log2syslog
{
    [ -z "${AT_PROMPT+set}" ] && return 1
    COMMAND=$(fc -ln -0|cut -f 2-)
    if [ -n "${BASH_COMMAND}" ] && [ "${BASH_COMMAND}" != "AT_PROMPT=t" ] && [ "${BASH_COMMAND}" != '[ "$SHLVL" = 1 ]' ]; then
        if [ "${USER}" != "$(logname)" ]; then
            LOGUSER="$(logname)@${USER}"
        fi
        logger -p local4.notice -t bash -i -- "${LOGUSER:-$USER}: ${PWD} : ${COMMAND}"
    fi
    unset AT_PROMPT
} 
trap log2syslog DEBUG

