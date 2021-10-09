def Conversor(d):
    #Notas
    cem = int(d / 100) # 0
    sobrou = d % 100 # 20
    cinquenta = int(sobrou / 50) # 0
    if(sobrou >= 50):
        sobrou -= cinquenta * 50
    vinte  = int(sobrou / 20)
    if(sobrou >= 20):
        sobrou -= vinte * 20
    dez  = int(sobrou / 10)
    if(sobrou >= 10):
        sobrou -= dez * 10
    cinco  = int(sobrou / 5)
    if(sobrou >= 5):
        sobrou -= cinco * 5
    dois  = int(sobrou / 2)
    if(sobrou >= 2):
        sobrou -= dois * 2

    #moedas
    ur  = int(sobrou / 1)
    if(sobrou >= 1):
        sobrou -= ur * 1
    cc  = int(sobrou / 0.5)
    if(sobrou >= 0.5):
        sobrou -= cc * 0.5
    vc  = int(sobrou / .25)
    if(sobrou >= .25):
        sobrou -= vc * .25
    dc  = int(sobrou / .1)
    if(sobrou >= .1):
        sobrou -= dc * .1
    cinc  = int(sobrou / .05)
    if(sobrou >= .05):
        sobrou -= cinc * .05
    uc  = int(sobrou / .01)
    if(sobrou >= .01):
        sobrou -= uc * .01

    print("NOTAS:")
    print(cem, "nota(s) de R$ 100.00")
    print(cinquenta, "nota(s) de R$ 50.00")
    print(vinte, "nota(s) de R$ 20.00")
    print(dez, "nota(s) de R$ 10.00")
    print(cinco, "nota(s) de R$ 50.00")
    print(dois, "nota(s) de R$ 2.00")
    print("MOEDAS:")
    print(ur, "moeda(s) de R$ 1.00")
    print(cc, "moeda(s) de R$ 0.50")
    print(vc, "moeda(s) de R$ 0.25")
    print(dc, "moeda(s) de R$ 0.10")
    print(cinc, "moeda(s) de R$ 0.05")
    print(uc, "moeda(s) de R$ 0.01")


N = float(input())
if(0<=N<=1000000.00):
    Conversor(N)