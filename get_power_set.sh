#!/bin/bash

is_array()
{   #detect if arg is an array, returns 0 on sucess, 1 otherwise
    [ -z "$1" ] && return 1
    if [ -n "$BASH" ]; then
        declare -p ${1} 2> /dev/null | grep 'declare \-a' >/dev/null && return 0
    fi
    return 1
}

getElements()
{
        echo -e "[${1}], \c" 
}

menge=${@}
echo -e "[ \c"
for x in $menge; do
    getElements $x
done
echo -e "[] ] \c"