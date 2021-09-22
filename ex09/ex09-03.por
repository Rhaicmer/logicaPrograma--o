programa{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	caracter continue = ' '
	real valor[] = {0.0}
	inteiro nProduto = 1
	real valorProduto = 0.0, valorEstoque = 0.0
	funcao inicio(){
		faca{

			body()
			//Verificação para coninuar ou não a execução do programa
			escreva("Deseja continuar?")
			leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao body(){
		
		faca{
			escreva("Digite o valor do produto ",nProduto," (Para sair coloque o valor  0):\nR$")
			leia(valorProduto)
			valorEstoque += valorProduto
			nProduto++
		}
		enquanto(valorProduto != 0.0)
		escreva("A soma dos valores dos produtos digitados é: ", valorEstoque,"\n\n1")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 564; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */