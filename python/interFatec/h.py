from itertools import permutations

qt = int(input())

s1 = []
s2 = []

for p in range(qt):
    s1.append(input())
    s2.append(input())


ref = 0
for p in range(qt):
    flag = False
    results = 0
    total = 0
    perm = permutations(list(s2[ref]))

    perm = list(set(perm))
    #print(perm)
    total = 0
    for i in list(perm):
        if(len(s2[ref]) > len(s1[ref])):
            print("ERRO")
            flag = True
            break
        procurar = ''.join(i)
        
        str = procurar
        s = s1[ref]
        sub_len = len(str) 
        for i in range(len(s)):
            if s[i:i+sub_len] == str: 
                results += 1
    if(flag == False):
        print (results)   


    ref += 1

