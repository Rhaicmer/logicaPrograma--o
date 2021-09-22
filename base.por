programa{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	caracter continue = ' '
	funcao inicio(){
		faca{

			tela()
			//Verificação para coninuar ou não a execução do programa
			escreva("Deseja continuar?")
			leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao tela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(700, 500)
		g.definir_titulo_janela("Votação")
		g.definir_cor(g.COR_AZUL)
		g.renderizar()
		u.aguarde(1000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */