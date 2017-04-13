Challenge: **Thank you!**

Description: **It has been a crazy three day CTF. With new challenges it was great to see you guys rock. At the end, we would like to know more about what you think of this challenge. And hey you get a free flag worth 400 points! We are working on new CTF for summer so would love your feedback! :) And again thank you and congrats for playing! Fill the form below We will send you the flag, once we get the form.**

For this challenge, we decided to have fun with our competitors. We made our competitors believe that they will get 400 points for submitting their feedback. However this was not the real plan ;) 

What we planned, was that the form itself will have vulnerability. Once some of our competitors filled the form, we told them that we could not get the emails but we know that they are capable enough of finding the flag themselves. 

The challenge here was to exploit a RCE on PHPMailer. This application was vulnerable to `CVE-2016-10033`. 

**How we designed the backend for this:**

We did not want any other competitor from gaining unfair advantage through someone else's backdoor. So we created a script which would remove any php other than index.php from the `/var/www/` directory every 1 minute. We also restricted edit to `index.php` to prevent anyone from editing the form or deleting it.

After exploiting the bug in PHPMailer form, competitor will gain a Backdoor access to the server. After that they have to find the flag. There are multiple ways this can be done:

1) Do a recursion scan of the server for any .txt, .desktop, .php files. 

2) They could also do a regex search for any files that had **flag** on it. 

With a simple scan, you can find that there is a `flag.txt` file in `/home/hi/` so when you output its content you get the flag: **flag{D0_N0T_TRUST_US_934}**

Points:**400**