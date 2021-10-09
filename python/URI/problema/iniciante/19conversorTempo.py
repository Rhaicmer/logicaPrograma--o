def Conversor(n):
    horas = int(n / 3600)
    minutos = n % 3600
    segundos = minutos % 60
    minutos = int(minutos / 60)
    print(str(horas)+":"+str(minutos)+":"+str(segundos))
    

N = int(input())

Conversor(N)