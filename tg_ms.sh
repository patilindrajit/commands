cd Downloads
find . -name "* *" -type f | rename 's/ /_/g'
file=$(ls -t *.pdf | head -n1)
telegram-upload --to "https://t.me/joinchat/piJRHVf2xBxhMThl" $file

