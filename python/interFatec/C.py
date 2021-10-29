nBotas = int(input())

tBotas = []
lBotas = []
total = 0

for _ in range(nBotas):
    a, b = input().split()
    a = int(a)
    tBotas.append(a)
    lBotas.append(b)



for x in range(nBotas):
    for y in range(nBotas):
        if(tBotas[x] == tBotas[y]):
            if(lBotas[x] != lBotas[y]):
                #print("botas ", x, "e", y, "formam pares\n")
                total += 1
                tBotas[x] = 200 + total
                tBotas[y] = 202 + total
                

print(total)