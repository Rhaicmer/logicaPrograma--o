s = 'aabaabaa'
str = 'aaba'
results = 0
sub_len = len(str) 
for i in range(len(s)):
    if s[i:i+sub_len] == str: 
        results += 1
print (results)