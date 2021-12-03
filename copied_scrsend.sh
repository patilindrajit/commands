file=$(xclip -o)
kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "${file}"
