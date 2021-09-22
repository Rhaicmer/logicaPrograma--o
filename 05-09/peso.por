programa
{
	
	funcao inicio()
	{    
		caracter continue = ' '

		real peso, pesoMaior, pesoMenor
		escreva("*** Programa iniciado ***\n")
		faca{
			limpa()
               escreva("Informe seu peso (em Kg): \n")
               leia(peso)
               pesoMenor = peso -  peso*0.2
               pesoMaior = peso + peso*0.1

               escreva("O peso informado foi ", peso," Kg.\n",
                       "O peso caso imagreça 20% será de: ", pesoMenor," Kg.\n",
                       "O peso caso engorde 10% será de: ", pesoMaior, " Kg."
                      )
               
			escreva("\n\nDeseja continuar?\n")
			leia(continue)
		}
		enquanto(continue == 's' ou continue == 'S' )
		escreva("\nObrigado pelo seu voto.Programa finalizado!")
	    
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */