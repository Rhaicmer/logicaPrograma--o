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
		inteiro nAleatorio[11]
		escreva("***Números sorteados aleatóriamente***\n")
		para(inteiro x=1; x<11; x++){
			nAleatorio[x] = u.sorteia(0,999)
			escreva("Número ",x,": ",nAleatorio[x],"\n")
		 }

		 para(inteiro x=1; x<11; x++){
		 	para(inteiro y=1; y<11; y++){
		 		se(nAleatorio[x] < nAleatorio[y]){
		 			inteiro temp = nAleatorio[x]
		 			nAleatorio[x] = nAleatorio[y]
		 			nAleatorio[y] = temp
		 		}
		 	}
		 }
		 escreva("O maior número é: ",nAleatorio[10],
		         "\nO menor número é: ",nAleatorio[1],"\n"
		         )  
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 793; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */