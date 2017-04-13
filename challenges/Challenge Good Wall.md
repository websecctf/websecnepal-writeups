Challenge **Good Wall**

Description: **webseccdn.tech/secret/**

Solving:

Everytime when a user visits the file it keeps saying `FORBIDDEN`. This shows that it is doing some kind of validation on who the user is. 

If we intercept the request from Burp Suite, we can see following snippet 

`GET /secret/ HTTP/1.1 \n
Host: webseccdn.tech
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0) Gecko/20100101 Firefox/52.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Cookie: userrole=limiteduser
Connection: close
Upgrade-Insecure-Requests: 1
`
What is interesting in this is the Cookie `userrole` which for this is set as `limiteduser` so we could try to brute force this. One of our competitor, Team Immortal actually used a script for this challenge. 

We have attached the script as `teamimmortalsoln.sh`.

With this script they passed in various datas to test out every case from Cookies to JSON to simple payloads. One of the user is adminuser who thankfully has the access to the hidden section. So modifying the cookie to `adminuser` gives the flag: **flag{sup3r_us3r_19803-980}**

Points:**100**