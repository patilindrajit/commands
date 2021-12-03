
service=zoom
var=$(ps -ef | grep zoom | wc -l)
session=" "
time=$(date +%H)

#save_screenshot_to_file

file=/home/indrajit/Pictures/"$(date +"%d_%h_%y")_($(date +%T)).png"
gnome-screenshot -f "${file}"

sleep 0.8
#check_zoom_is_running_or_not

if [ "$var" -gt 1 ]; then
	status="running"
else
	status="idle"
fi

#define_session

if [ "$time" -ge 7 ] && [ "$time" -le 13 ]; then
	session="morning"
elif [ "$time" -ge 14 ] && [ "$time" -le 16 ]; then
	session="afternoon"
else
	session="evening"
fi

#check_for _directory

temp=$(date +"%d_%h_%y")_"$session"
dir=Pictures/$temp

#move_to_specific_folder

if [ "$var" -gt 1 ]; then
	if [ ! -d "$dir" ]; then
		mkdir $dir
	fi
	mv $file $dir/
	kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --ping-msg "screenshot saved to "$dir""
else
	mv $file Pictures/Screenshots/
	kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --ping-msg "screenshot saved to Screenshots"
fi


