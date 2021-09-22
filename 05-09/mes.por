programa
{
	
	funcao inicio()
	{    
		inteiro mesDigitado = 0
		caracter continue = 's'
		cadeia mes[13] = {"","Janeiro", "Fevereiro", "Março",
		                     "Abril","Maio","Junho",
		                     "Julho","Agosto","Setembro",
		                     "Outubro","Novembro","Dezembro"
		                  }
		                  
		escreva("*** Programa iniciado ***\n")
		
		faca{
			escreva("Selecione um número válido correspondente ao mês:\n")
			para(inteiro m = 1; m <13; m++){
				escreva(m,": ", mes[m],"\n")
			}
			leia(mesDigitado)
			se(mesDigitado >= 0 e mesDigitado <= 12){
				escreva("O mês selecionado foi: ",mes[mesDigitado])
				escreva("\nDeseja continuar?\n")
			     leia(continue)
			     limpa()
			}
			senao{
				limpa()
				escreva("Valor digitado '", mesDigitado,"' inválido! Tente novamente\n")
				
			}

			
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
 * @POSICAO-CURSOR = 731; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */