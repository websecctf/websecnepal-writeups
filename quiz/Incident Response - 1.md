Question: **Recently on of our server was compromised. As a part of incident response team, I ran a scan of all the files uploaded after the attack. One of the SHA of one file is 09d10ae0f763e91982e1c276aad0b26a575840ad986b8f53553a4ea0a948200f
can you tell me the md5 hash & name of the PCAP file that captured the data? 
Answer format: _[md5] [filename_**

Answer: For this if you copied the SHA256 given and did a Google search, a [Virustotal link](https://www.virustotal.com/en/file/09d10ae0f763e91982e1c276aad0b26a575840ad986b8f53553a4ea0a948200f/analysis/1346055031/) should show up. 

When you go to the link, you need to find the PCAP file which is located in the `Relationships` tab. Once you open the pcap file link, you can see the name in the top box and the md5 is located in `Additional Information` tab.

Answer was: **md5 = fd1e67ac8bd7bb3240d83f55932a70b0]; filename = [EK_Blackholev1_2012-08.pcap]**

Points:**70**



