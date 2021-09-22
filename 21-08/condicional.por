programa
{

	
	funcao inicio(){
		caracter continue= ' '
		faca{
			caracter letra
			escreva("*** Testando digitação deletra ***\n")
			escreva("Digite uma letra\n")
			leia(letra)
			se(letra =='a' ou letra =='A' ){
				escreva("Letra ", letra, " foi informada")
			}
			senao{
				escreva("Uma outra letra foi informada")
			}

			escreva("\nContinuar a execução do programa?")
			leia(continue)
			se(continue =='s' ou continue =='S' ){
				limpa()
				escreva("Reiniciando Programa\n\n")
			}
			senao{
				escreva("Finalizando programa")
			}
		}
		enquanto(continue =='s' ou continue =='S')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */