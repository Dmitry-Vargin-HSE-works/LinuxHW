#!bin/bash

#import
source ./algorithm.sh

numbers=(ноль один два три четыре пять шесть семь восемь девять)

whatIsIt () {
	local s=$1
	local max_er=$2
	for i in 0 1 2 3 4 5 6 7 8 9; do
		if [[ $(algorithm $s ${numbers[$i]}) -le $max_er ]]; then
			echo $i
			return
		fi
	done
	echo "ОШИБКА: такого числа нет"
}

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
	if [[ $b = 0 ]]; then
		echo "ОШИБКА: деление на 0"
		return
	else
		echo $(($a/$b))
	fi
}