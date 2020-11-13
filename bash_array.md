# BASH ARRAYS

## Populating bash array

## Method 1:
- Create empty array with arrayname=()
- Iterate through elements using for loop, and add the value of each element ("$x") to the array

```script

## Initialize a blank array called eno_arr()

eno_arr=()
for eno in $(ls -ld /sys/class/net/eno* | awk -F/ '{print $NF}')
do
        eno_arr+=("$eno")
done

## Print all values in the array

echo ${eno_arr[@]}
```

- Use a while loop to read in lines in a file into array arr()

```
while read line
do
   arr+=( $line )
done < file.txt
```

## Method 2:
- Directly assign output of bash command to array
- Syntax: arrayname=( $(command to execute) )

```script
PCI_IDS=($(lspci -Dm | awk '/I350/{print $1}'))
echo ${PCI_IDS[@]}
```

# Auto-indent functions 

- Use ``` declare -f <function-name>``` to apply indentation to ``` function-name```
- If ```<function-name>``` is not specified, ``` declare -f``` will apply indentation to all functions in the script and print it.

```script
#!/bin/bash
my_function () {
echo "some result"
return 55
}

declare -f my_function
```

```script
$ ./testfunction.sh
my_function ()
{
    echo "some result";
    return 55
}
```



