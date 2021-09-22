programa
{
	
	funcao inicio()
	{
	     cadeia presentationMessage = "Iniciando conversor de Milhas para Kilômetros\n"
		cadeia inputMessage = "Insira a distância em mph\n"
		cadeia outputMessage1 = "Você inseriu "
		cadeia outputMessage2 = " mph. Convertendo para kmh a distância será  "
		cadeia outputMessage3 = "Km/h"

		real inValue=0, logic = 1.60934, results= 0

		escreva(presentationMessage)
		escreva(inputMessage)
		leia(inValue)
		results = inValue*logic
		escreva(outputMessage1, inValue,outputMessage2, results,outputMessage3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */