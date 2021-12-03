cd Downloads/

file=$(ls -c | head -n1)

kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "${file}"
