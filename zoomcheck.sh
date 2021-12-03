service=zoom
var=$(ps -ef | grep zoom | wc -l)
if [ "$var" -gt 3 ]; then
	echo "$service is running"
else
	echo "$service is not running!"
fi

echo "$var"
