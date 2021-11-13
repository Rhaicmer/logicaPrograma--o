L = [ 1, 1, 1, 1]
qTestes = int(input())
testes = []

for _ in range(qTestes):
    tts = input()
    testes.append(tts)


for temp in testes:
    tString = len(temp)
    list(temp)
    con = 0
    saida = ""
    L[1] = 1
    L[2] = 1
    L[3] = 1
    while(con < len(temp)):
        if(temp[con] == 'A'):
            if(L[1] == 1):
                saida += 'D'
                L[1] = 0
            else:
                L[1] = 1
                if(L[2] == 1):
                    saida += 'D'
                    L[2] = 0
                else:
                    L[2] = 1
                    saida += 'E'

        if(temp[con] == 'B'):
            if(L[2] == 1):
                saida += 'D'
                L[2] = 0
            else:
                saida += 'E'
                L[2] = 1

        if(temp[con] == 'C'):
            if(L[3] == 0):
                saida += 'E'
                L[3] = 1
            else:
                L[3] = 0
                if(L[2] == 1):
                    saida += 'D'
                    L[2] = 0
                else:
                    L[2] = 1
                    saida += 'E'
        con += 1
    
    print(saida)

