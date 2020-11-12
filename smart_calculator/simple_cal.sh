#!bin/bash

sum() {
	local a=$1;	local b=$2
	echo $(($a+$b))
}


subtraction () {
	local a=$1; local b=$2
	echo $(($a-$b))
}

multiplication () {
	local a=$1; local b=$2
	echo $(($a*$b))
}

division () {
	local a=$1; local b=$2
	echo $(($a/$b))
}

echo "Hello, it is a simple calculator."
echo "Please, enter first number:"
read num1
echo "Enter second numeber"
read num2
echo "Enter what you want to do:"
echo "(\"p\" plus, \"m\" minus, \"*\" ymnozhit, \"/\" delit):"
read act

if [[ "$act" = 'p' ]]; then
	result=$(sum num1 num2)	
elif [[ "$act" = 'm' ]]; then
	result=$(subtraction num1 num2)
elif [[ "$act" = 'y' ]]; then
	result=$(multiplication num1 num2)
elif [[ "$act" = 'd' ]]; then
	result=$(division num1 num2)
else
	result="Wrong input!"
fi

echo $result