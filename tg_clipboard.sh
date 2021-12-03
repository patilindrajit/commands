xclip -o >/tmp/file.txt

sleep 0.5

cd /tmp/
text=$(cat file.txt); echo "$x"

telegram-send "$text"
