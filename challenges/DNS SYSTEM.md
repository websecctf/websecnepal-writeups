Challenge: **DNS SYSTEM**

Description: **We at WebSec love to help everyone. So recently our team developed a small script that will give you DNS details of any website. For example check the output for our site.**

This was a simple challenge where the site provided outputs the DNS of a website. Unfortunately at first we had an unintended solution so we had to void this and recreate the challenge. 

In the backend, when the DNS of a site is retrieved, its record are not sanitized. This was the main attack vector. There is a way that some registrars allow domain owners to add HTML tags in the TXT record. So it could possibly be used for attacks like XSS. 

For this challenge, competitors had to execute XSS on the domain to get the flag. In the backend there was a regex that would scan for any HTML tags that came with TXT records and gave the flag. 

The flag was: **flag{TXT_XSS_H3LP3R_8954}**

Points:**300**