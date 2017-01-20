# Prompt
if [ $(id -u) -eq 0 ]; then
    export PS1="[\[\e[31m\]\t\[\e[m\]] \u@\[\e[36m\]\h\[\e[m\]:\w \[\e[31m\]\\$\[\e[m\] "
else
    export PS1="[\[\e[32m\]\t\[\e[m\]] \u@\[\e[36m\]\h\[\e[m\]:\w \[\e[32m\]\\$\[\e[m\] "
fi

