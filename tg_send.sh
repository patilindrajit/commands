cd Downloads
find . -name "* *" -type f | rename 's/ /_/g'
file=$(ls -t *.zip | head -n1)
telegram-upload --to "https://t.me/joinchat/A8KiaxhmEQpiMTU1" $file

