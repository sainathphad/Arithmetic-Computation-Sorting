#! /bin/bash
declare -A dictionary
read -p "Enter number1 " num1
read -p "Enter number2 " num2
read -p "Enter number3 " num3
operation1=$((num1+num2*num3))
operation2=$((num1*num2+num3))
operation3=$((num3+(num1/num2)))
operation4=$((num1%num2+num3))
echo $operation1
echo $operation2
echo $operation3
echo $operation4
dictionary=(["opn1"]="$operation1" ["opn2"]="$operation2" ["opn3"]="$operation3" ["opn4"]="$operation4")
echo "dictionary keys " ${!dictionary[@]}
echo "dictionary values " ${dictionary[@]}
declare -a array
array=${dictionary[@]}
echo "array values " ${array[@]}
