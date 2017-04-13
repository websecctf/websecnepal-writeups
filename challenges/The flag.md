Challenge: **The Flag**

Description: **We are giving you the flag this time**

Link to file: **https://mega.nz/#!t34USSgY!IAMfCHOYIKKMRmqp6DDdilBjBlUTDQKOpCWzoaa60eU**

When downloaded this contains a simple file called `iamtheflag.png`. At first we cannot notice much on this. 

Running `strings iamtheflag.png` also does not give a flag. But if we research further we can identify that this is a challenge in regards to LSB Steg. It is hiding the flag with hidden bits of 1. 

When you put the image in this [link](http://incoherency.co.uk/image-steganography/#unhide), you can see the flag easily.

The flag is: **flag{h1892}**

Points:**50**