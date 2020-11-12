#!bin/bash

max_errors=1

# import
# source ./error_correction.sh
source ./operations.sh
source ./algorithm.sh

clear

echo "Привет, это умный калькулятор, который может понять числа введенные с ошибкой."
echo "Пожалуйста, введите первое число:"
read num1; num1=$(whatIsIt $num1 $max_errors)
echo "Введите второе число:"
read num2; num2=$(whatIsIt $num2 $max_errors)
echo "Введите, какую операцию вы хотите применить:"
echo "(\"п\" плюс, \"м\" минус, \"у\" умножить, \"р\" разделить):"
read act

if [[ $act = "р" && $num2 = 0 ]]; then
	echo "ОШИБКА: деление на 0"
	exit 1
fi

if [[ "$act" = 'п' ]]; then
	result=$(sum num1 num2)	
	act="плюс"
elif [[ "$act" = 'м' ]]; then
	result=$(subtraction num1 num2)
	act="минус"
elif [[ "$act" = 'у' ]]; then
	result=$(multiplication num1 num2)
	act="умножить на"
elif [[ "$act" = 'р' ]]; then
	result=$(division num1 num2)
	act="разделить на"
else
	echo "Wrong input!"
	exit 1
fi

echo "$num1 $act $num2 = $result"