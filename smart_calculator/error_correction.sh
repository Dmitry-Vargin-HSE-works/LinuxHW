#!bin/bash

numbers=(ноль один два три четыре пять шесть семь восемь девять)
#			4	4	3	3	6		4	5		4	6		6
# echo ${numbers[*]} 	- print all elements
# echo ${#numbers[*]} 	- print length

turnIntoInt(){
	local word=$1
	if [[ "$word" = "ноль" ]]; then
		echo 0
	elif [[ "$word" = "один" ]]; then
		echo 1
	elif [[ "$word" = "два" ]]; then
		echo 2
	elif [[ "$word" = "три" ]]; then
		echo 3
	elif [[ "$word" = "четыре" ]]; then
		echo 4
	elif [[ "$word" = "пять" ]]; then
		echo 5
	elif [[ "$word" = "шесть" ]]; then
		echo 6
	elif [[ "$word" = "семь" ]]; then
		echo 7
	elif [[ "$word" = "восемь" ]]; then
		echo 8
	elif [[ "$word" = "девять" ]]; then
		echo 9
	fi
}

isZero () {
	local word=$1
	local len=${#word}			#len=4
	if [[ $len != 4 ]]; then
		echo false
	else

		if [[ "${word:1:4}" = "${numbers[0]:1:4}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[0]:0:1}" && "${word:2:4}" = "${numbers[0]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[0]:0:2}" && "${word:3:4}" = "${numbers[0]:3:4}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[0]:0:3}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isOne () {
	local word=$1
	local len=${#word}			#len=4
	if [[ $len != 4 ]]; then
		echo false
	else

		if [[ "${word:1:4}" = "${numbers[1]:1:4}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[1]:0:1}" && "${word:2:4}" = "${numbers[1]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[1]:0:2}" && "${word:3:4}" = "${numbers[1]:3:4}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[1]:0:3}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isTwo () {
	local word=$1
	local len=${#word}			#len=3
	if [[ $len != 3 ]]; then
		echo false
	else

		if [[ "${word:1:3}" = "${numbers[2]:1:3}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[2]:0:1}" && "${word:2:3}" = "${numbers[2]:2:3}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[2]:0:2}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isThree () {
	local word=$1
	local len=${#word}			#len=3
	if [[ $len != 3 ]]; then
		echo false
	else

		if [[ "${word:1:3}" = "${numbers[3]:1:3}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[3]:0:1}" && "${word:2:3}" = "${numbers[3]:2:3}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[3]:0:2}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isFour () {
	local word=$1
	local len=${#word}			#len=6
	if [[ $len != 6 ]]; then
		echo false
	else

		if [[ "${word:1:6}" = "${numbers[4]:1:6}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[4]:0:1}" && "${word:2:6}" = "${numbers[4]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[4]:0:2}" && "${word:3:6}" = "${numbers[4]:3:6}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[4]:0:3}" && "${word:4:6}" = "${numbers[4]:4:6}" ]]; then
			echo true
		elif [[ "${word:0:4}" = "${numbers[4]:0:4}" && "${word:5:6}" = "${numbers[4]:5:6}" ]]; then
			echo true
		elif [[ "${word:0:5}" = "${numbers[4]:0:5}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isFive () {
	local word=$1
	local len=${#word}			#len=4
	if [[ $len != 4 ]]; then
		echo false
	else

		if [[ "${word:1:4}" = "${numbers[5]:1:4}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[5]:0:1}" && "${word:2:4}" = "${numbers[5]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[5]:0:2}" && "${word:3:4}" = "${numbers[5]:3:4}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[5]:0:3}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isSix () {
	local word=$1
	local len=${#word}			#len=5
	if [[ $len != 5 ]]; then
		echo false
	else

		if [[ "${word:1:5}" = "${numbers[6]:1:5}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[6]:0:1}" && "${word:2:5}" = "${numbers[6]:2:5}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[6]:0:2}" && "${word:3:5}" = "${numbers[6]:3:5}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[6]:0:3}" && "${word:4:5}" = "${numbers[6]:4:5}" ]]; then
			echo true
		elif [[ "${word:0:4}" = "${numbers[6]:0:4}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isSeven () {
	local word=$1
	local len=${#word}			#len=4
	if [[ $len != 4 ]]; then
		echo false
	else

		if [[ "${word:1:4}" = "${numbers[7]:1:4}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[7]:0:1}" && "${word:2:4}" = "${numbers[7]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[7]:0:2}" && "${word:3:4}" = "${numbers[7]:3:4}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[7]:0:3}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isEight () {
	local word=$1
	local len=${#word}			#len=6
	if [[ $len != 6 ]]; then
		echo false
	else

		if [[ "${word:1:6}" = "${numbers[8]:1:6}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[8]:0:1}" && "${word:2:6}" = "${numbers[8]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[8]:0:2}" && "${word:3:6}" = "${numbers[8]:3:6}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[8]:0:3}" && "${word:4:6}" = "${numbers[8]:4:6}" ]]; then
			echo true
		elif [[ "${word:0:4}" = "${numbers[8]:0:4}" && "${word:5:6}" = "${numbers[8]:5:6}" ]]; then
			echo true
		elif [[ "${word:0:5}" = "${numbers[8]:0:5}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

isNine () {
	local word=$1
	local len=${#word}			#len=6
	if [[ $len != 6 ]]; then
		echo false
	else

		if [[ "${word:1:6}" = "${numbers[9]:1:6}" ]]; then
			echo true
		elif [[ "${word:0:1}" = "${numbers[9]:0:1}" && "${word:2:6}" = "${numbers[9]:2:4}" ]]; then
			echo true
		elif [[ "${word:0:2}" = "${numbers[9]:0:2}" && "${word:3:6}" = "${numbers[9]:3:6}" ]]; then
			echo true
		elif [[ "${word:0:3}" = "${numbers[9]:0:3}" && "${word:4:6}" = "${numbers[9]:4:6}" ]]; then
			echo true
		elif [[ "${word:0:4}" = "${numbers[9]:0:4}" && "${word:5:6}" = "${numbers[9]:5:6}" ]]; then
			echo true
		elif [[ "${word:0:5}" = "${numbers[9]:0:5}" ]]; then
			echo true
		else
			echo false
		fi

	fi
}

whatIs () {
	local word=$1
	if [[ "$(isZero $word)" = "true" ]]; then
		echo 0
	elif [[ "$(isOne $word)" = "true" ]]; then
		echo 1
	elif [[ "$(isTwo $word)" = "true" ]]; then
		echo 2
	elif [[ "$(isThree $word)" = "true" ]]; then
		echo 3
	elif [[ "$(isFour $word)" = "true" ]]; then
		echo 4
	elif [[ "$(isFive $word)" = "true" ]]; then
		echo 5
	elif [[ "$(isSix $word)" = "true" ]]; then
		echo 6
	elif [[ "$(isSeven $word)" = "true" ]]; then
		echo 7
	elif [[ "$(isEight $word)" = "true" ]]; then
		echo 8
	elif [[ "$(isNine $word)" = "true" ]]; then
		echo 9
	else
		echo -1
	fi
}

if [[ "$(isNine девять)" = "true" ]]; then
	echo "GOOD"
else
	echo "SHIT"
fi