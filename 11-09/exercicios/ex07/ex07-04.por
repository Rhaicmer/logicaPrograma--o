programa{
	
	funcao inicio(){    
		caracter continue = ' '
		escreva("*** Programa iniciado ***\n")
		faca{
               
			agregada()

			escreva("\nDeseja continuar?\n")
			leia(continue)
		}
		enquanto(continue == 's' ou continue == 'S' )
		limpa()
		escreva("\nObrigado pelo seu voto.Programa finalizado!")
	    
	}

	funcao agregada(){
		inteiro numero = 0
		escreva("Digite o valor de referenvia para ser mostrado na tela?\n")
		leia(numero)
		escreva("Numero  Dobro   Triplo\n")
		para(inteiro x = numero; x>0; x--){
          	escreva(x,"      ",x*x,"      ",x*x*x,"\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */