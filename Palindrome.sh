#!/bin/sh
echo "\nEnter the string : "
read str1


flag=1

while [ $flag -ne 2 ]
do

	echo "Please enter your choice : \n1.Display the lenght of the string \n2.Display the reverse string \n3.Display whether the string is palindrome"
	read choice 


	case $choice in

	1) len=${#str1}
	   echo $len
	   ;;
	   
	2) len=${#str1}
	   i=$len
	   while  [ $i -ge 1 ] 
	   do 
		char=`echo $str1 | cut -c $i`
		revstr2=$revstr2$char
		i=`expr $i - 1`
	   done
	   echo $revstr2
		;;
		
	3) len=${#str1}
	   while  [ $len -ge 1 ] 
	   do 
		char=`echo $str1 | cut -c $len`
		str2=$str2$char
		len=`expr $len - 1`
	   done
	   if [ $str1 = $str2 ]
	  then
		result="Palindrome"
	  else
		result="Not Palindrome"
	  fi
	   echo $result
		;;
		
	*) echo "Wrong choice"
	esac
	
	echo "do you want to continue : 1.Yes 2.No "
	read flag
done
