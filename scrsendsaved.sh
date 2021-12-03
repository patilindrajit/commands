session=" "
time=$(date +%H)

if [ "$time" -ge 7 ] && [ "$time" -le 13 ]; then
	session="morning"
elif [ "$time" -ge 14 ] && [ "$time" -le 16 ]; then
	session="afternoon"
else
	session="evening"
fi

cd Pictures/$(date +"%d_%h_%y")_"$session"

file=$(ls -t *.png | head -n1)

kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "${file}"
