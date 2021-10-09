def Media(d, c):
    cMedio = d / c
    print("{:.3f}".format(cMedio),"km/l")

distancia = int(input())
combustivel = float(input())

Media(distancia, combustivel)