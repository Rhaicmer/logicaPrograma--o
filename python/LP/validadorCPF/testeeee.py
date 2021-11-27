menu = 0
cadeia = " "
def traco():
    print('--' * 30)    

alf = "ZXCVBNMASDFGHJKLQWERTYUIOP"
    
#def frase ():
#    fra = (str(input('Digite uma frase: ')))
#   print(fra)

alf = list(alf)
while menu != 5:
        print('\n * * * CRIPTOGRAFIA DE FRASES * * *')
        traco()
        print('1 - iNFORMAR A FRASE')
        print('2 - CONSULTAR STRING DE CRIPTOGRAFIA')
        print('3 - CRIPTOGRAFRAR FRASE')
        print('4 - DESCRIPTOGRAFRAR FRASE') 
        print('5 - FINALIZAR')
        traco()
        menu = int(input('Qual a sua opção: \n'))
        
        if menu == 1:
                fra = (str(input('Digite uma frase: '))).upper()
                print(fra)
        
        elif menu == 2:
              
            alfabeto = ('ABCDEFGHIJKLMNOPQRSTUVXWYZ')
            num = ('0123456789123456789123456789')
           
            crip = ('ZXCVBNMASDFGHJKLQWERTYUIOP')

            

            print( alfabeto, num, crip)
        
        elif menu == 3:
            
            cadeia = ""
            for i in fra:# BABACA 
                if(ord(i) > 60):
                    t = ord(i) - 65
                    cadeia += alf[t]
                else:
                    cadeia += " "
            print(cadeia)
            
          #  chave = 4
          #  n= 41
          #  for letra in fra:
          #      indice = ord(letra)
          #      nova_letra = chr((indice + chave)%n)
          #      cifrada = cifrada + nova_letra



print('Fim do programa')