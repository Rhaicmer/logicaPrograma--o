def Delta(a, b, c):
    delta = b**2 - (4 * a * c)
    return delta

def Baskara(a, b, c):
    if(Delta(a, b, c) < 0 or a == 0):
        print("Impossivel calcular")
    else:
        r1 = (-b + (Delta(a, b, c)**0.5)) / (2 * a)
        r2 = (-b - (Delta(a, b, c)**0.5)) / (2 * a)
        print("R1 = {:.5f}".format(r1))
        print("R2 = {:.5f}".format(r2))

A, B, C = input().split()

A = float(A)
B = float(B)
C = float(C)

Baskara(A, B, C)