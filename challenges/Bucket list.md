Challenge **Bucket List**

Description: **I always had a bucket list. Can you find it?**

Solving:

As soon as the challenge says, `Bucket` one specific application should come in mind: _Amazon Web Services_. They provide s3 buckets for remote storage. 

Now the only challenge is to find the bucket. You could create a word list that would go with websec. The bucket name was `websecteam`. 

Unfortunately, when going to `websecteam.s3.amazonaws.com` it shows Access Denied. But recent public disclosures in HackerOne has shown that sometimes any AWS authenticated user can list files in the buckets. So why not try it right?

Simply running the command `aws s3 ls s3://websecteam` will list the flag: **flag{misconfig_aws_12980}**

Points:**450**