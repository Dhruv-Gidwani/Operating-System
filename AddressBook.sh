#!/bin/sh

flag=1;
count=1;
while [ $flag -ne 2 ]
do
	echo "Enter your choice :
	 \n1.Create Address Book
	 \n2.View Address Book
	 \n3.Insert a record
	 \n4.Delete a record
	 \n5.Modify a record
	 \n6.Exit."
	read choice
	case $choice in
	1) echo "Enter the file name"
	 read fname
	 touch $fname
	 ;;

	2) echo "*****ADDRESS BOOK*****"
	 cat $fname
	 ;;

	3) while [ $count -ne 2 ]
	   do
	       echo "Enter the record\neId eName eMobile eCity"
	       read eid ename emob ecity
		if [ ${#emob} -eq 10 ]
		        then
			  echo "$eid\t$ename\t$emob\t$ecity">>$fname

 		else
			 echo "Enter a valid record"
			 echo "Enter the record\neId eName eMobile eCity"
			 read eid ename emob ecity
			 echo "$eid\t$ename\t$emob\t$ecity">>$fname
 		fi

 	echo "Do you want to insert additional record ?\n1.Yes 2.No"
 	read count
 	done
 	;;

	4) echo "Enter the eId you want to delete"
	 read DeId
	 sed -i '/'$DeId'/d' $fname
	 echo "Record has been deleted successfully"
	 ;;

	5) echo "Enter The Employee Id where you want to make
	modification"
	 read empId
	 grep -i $empId $fname
	 number=`grep -n $empId $fname | cut -c 1-1`
	 echo "Enter the Old value you want to modify"
	 read Oldval
	 echo "Enter the New value"
	 read Newval
	 sed -i '$number s/'$Oldval'/'$Newval'/' $fname
	 ;;

	6) echo "*****Exited Successfully*****"
	 flag=2
	;;

	*) echo "Wrong choice"
	 ;;
	esac
	if [ $flag -eq 1 ]
	then
		echo "Do you want to continue : 1.Yes 2.No "
		read flag
	fi
done

