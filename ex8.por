programa{
	inclua biblioteca Util
	caracter continue = ' '
	funcao inicio(){
	     escreva("Programa iniciado!!!\n\n")
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
		inteiro valores[50]
          limpa()
		//Atribuindo os valores aleatórios 
		escreva("Números sorteados: \n")
		para(inteiro x = 0; x<50; x++){
			valores[x] = Util.sorteia(0, 9999)
			escreva(valores[x],"\n")
		}
		//Organizando em ordem crescente os valores
		para(inteiro x=0; x<50; x++){
			para(inteiro y=0; y<50; y++){
				se(valores[y] > valores[x]){
					inteiro valorTemp = valores[y]
					valores[y] = valores[x]
					valores[x] = valorTemp
				}
			}
			
		}
		escreva("\nNúmeros em ordem crescente\n")
		para(inteiro x = 0; x<50; x++){
			escreva(valores[x],"\n")
		}
		escreva("Maior número sorteado: ", valores[49],
		        "\nMenor número sorteado: ", valores[0],
		        "\n"
			   )
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */