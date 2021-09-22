programa{
	caracter continue = ' '
	funcao inicio(){
		faca{

			agregar()
			//Verificação para coninuar ou não a execução do programa
			escreva("Deseja continuar?")
			leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao agregar(){
		//Declaração de variáveis
	     inteiro hChico = 150, hZe = 110, crescimentoChico = 2, crescimentoZe = 3, anos = 0
	     
	     enquanto(hChico > hZe){//enquanto Chico for menor que Zé
	     	hChico += crescimentoChico
	     	hZe += crescimentoZe
	     	anos++
	     }
	     escreva("Será preciso ", anos," anos para que Zé seja maior que Chico\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */