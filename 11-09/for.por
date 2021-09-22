programa{
	
	funcao inicio(){
		escreva("***Laço de repetição - FOR***\n")
		inteiro teste = 0,  numero
		real soma = 0.0

		escreva("Digite a quantidade de vezes que deseja somar\n")
		leia(teste)

		para(inteiro c = 1; c <= teste; c++){
			escreva("Digite o ", c, "° número:\n")
			leia(numero)
			soma += numero
			
		}
		escreva( "A soma dos números digitados é: ", soma,
			   "\nA média dos numeros digitado é: ",soma/teste
			   )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */