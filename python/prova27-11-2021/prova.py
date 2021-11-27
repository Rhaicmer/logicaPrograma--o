import os
from random import sample

def Fatorar(p):
    fat = p
    for _ in range(26):
        print(chr(_ + 65), end="")
    print("\n")    
    for _ in range(26):
        if(_ < 9):
            print(_, end="")
        else:
            print(str(_)[-1::], end="")
    print("\n")        
    posi = 1
    for t in fat:
        print("\nLetra da palavra: \'"+ t + "\' - Posição:",posi,
              "\nLetra Alfabeto na posição:",ord(t) - 64,
              "\n----------------------------------------------"
        )
        posi += 1

    e = input("\npressione ENTER para prosseguir...")
    os.system('cls') or None
        

prog = True

while(prog):
    
    for _ in range(23):
            print("*", end=" ")

    print("\n* * *", end=" ")
    print("AVALIAÇÃO DE ALGORÍTIMO E LÓGICA  * * *")

    for _ in range(23):
            print("*", end=" ")

    print("\n\nSelecione a opção\n\n",
        "1. Percorrer Palavra\n",
        "2. Jogo da Quina\n\n",
        "9. Finalizar\n\n"
        )

    opNum = int(input())
    if(opNum == 1):
        os.system('cls') or None
        for _ in range(23):
            print("=", end=" ")
        palavra = input("\n\nDigite uma palavra:").upper()
        Fatorar(palavra) 
    elif(opNum == 2):
        os.system('cls') or None
        for _ in range(24):
            print("=", end=" ")

        print("\n= = =", end=" ")
        print("Quina - Concurso 2711 - 27/11/2021  = = =") 

        for _ in range(24):
            print("=", end=" ") 


        numAp = sample(range(1, 51), k=5)
        numSor = sample(range(1, 51), k=5)
        print("\nNúmeros apostados: ",end="")
        for _ in numAp:
            print(_, " ", end="")

        print("\nNúmeros Sorteados: ",end="")
        for _ in numSor:
            print(_, " ", end="")

        print("\n")
        acertos = 0
        for x in numAp:
            print("Número apostado: ",x)
            for y in numSor:
                if(y == x):
                    print("Acertou!!!!",x,"-",x)
                    acertos += 1
        
        print("Acertos:",acertos)
        e = input("\npressione ENTER para prosseguir...")
        os.system('cls') or None
 
    elif(opNum == 9):
        print("Programa finalizado!")
        prog = False
    
    else:
        os.system('cls') or None
        print("Valor digitado inválido. Tente novamente:\n\n\n")

    


    