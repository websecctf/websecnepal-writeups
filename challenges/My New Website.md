Challenge: **My New Website** 

Description: **Do you like my new website?I like hiding people's IP. Hide your IP now. Flag is at _www/flag.txt_**

Solving:

This was a SSRF vulnerability. At first when you try to load a website by simply typing google.com it would not load and the page would be blank. When you check the hint it says: `I am not gonna allow you to get links that easily. Hint: I love 3ncrypti0n`. So this challenge has to do sth with encryption. 

There could be variety of encryption/hashes used. Mostly in CTFs common encryption for easy breaks are MD5 or Base64. We can try to do both. First we will encrypt a simple site like google.com with it and see what it does. There was no response with MD5 so that did not work. 

Next, we can try out Base64. (Base64 was one of the most commony used "encryption" throughout the CTF). When Base64 is used the page will respond. Now we have to get the flag. 

Thankfully the challenge already says that the flag is at www/flag.txt. We have to get to it now. For that we can go by encoding `file:///var/www/flag.txt`. Usually most WWW in Ubuntu are in /var/ folder. So after we encode we get the following base64: **ZmlsZTovLy92YXIvd3d3L2ZsYWcudHh0**. When we put that in the app, we get the flag: **flag{w0w_I_4m_bad_32094}**

Our competing team that placed first, Team Immortal made a script to solve this challenge. Check out this [bash script](ssrf.sh). 

Points:**350** 