## Shell arithmetic 

```

## Variable a has the value of 9
$ echo $a
9

## The following example will literally print "9" - 1, instead of evaluating the arithmetic expression
$ echo $a - 1
9 - 1

## In order to evaluate the expression, use ```$(( expression_to_evaluate ))``` syntax
$ echo $(( $a - 1 ))
8
```
