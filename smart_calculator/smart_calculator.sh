#!bin/bash

# max_errors=1

# import
source ./error_correction.sh
source ./operations.sh

clear

echo "Привет, это умный калькулятор, который может понять числа введенные с ошибкой."
echo "Пожалуйста, введите первое число:"
read num1; num1=$(whatIs $num1)
echo "Введите второе число:"
read num2; num2=$(whatIs $num2)
echo "Введите, какую операцию вы хотите применить:"
echo "(\"+\" плюс, \"-\" минус, \"*\" умножить, \"/\" разделить):"
read act

if [[ $"num1" = "-1" || "$num2" = "-1" ]]; then
	echo "Wrong input!"
	exit 1
fi

if [[ "$num2" = "0" && "${act:0:1}" = "/" ]]; then
	echo "0 division!"
	exit 2
fi

if [[ "${act:0:1}" = "+" ]]; then
	result=$(sum num1 num2)	
	act="плюс"
elif [[ "${act:0:1}" = "-" ]]; then
	result=$(subtraction num1 num2)
	act="минус"
elif [[ "${act:0:1}" = "*" ]]; then
	result=$(multiplication num1 num2)
	act="умножить на"
elif [[ "${act:0:1}" = "/" ]]; then
	result=$(division num1 num2)
	act="разделить на"
else
	echo "Wrong input!"
	exit 1
fi

echo "$num1 $act $num2 = $result"