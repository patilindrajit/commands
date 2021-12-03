(
  cd Downloads
  dir=Gate/HT

  echo 25
  echo "# Setting up..."
  sleep 1


  if [ ! -d "$dir" ]; then
  	mkdir $dir
  fi

  echo 30
  echo "# Reading files..."
  sleep 1
  
  find . -name "* *" -type f | rename 's/ /_/g'
  file=$(ls -t *.pdf | head -n1)

  echo 70
  echo "# Uploading $file ..."
  
  telegram-upload --to "https://t.me/joinchat/I0wAnDnjV84yMDQ9" $file

  mv $file $dir/

  notify-send -i face-wink "$file sent to HT class material"
  
  echo 100
  echo "# Done!"

) | zenity --title "Telegram-upload" --progress --auto-kill --auto-close

