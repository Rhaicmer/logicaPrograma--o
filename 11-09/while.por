programa{
	
	funcao inicio(){	   
		escreva("***Repetição com teste no início - While***\n")
		inteiro contador = 1, limite = 0
		real numero, soma = 0.0
		escreva("Digite a quantidade denúmeros para a média\n")
		leia(limite)
		enquanto(contador <= limite){
			escreva("Digite o ", contador,"° número:\n")
			leia(numero)
			soma = soma + numero
			contador++
		}
		escreva("A soma dos valores digitado é: ", soma,"\n",
			   "A media dos valores digitados é: ", soma/limite,"\n\n"
			   )
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */