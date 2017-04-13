Challenge: **Compromised V1**

Description: **Recently, WebSec Corp suffered a major breach. Our servers were compromised. We called an incident response team but they sucked...really bad. Because you have been doing so well, we have decided to select you. SSH to our server and find any backdoor. The backdoor file will also have the hidden message that hackers left for us.**

For this challenge, competitors had to use the SSH credentials given to them. Once they log in, there task was to find the "backdoor" and get the message. This could be done through multiple ways:

1) Competitors could create a simple recursive script that looks for certain file extensions like: php, perl files (pl), bash script (sh) and other backdoor file extensions.

2) They could manually look for the file. 

The file was in a hidden directory inside `/media`. There we had a hidden directory called: `.wooscary` which had a file called `wooscary.pl`

While the file extension was perl, there was nothing much inside except a encrypted message: `JDkkbGcwdld4b2FVamkueE5UMzlDMUlkYndzMmFUem5BcEJRekN1MUljU2ppay56MzlBcDBJRTNueGQ=` 

This was a base64 encoded message which when decoded gives the following output: `$9$lg0vWxoaUji.xNT39C1Idbws2aTznApBQzCu1IcSjik.z39Ap0IE3nxd`

So there is another encryption. The encryption used was a **Juniper $9$ password encryption**. It could easily be decoded which gave the flag: **flag{s4d_l1f3_9390}**

Points:**100**