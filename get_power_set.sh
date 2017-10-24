#!/bin/bash
# Interpreting each subset as a binary number, for an n element set you count from 0 to 2^n-1
menge=(${@})
n=${#menge[@]}
potenzgroesse=$((1 << $n))
i=0

echo -e "{\c"
# Looping through each subset
while [ $i -lt $potenzgroesse ]
do
    teilmenge=()
    j=0
    while [ $j -lt $n ]
    do
        if [ $((( 1 << $j) & $i)) -gt 0 ]
        then
            teilmenge+=("${menge[$j]}")
        fi
        j=$(($j + 1))
    done

    if [ $(($i + 1)) -lt $potenzgroesse ]
    then
        echo -e "{${teilmenge[@]}},\c"
    else
        echo -e "{${teilmenge[@]}}\c"
    fi

    i=$(($i + 1))
done
echo -e "}"