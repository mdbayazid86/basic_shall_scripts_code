#!/bin/bash
check_prime() {
num=$1
if [ $num -le 1 ]
then
echo "$num is not a prime number "
return
fi

for (( i=2; i<=num/2; i++))
do
if (( num % i == 0 ))
then 
echo "$num not a prime number "
return
fi
done
echo "$num Prime number "
}


check_leap(){
y=$1
if [ $((y%400)) -eq 0 ] || [ $((y%4)) -eq 0 -a $((y%100)) -ne 0 ];
then
echo " $y Leap year"
else
echo " $y not a leap year "
fi
}


sum_series(){
n=$1
sum=0
for ((i=1;i<=n;i++));
do
sum=$((sum+i))
done
echo "Sum = $sum "
}

echo "Enter a number : "
read number

while true
do
echo ""
echo "1. Check prime "
echo "2. check leap year "
echo "3. Sum of series "
echo "4. Exit "
echo "Enter choice: "
read ch

case $ch in
1) check_prime $number ;;
2) check_leap $number ;;
3) sum_series $number ;;
4) exit ;; 
*) echo "invalid choice" ;;
esac
done