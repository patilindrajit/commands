
var=$(zenity --list --print-column=ALL --column Selection ComplexVariables LinearAlgebra)

channel="https://t.me/joinchat/xsh6NsiyrtExNmNl"

(
  
  cd Downloads
  dir=Gate/Maths/$var
  	
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
  
  notify-send -i face-wink "$file sent to Maths class material"

  echo 100
  echo "# Done!"

) | zenity --title "Progress bar example" --progress --auto-kill --auto-close

