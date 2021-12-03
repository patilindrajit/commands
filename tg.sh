th="https://t.me/joinchat/9-530shXg_s0MmM1"
mfg="https://t.me/joinchat/brNdSr5JPfs1OGZl"
mt="https://t.me/joinchat/xsh6NsiyrtExNmNl"
personal="https://t.me/joinchat/e6XhJf2fMAdjNjc1"

var=$(zenity --list --print-column=ALL --column Selection --column Distribution Thermo $th Production $mfg Maths $mt personal $personal)

sep="|"
subject=${var%$sep*}
channel=${var#*$sep}

(
  
  cd Downloads
  dir=Gate/"$subject"
  	
  echo 25
  echo "# checking for directory..."
  sleep 1


  if [ ! -d "$dir" ]; then
  	mkdir $dir
  fi

  echo 30
  echo "# Reading files..."
  sleep 1
  
  find . -name "* *" -type f | rename 's/ /_/g'
  file=$(ls -t *.pdf | head -n1)

  echo 60
  echo "# Uploading..."
  
  telegram-upload --to "$channel" $file
  
 
  mv $file $dir/

  echo 100
  echo "# Done!"

) | zenity --title "Progress bar example" --progress --auto-kill

