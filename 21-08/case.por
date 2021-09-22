programa
{
	
	funcao inicio()
	{
		inteiro nota
		inteiro flag = 0
		caracter continue ='s'
		faca{
			escreva("O que achou do nosso lanche \n1)Ótimo \n2)Bom \n3)Ruim\nEscolha uma opão: \n")
			leia(nota)
			escolha(nota){
				caso 1:
					escreva("Lanche ótimo")
					continue =' '
					pare
				caso 2:
					escreva("Lanche bom")
					continue =' '
					pare
				caso 3:
					escreva("Lanche ruim")
					continue =' '
					pare
				caso contrario:
				 	limpa()
					escreva("Opção inválida.Tente novamente\n\n")
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
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */