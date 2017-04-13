Challenge **Get Good**

Description: **My Friend was feeling sick so I said "HI Get Good Mate"**

Solving:

During the CTF a hint was given asking all the competitors to look for memes with Get Good. One of the memes will be `Git Gud mate`. The hint was related to the meme because that site was update with `git commit`.

When the user browses to `webseccdn.tech/mysite/.git/` they will have the whole directory listed. Message for the most recent commit says: `I messed up bad. Now everyone knows the flag`. That means the flag was **leaked**. Now we can use `wget` command to pull the whole directory and save it on our local directory. 

After that has been done, when going to logs, we can find the hash for the original commit: **3f838e0e21519b4a03b2a0e6b0d9422ac743b017**. This should open the door now because we can do git reset --hard 3f838e0e21519b4a03b2a0e6b0d9422ac743b017 and get the original commit in our directory.

Once that is done, a text file called wow.txt will show up. This file has the flag: **flag{GIT_GUD_M4T3_1337}** 

Points:**250**