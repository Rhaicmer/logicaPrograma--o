def Possibilidades(v):
    print(v)
    total = v
    if(total > 100):
        n100 = int(total/100)
        total -= n100 * 100
        print(n100, "nota(s) de R$ 100,00")
    else:
        print("0 nota(s) de R$ 100,00")

    if(total > 50):
        n50 = int(total/50)
        total -= n50 * 50
        print(n50, "nota(s) de R$ 50,00")
    else:
        print("0 nota(s) de R$ 50,00")

    if(total > 20):
        n20 = int(total/20)
        total -= n20 * 20
        print(n20, "nota(s) de R$ 20,00")
    else:
        print("0 nota(s) de R$ 20,00")

    if(total > 10):
        n10 = int(total/10)
        total -= n10 * 10
        print(n10, "nota(s) de R$ 10,00")
    else:
        print("0 nota(s) de R$ 10,00")

    if(total > 5):
        n5 = int(total/5)
        total -= n5 * 5
        print(n5, "nota(s) de R$ 5,00")
    else:
        print("0 nota(s) de R$ 5,00")

    if(total > 1):
        n1 = int(total/1)
        total -= n1 * 1
        print(n1, "nota(s) de R$ 1,00")
    else:
        print("0 nota(s) de R$ 1,00")
        
    

valor = int(input())
if 0 <= valor <= 1000000:
    Possibilidades(valor)