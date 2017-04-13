Challenge: **Millionaire Time.md**

Description: **WebSec team has decided to launch its own bank to help pay hackers. We have the best bank in the world. However, we hate people with less than 7000 balance so make sure you are rich if you want the flag.**

This challenge gave each user a specific account to use. It was a banking application where each user provided had starting balance of 0. 

Right above the balance it said **Poor:True** so we know that it is checking the balance. The challenge also says you need to have 7000 in balance to get the flag. 

When browsing arround, we notice that a beneficiary is added to the account. We don't yet know its function. However, right below is the function: `Transfer Funds`. 

When we try to transfer funds it says we do not have enough balance. If the request is intercepted we can notice that certain post paratmeters are being sent. During the transfer two specifc paramter stood out: `login_id` and `transfer`. 

`login_id` seems to be sender id and `transfer` is the application id of the person receiving the ammount. If we switch the parameters arround, due to the vulnerability present, money is added to our account. 

This was an **Insecure Direct Object Reference** Vulnerability. Basically, by changing the IDs we transfered money from someone else's account to ours. 

After that is done we get the flag: **flag{ID0R_ST34L_M0N3Y}**

Video of the solving is [here](https://www.youtube.com/watch?v=0aUtAo9EIVM)