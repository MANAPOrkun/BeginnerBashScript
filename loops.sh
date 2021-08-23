#! /bin/bash

numb=1

# -le -> less than or equal to, -ge -> greater than or equal to
while [ $number -lt 10 ]
do
    echo "$numb"
    numb=$(( numb+1 ))
done

# until basically means !while
until [ $number -ge 10 ]
do
    echo "$numb"
    numb=$(( numb+1 ))
done

for i in 1 2 3 4 5
do
    echo $i
done

# starting point..ending point..increment
for i in {0..20..2}
do
    echo $i
done

for (( i=0; i<5; i++ ))
do
    echo $i
done