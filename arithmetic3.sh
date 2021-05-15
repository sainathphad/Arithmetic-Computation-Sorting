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
dictionary=(["0"]="$operation1" ["1"]="$operation2" ["2"]="$operation3" ["3"]="$operation4")
echo "dictionary keys " ${!dictionary[@]}
echo "dictionary values " ${dictionary[@]}
declare -a array
for (( i=0; i<4; i++ ))
do
	array[i]=${dictionary[$i]}
done
echo "array values " ${array[@]}
function Array_InDescending_Order(){
	for (( i=0; i<4; i++ ))
	do
		for (( j=0; j<4-1-i; j++ ))
		do
			if [ ${array[j]} -lt ${array[$((j+1))]} ]
			then
				temp=${array[j]}
				array[j]=${array[$((j+1))]}
				array[j+1]=$temp
			fi
		done
	done
			echo ${array[@]}
}
result=$( Array_InDescending_Order ${array[@]} )
echo "Descending order is " $result

function Array_InAscending_Order(){
        for (( i=0; i<4; i++ ))
        do
                for (( j=0; j<4-1-i; j++ ))
                do
                        if [ ${array[j]} -gt ${array[$((j+1))]} ]
                        then
                                temp=${array[j]}
                                array[j]=${array[$((j+1))]}
                                array[j+1]=$temp
                        fi
                done
        done
                        echo ${array[@]}
}
result1=$( Array_InAscending_Order ${array[@]} )
echo "Ascending order is " $result1
