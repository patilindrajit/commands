

th="https://t.me/joinchat/9-530shXg_s0MmM1"
mfg="https://t.me/joinchat/brNdSr5JPfs1OGZl"
mt="https://t.me/joinchat/xsh6NsiyrtExNmNl"

var=$(zenity --list --print-column=ALL --column Selection --column Distribution Thermo $th Production $mfg Maths $mt)
sep="|"
channel=${var%$sep*}
echo "$channel"
#link=$var | cut -d'|' -f1
link=${var#*$sep}
echo $link


