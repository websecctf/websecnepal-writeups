Challenge **New Hires**

Description: **We are hiring new hackers! Can you make sure the system used for that is secure?**

Solving:

When going to the link provided, it would always return `Lol you funny!` text. This means there is some kind of blockage being done. So our next focus would be to see how to bypass that. Usually these kind of blocking can be done with IP, Cookie, or in rare cases Referrer header. Using blockage from referrer header is really bad because it can be spoofed. So this could be solved two ways. In this case the vulnerability was that it used `HTTP_REFERRER` to validate. So you could easily spoof that. That hard part was finding what to spoof it with. First you can list all the subdomains of webseccdn.tech. When you do that, you can see following subdomains. 

| Domains            | A records     |
| -------------------| ------------- |
| dav.webseccdn.tech | 199.79.62.248  |
| pop.webseccdn.tech | 208.91.198.215  |
| localhost.webseccdn.tech | 127.0.0.1 |
| smtp.webseccdn.tech | 208.91.199.224 |
| webmail.webseccdn.tech | 199.79.63.206 |

What stands out among them is `localhost.webseccdn.tech` because it is pointing to 127.0.0.1 so that means you could check your localhost with that. Interesting..
Next thing, we can try to create link to the webseccdn.tech/websecjobportal/mainframe.php with `<a href=“http://webseccdn.tech/websecjobportal/mainframe.php”>OK</a>`. When we click on the link, we are greeted with a portal login page. After that we can submit some data and check. There seems to be a JS code on the next page. Which if decoded gives the flag: websec{ref_xss_flag}

Points:**100**