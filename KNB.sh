clear
chance=56
angryMech=$((RANDOM%100))
echo "Let's play kamen/nojnici/bumaga"
echo "Enter kamen or nojnici or bumaga"

while true; do
  read user
  if [ "$user" = "exit" ]; then
    exit
  fi
  if [ "$angryMech" -le "$chance" ]; then
    if [ "$user" = "kamen" ]; then
      echo "You lose XD kek"
      echo "My 'bumaga' > your 'kamen'"
    elif [ "$user" = "bumaga" ]; then
      echo "You lose XD kek"
      echo "My 'nojnici' > your bumaga"
    elif [ "$user" = "nojnici" ]; then
      echo "You lose XD kek"
      echo "My 'kamen' > your 'nojnici'"
    else
      echo "I didn't understand :("
    fi
  else
    r=$((RANDOM%3))
    if [ "$r" = 0 ]; then # 0 - kamen
      if [ "$user" = "kamen" ]; then
        echo "Draw -_-"
        echo "My 'kamen' = your 'kamen'"
      elif [ "$user" = "bumaga" ]; then
        echo "You win :O"
        echo "My 'kemen' < your 'bumaga'"
      elif [ "$user" = "nojnici" ]; then
        echo "You lose XD"
        echo "My 'kamen' > your 'nojnici'"
      else
        echo "I didn't understand"
      fi
    elif [ "$r" = 1 ]; then # 1 - bumaga
      if [ "$user" = "kamen" ]; then
        echo "You lose XD"
        echo "My 'bumaga' > your 'kamen'"
      elif [ "$user" = "bumaga" ]; then
        echo "Draw -_-"
        echo "My 'bumaga' = your 'bumaga'"
      elif [ "$user" = "nojnici" ]; then
        echo "You win :O"
        echo "My 'bumaga' < your 'nojnici'"
      else
        echo "I didn't understand"
      fi
    else # 2 - nojnici
      if [ "$user" = "kamen" ]; then
        echo "You win :0"
        echo "My 'nojnici' < your 'kamen'"
      elif [ "$user" = "bumaga" ]; then
        echo "You lose XD"
        echo "My 'nojnici' > your 'bumaga'"
      elif [ "$user" = "nojnici" ]; then
        echo "Draw -_-"
        echo "My 'nojnici' = your 'nojnici'"
      else
        echo "I didn't understand"
      fi
    fi
  fi

done
