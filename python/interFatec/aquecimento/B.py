#minhaLocacao, armariosDisp = input().split()

#minhaLocacao = int(minhaLocacao)
#armariosDisp = int(armariosDisp)

armario = input().split()
ap = []

for p in range(len(armario)):
    armario[p] = int(armario[p])


for _ in range(armario[-1]):
    ap.append(1)



for p in armario:
    ap[p-1] = 0


print(ap)

print("*************")

ref = 0
refM = 0
for p in ap:
    if(p == 0):
        ref += 1
        if(ref > refM):
            refM = ref
    else:
        ref = 0

print("Sequencia máxima: ", refM)



    


