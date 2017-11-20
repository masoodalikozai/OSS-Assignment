echo "Student name"
read sn


echo "Student ID:"
read sid


echo "Gender"
read gen


echo "Assignment Marks should not be more then 20"
read assignmarks


while [ $assignmarks -gt 20 ]
do 
echo "Please re-enter assignment marks less than 20"
read assignmarks
done

echo "Enter lab participation marks [10% as a max]"
read labmarks


while [ $labmarks -gt 10 ]
do 
echo "Please re-enter value smaller then 10"

read labmarks
done

echo "Enter the quiz marks please [10% as a max]"
read qmarks

while [ $qmarks -gt 10 ]
do
echo "Please enter Quiz value lesser than 10"
read qmarks
done

echo "Enter the mid term Marks [30% as a max]"
read midmarks


while [ $midmarks -gt 30 ]
do
echo "Please enter value smaller then 30"
read midmarks
done

echo "Enter the final marks [30% as a max]"
read fmarks


while [ $fmarks -gt 30 ]
do
echo "Please enter value smaller then 30"
read fmarks
done

echo " Marks Obtained"

total=`expr $assignmarks + $labmarks + $qmarks + $midmarks + $fmarks`
echo $total
if [ $total -gt 90 ] && [ $total -lt 100 ]
then


fi
if [ $total -eq 90 ] 
then
echo "Grade = A-"
fi
if [ $total -gt 80 ] && [ $total -lt 90 ]
then
echo "Grade = B"
fi
if [ $total -eq 80 ]
then
echo "Grade = B-"
fi
if [ $total -gt 70 ] && [ $total -lt 80 ]
then
echo "Grade = C"
fi
if [ $total -eq 70 ]
then
echo "Grade = C-"
fi
if [ $total -gt 60 ] && [ $total -lt 70 ]
then
echo "Grade = D"
fi
if [ $total -eq 60 ]
then
echo "Grade = D-"
fi
if [ $total -lt 60 ]
then
echo "Grade = F"	
fi

echo "$sn	|	$sid	|	$gen	|	$assignmarks	|	$labmarks	|	$qmarks	|	$midmarks	|	$fmarks	|	$total	|" >>OSSGRADES.txt

     
