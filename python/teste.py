poltrona = []

nPoltronas = 41

x = 0
while(x < 41):
     poltrona.append(False)
     x+=1

def rh(nome, tamanho, tipo):
    nCaracter = len(nome)
    nTrac = (tamanho - nCaracter)
    if(tipo == 1):
        print("|", end="")
        x = 0
        while(x < int(nTrac/2)):
            print("-", end="")
            x+=1
        
        print(nome, end="")
        
        x = 0
        while(x < tamanho -(nCaracter+int(nTrac/2))):
            print("-", end="")
            x+=1

        print("|", end="")
    else:
        print("|", end="")
        print(nome, end="")
        x = 0
        while(x < nTrac):
            print("-", end="")
            x+=1
print("")
rh("Fileira 1", 20, 1)
rh("Fileira 2", 20, 1)
rh("Fileira 3", 20, 1)
rh("Fileira 4", 20, 1)
print("")

x = 1
while(x < nPoltronas):
    rh(str(x), 20, 1)
    rh(str(x+1), 20, 1)
    rh(str(x+2), 20, 1)
    rh(str(x+3), 20, 1)
    print("")
    x+=4

reservaPoltrona = int(input("Digite a poltrona a ser reservada"))

poltrona[reservaPoltrona] = reservaPoltrona

print("")
print("")
rh("Fileira 1", 20, 1)
rh("Fileira 2", 20, 1)
rh("Fileira 3", 20, 1)
rh("Fileira 4", 20, 1)
print("")

x = 1
while(x < nPoltronas):
    if(poltrona[x] == False):
        rh(str(x), 20, 1)
    else:
        rh("(x)", 20, 1)

    if(poltrona[x+1] == False):
        rh(str(x+1), 20, 1)
    else:
        rh("(x)", 20, 1)

    if(poltrona[x+2] == False):
        rh(str(x+2), 20, 1)
    else:
        rh("(x)", 20, 1)

    if(poltrona[x+3] == False):
        rh(str(x+3), 20, 1)
    else:
        rh("(x)", 20, 1)

    print("")
    x+=4