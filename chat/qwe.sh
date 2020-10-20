touch tmp_chat.txt
echo "Nothing">tmp_chat.txt
u_m=""
f_m=$(head -n 1 "tmp_chat.txt")
trap 'f_m=$(head -n 1 "tmp_chat.txt"); echo "$f_PID: $f_m" ' 2
PID=$$

echo "Your PID = $PID"
ps
echo "Who do you wanna communicate with?"
read f_PID
while [ 0 = 0 ]; do
  read u_m
  echo "$u_m">tmp_chat.txt
  kill -SIGINT $f_PID
done

rm -rf tmp_chat.txt
