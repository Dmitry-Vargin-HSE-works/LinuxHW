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