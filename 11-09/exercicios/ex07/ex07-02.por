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
		escreva("\nObrigado pelo seu voto.Programa finalizado!")
	    
	}

	funcao agregada(){
		inteiro numero = 0
		escreva("Qual tabuada  deseja ver na tela?\n")
		leia(numero)
		para(inteiro x = 1; x<=10; x++){
          	escreva(x,"x",numero,"=",x*numero,"\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */