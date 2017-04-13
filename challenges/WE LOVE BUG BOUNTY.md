Challenge: **WE LOVE BUG BOUNTY**

This was a recon challenge so definitely it would require some research. The title references bug bounty which is extremely common nowdays among many security researchers. We also know that the developer of this CTF is uranium238. uranium238 seems to have an account at [HackerOne](https://hackerone.com/uranium238).

Now we need to find the flag. Unfortunately, the flag is not in uranium238's account. HackerOne also does not show the most recently signed up accounts. :(

However it does have a place in the site where all the hacker's are listed. [At its Sitemap](https://hackerone.com/sitemap). 

When we go there, there are **a lot** of accounts. But we can guess wise: The account must have websec on it. Also they gave the hint that they are a team. So probably it has the word team?

We narrow down our search to **T** and **W**. We find nth in **W** but we find an account with the username: **t3am_-w3bsec** in **T**

When going to the profile of this link we get the flag: **flag{w3bs3c_t3am_1230u9_12309809}**

Kudos to Team Immortal who actually wrote a script to grab all usernames from sitemap and then search it for specific words. His code is [here](reconsearch.sh). Check it out! 

Points:**300**