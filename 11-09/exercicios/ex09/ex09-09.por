programa{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	caracter continue = ' '
	
	funcao inicio(){
		faca{

			body()
			//Verificação para coninuar ou não a execução do programa
			escreva("Deseja continuar?")
			leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao body(){
		limpa()
		inteiro nSorteados[10]
		inteiro somaTotal = 0
		inteiro somaPares = 0
		escreva("*****Sorteando Números*****\n")

		//sorteando números
		para(inteiro x=0; x<10; x++){
			nSorteados[x] = u.sorteia(0, 200)
			escreva("Número sorteado ",x+1,": ",nSorteados[x],"\n")
			somaTotal += nSorteados[x]
			se(nSorteados[x]%2==0){
				somaPares+=nSorteados[x]
			}
		}

		//Média dos números e soma dos npumeros pares
		escreva("\nA média dos números sorteados é: ",somaTotal/10,"\n",
		        "A soma dos numeros pares é: ",somaPares,"\n"
		        )
		
		//números impares
		escreva("\n*****Números Ímpares*****\n")
		para(inteiro x=0; x<10; x++){
			se(nSorteados[x]%2==1)
			escreva("Número  ",x+1,": ",nSorteados[x],"\n")
		}

		//Lista de números pares
		escreva("\n*****Numeros Pares*****\n")
		para(inteiro x=0; x<10; x++){
			se(nSorteados[x]%2==0)
			escreva("Número  ",x+1,": ",nSorteados[x],"\n")
		}

		
	}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */