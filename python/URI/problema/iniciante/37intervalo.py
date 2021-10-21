def Intervalo(a):
    if(0.00001 <= a <= 25.0000001):
        print("Intervalo [0,25]")
    elif(25.50 <= a <= 50.74):
        print("Intervalo [25,50]")
    elif(50.75 <= a <= 75.1):
        print("Intervalo (75,100]")
    else:
        print("Fora de intervalo")


A = float(input())

Intervalo(A)