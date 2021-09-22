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
		inteiro nAleatorios[11] 
		inteiro soma = 0
		limpa()
		escreva("***Sortear numeros aleatórios***\n")
		para(inteiro x=1; x<11; x++){
			nAleatorios[x] = u.sorteia(0, 999)
			escreva("Número ",x," sorteado: ",nAleatorios[x],"\n")
			soma += nAleatorios[x]
		}
		escreva("A soma dos números sorteado é: ",soma,"\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */