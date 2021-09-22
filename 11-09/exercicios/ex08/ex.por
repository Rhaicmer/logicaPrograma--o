programa{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u

	inteiro l = 700, a = 500

	//incluir imagens
	inteiro joao = g.carregar_imagem("joao.jpg")
	inteiro maria = g.carregar_imagem("maria.jpeg")
	inteiro marcos = g.carregar_imagem("marcos.jpg")
	
	funcao inicio(){
		desenhaTela()
		
	}


	funcao desenhaTela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(l, a)
		g.definir_titulo_janela("Votação")
		enquanto(verdadeiro){
			limpaTela()
		}
		
	}

	funcao limpaTela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
          g.definir_cor(g.COR_PRETO)
          g.definir_tamanho_texto(30.0)
          para(inteiro x = 0; x < l; x++){
          	g.desenhar_texto(x*10, 5, "-")
          	g.desenhar_texto(x*10, 50, "-")
          }
		g.desenhar_texto(140, 30, "ELEIÇÃO - sistema de votação")
		
		g.desenhar_imagem(60, 100, joao)
		g.desenhar_texto(140, 100, "Candidato: João")
		g.desenhar_imagem(60, 200, maria)
		g.desenhar_texto(140, 200, "Candidato: Maria")
		g.desenhar_imagem(60, 300, marcos)
		g.desenhar_texto(140, 300, "Candidato: Marcos")
		g.renderizar()
		leia(l)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */