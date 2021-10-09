def Calculos(a, b, c):
    a = float(a)
    b = float(b)
    c = float(c)

    triangulo = (a * c) / 2
    circulo = pi * c**2
    trapezio = ((a + b) * c) / 2
    quadrado = b**2
    retangulo = a * b

    print("TRIANGULO: {:.3f}".format(triangulo))
    print("CIRCULO: {:.3f}".format(circulo))
    print("TRAPEZIO: {:.3f}".format(trapezio))
    print("QUADRADO: {:.3f}".format(quadrado))
    print("RETANGULO: {:.3f}".format(retangulo))


pi = 3.14159
A, B, C = input().split()

Calculos(A, B, C)
