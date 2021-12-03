(
  cd Downloads
  dir=Gate/Thermo

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
  echo "# Uploading..."
  
  telegram-upload --to "https://t.me/joinchat/9-530shXg_s0MmM1" $file

  mv $file $dir/

  notify-send -i face-wink "$file sent to Thermodynamics material"
  
  echo 100
  echo "# Done!"

) | zenity --title "Progress bar example" --progress --auto-kill

