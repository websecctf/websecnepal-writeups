#!/bin/bash

chars="abcdefghijklmnopqrstuvwxyz0123456789"
url="https://hackerone.com/sitemap?first="
outfile="/tmp/lol.txt"

for ((i=0; i < ${#chars}; i++)); do
  wget -q -O - "${url}${chars:$i:1}" | sed -n -e '/<h2>Users:<\/h2>/,$p' | grep "<li>" >> "${outfile}"
done


egrep -i '(w3b|s3c|t3am|te4m|t34m|n3p|p4l)' "${outfile}"