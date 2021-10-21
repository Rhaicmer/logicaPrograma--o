def Validar(a, b, c, d):
    if(
        b > c and
        d > a and
        (c + d) > (a + b) and
        c > -1 and
        d > -1 and
        a % 2 == 0

    ):
        print("Valores aceitos")
    else:
        print("Valores nao aceitos")

A, B, C, D = input().split()

A = int(A)
B = int(B)
C = int(C)
D = int(D)

Validar(A, B, C, D)