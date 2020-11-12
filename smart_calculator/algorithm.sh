algorithm () {
	local str1="$1"
	local str2="$2"

	local len1=${#str1}
	local len2=${#str2}

	if [[ "$len1" = 0 && "$len2" = 0 ]]; then
		echo 0
	elif [[ "$len1" = 0 ]]; then
		echo "$len2"
	elif [[ "$len2" = 0 ]]; then
		echo "$len1"
	else
		local case1=$(($(algorithm "${str1:0:$((len1-1))}" "$str2")+1))
		local case2=$(($(algorithm "$str1" "${str2:0:$((len2-1))}")+1))
		local case3=$(($(algorithm "${str1:0:$((len1-1))}" "${str2:0:$((len2-1))}")+$(lastEqual $str1 $str2)))
		echo $(min3 $case1 $case3 $case3)
	fi

}

lastEqual () {
	local s1=$1; local s2=$2
	local len1=${#s1}; local len2=${#s2}
	if [[ "${s1:$((len1-1)):$((len1))}" = "${s2:$((len2-1)):$((len2))}" ]]; then
		echo 0
	else
		echo 1
	fi
}

min3 () {
	if [[ "$1" -le  "$2" ]]; then
		if [[ "$1" -le "$3" ]]; then
			echo "$1"
		else
			echo "$3"
		fi
	else
		if [[ "$2" -le "$3" ]]; then
			echo "$2"
		else
			echo "$3"
		fi
	fi
}

#s1="адин"
#s2="фыйдин"
#q1="qwe"
#q2="qqqwesa"
#s="123н1"
#qwe="q"
#qwe2="q"
#echo $(algorithm $s1 $s2)
#echo $(test "qwerty")
# len=${#s}
# echo $(($(f "${s:0:$((len-1))}")+1))

#echo $(lastEqual $s1 $s2)
#echo $(lastEqual $s1 $s)
#echo $(lastEqual $s $s2)
#echo $(lastEqual $qwe $qwe2)