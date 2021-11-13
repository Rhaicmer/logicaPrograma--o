a = int(input())

con = 1
ref = 1
qtdCasa = 0
while(con <= a):
    if(ref == 1):
        ref = 0
    else:
        qtdCasa += con + con + (con -2) + (con - 2) - 2
        ref = 1
    con += 2

print(qtdCasa)
   
