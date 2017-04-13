Challenge: **SEAsame seed**

Description: **Encryption: RjIxZWJqTnhrbzU1L2I0bVJ0Y2dSRXVYTGg5TldXVmZkSVI5cjhhVXp6YzQ2ZzVPZmtRZ3p4cGVkUE42WU00MXZYUEx6K3hmdkk5OFZuN2JVTG9RUVE9PQ== Key: bmVwYWxoYW1yb2Rlc2g**

There was a reason SEA was capitalized. It gives away the encryption technique which is AES. In this case both the encrypted text and the key was encoded further with base64. 

So at first we decode them:

encrypted text: `F21ebjNxko55/b4mRtcgREuXLh9NWWVfdIR9r8aUzzc46g5OfkQgzxpedPN6YM41vXPLz+xfvI98Vn7bULoQQQ==`
Key: `nepalhamrodesh`

So now we go to a AES decrypting site: Seems like there are three ways this could have been encrypted: 128 Bit, 192 Bit or 256 Bit.

We try all of them and get success with 256 Bit which gives the flag: **websecflag{12983_12938_bad_encryption}**

Points:**100**