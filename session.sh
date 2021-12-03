session=" "
time=$(date +%H)
if [ "$time" -ge 7 ] && [ "$time" -le 13 ]; then
	session="morning"
elif [ "$time" -ge 14 ] && [ "$time" -le 16 ]; then
	session="afternoon"
else
	session="evening"
fi
echo "$(date +"%d_%h_%y")_"$session"($(date +%T))"
#filename="$sessio_$(date +"%d_%h_%y(%T))"

