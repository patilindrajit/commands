cd Downloads
echo "subject_name"

read subject_name

dir=Gate/$subject_name

if [ ! -d "$dir" ]; then
	mkdir $dir
fi

find . -name "* *" -type f | rename 's/ /_/g'
file=$(ls -t *.png | head -n1)

echo "channel_link"

read channel_invite_link

telegram-upload --to "$channel_invite_link" $file

mv $file $dir/

