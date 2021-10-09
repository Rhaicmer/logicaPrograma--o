def Maior(a, b, c):
   a = int(a)
   b = int(b)
   c = int(c)
   prime = (a + b + abs(a - b)) /2
   if(prime > c):
       print(prime, "eh o maior")
   else:
       print(c, "eh o maior")

A, B, C = input().split()

Maior(A, B, C)