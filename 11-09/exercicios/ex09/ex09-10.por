programa{
	inclua biblioteca Util --> u
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
		inteiro nSorteados[15]
		escreva("***Sorteando números entre 1 - 15***\n")
		
		//sorteando números
		para(inteiro x=0; x<15; x++){
			nSorteados[x] = u.sorteia(1, 15)
			escreva("Número sorteado ",x+1,": ",nSorteados[x],"\n")
		}
		escreva("\n")

		//verificando se existe numero 5, 10 ou 12
		para(inteiro x=0; x<15; x++){
			se(nSorteados[x] == 5 ou nSorteados[x] == 10 ou nSorteados[x] == 12){
				escreva("O Número ", x+1," que foi sorteado é igual a ", nSorteados[x],"\n")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */