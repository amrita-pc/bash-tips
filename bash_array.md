# BASH ARRAYS

## Populating bash array 

```script

##########
METHOD 1#
##########

- Create empty array with arrayname=()
- Iterate through elements using for loop, and add the value of each element ("$x") to the array

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

- Directly assign output of bash command to array
- Syntax: arrayname=( $(command to execute) )

PCI_IDS=($(lspci -Dm | awk '/I350/{print $1}'))
echo ${PCI_IDS[@]}
```

# Auto-indent functions by adding declare -f

```script
#!/bin/bash
my_function () {
echo "some result"
return 55
}

declare -f my_function

$ ./testfunction.sh
my_function ()
{
    echo "some result";
    return 55
}
```


