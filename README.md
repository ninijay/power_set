# power_set
(Different) Code files to generate the power set of a given set
## bash file
pass the set as single values. eg: {1, 2} --> 1 2

``` bash
get_power_set.sh 1 2 # produces {{}, {1}, {2}, {1,2}}
```

## haskell file
run it in interactive mode and use the function powerset as follows:

``` haskell
powerset [] -- produces [[]]
powerset [1, 2] -- produces [[], [1], [2], [1, 2]]
powerset(powerset([])) -- produces [[], [[]]]
```