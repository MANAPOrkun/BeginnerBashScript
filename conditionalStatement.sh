#! /bin/bash

count=10

# ne -> not equal, gt -> greater than

if [ $count -eq 10 ]
then
    echo "It's equal to 10"
else
    echo "It's not equal to 10"
fi

if (( $count > 9 ))
then
    echo "It's greater than 9"
elif (( $count > 8 ))
then
    echo "It's greater than 8"
else
    echo "It's not greater than 8"
fi

age=12

if [ "$age" -gt 18 ] && [ "$age" -lt 40 ] then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

if [[ "$age" -gt 18  &&  "$age" -lt 40 ]] then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

# -a -> and, -o -> or

if [ "$age" -gt 18 -a "$age" -lt 40 ] then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

# CASE https://linuxize.com/post/bash-case-statement/

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac