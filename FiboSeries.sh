#!/bin/sh
echo "\nEnter the lenght for the series"
read num
a=0
b=1
echo $a
echo $b
i=1

while [ $i -le $num ]
do
	c=`expr $a + $b`
	echo $c
	a=$b
	b=$c
	i=`expr $i + 1`
done
