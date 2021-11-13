
qtdGarrafas = int(input())
passo = int(input())

garrafas = []

add = 1
for _ in range(qtdGarrafas):
    garrafas.append(add)
    add += 1

numberDelet = -1
while(len(garrafas) != 1):
    if(len(garrafas) < passo):
        passo = len(garrafas) - 1

    print("tamanho da lista:", len(garrafas))

    for _ in range(10):
        numberDelet += passo
        print("deletando ",numberDelet, "\n" )
        garrafas.pop(passo)

    numberDelet = 0

print(garrafas)
   