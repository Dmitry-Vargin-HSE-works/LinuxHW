clear

echo "Welcome to my file manager!"
echo "Please, write what are you want me to do with files:"
echo "create / delete / copy / move / exit"

while true
do
  read ucommand

  if [ "$ucommand" = "create" ]; then
    echo "Enter filename:"
    read filename
    touch "$filename"
    echo "$filenam was created"
  elif [ "$ucommand" = "delete" ]; then
    echo "Enter filename:"
    read filename
    rm "$filename"
    echo "$fiename deleted successfully!"
  elif [ "$ucommand" = "copy" ]; then
    echo "Enter from which directory you wanna copy filse:"
    read fdir
    echo "Enter to which direcrory you wanna input files:"
    read todir
    cp $fdir/* $todir
    echo "Files was copied successfully!"
  elif [ "$ucommand" = "move" ]; then
    echo "Enter from which directory you wanna move files:"
    read fdir
    echo "Enter to which direcrory you wanna move files:"
    read todir
    mv $fdir/* $todir
    echo "Files was moved successfully!"
  elif [ "$ucommand" = "exit" ]; then
    echo "Goodbye!"
    exit
  else
    echo "I do not understand this command :("
  fi

  echo "Choose next act or exit:"
  echo "create / delete / copy / move / exit"
done
