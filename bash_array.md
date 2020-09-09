```script

############
BASH ARRAYS
############

1. Populating bash array

##########
METHOD 1#
##########

- create empty array with arrayname=()
- iterate through elements using for loop, and add the value of each element ("$x") to the array

#!/bin/bash

eno_arr=()
for eno in $(ls -ld /sys/class/net/eno* | awk -F/ '{print $NF}')
do
        eno_arr+=("$eno")
done

echo ${eno_arr[@]}

##########
METHOD 2#
##########

- directly assign output of bash command to array
- syntax: arrayname=( $(command to execute) )

PCI_IDS=($(lspci -Dm | awk '/I350/{print $1}'))
echo ${PCI_IDS[@]}
```


