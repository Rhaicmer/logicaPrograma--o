def coor(a, b):
    print(a,b)
    print(b,a)
    print(b,(a *-1))
    print(a,(b * -1))
    print((a * -1),(b * -1))
    print((b * -1),(a * -1))
    print((b * -1),a )
    print((a * -1),b)


A , B = input().split()
A = int(A)
B = int(B)

if((A != B) and (A != 0) and (B != 0)):
    coor(A, B)
else:
    print("ERRO")