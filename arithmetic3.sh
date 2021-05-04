#! /bin/bash
read -p "Enter number1 " num1
read -p "Enter number1 " num2
read -p "Enter number1 " num3
operation1=$((num1+num2*num3))
operation2=$((num1*num2+num3))
echo $operation1
echo $operation2
