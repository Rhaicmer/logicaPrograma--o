programa{
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	inclua biblioteca Tipos --> t
	caracter continue = ' '
	inteiro qtd[11]
	real vlr[11]
	cadeia pdt[11]
	funcao inicio(){
		
		faca{
			
			inteiro fundo = g.criar_cor(255, 255, 255)
               inteiro tex = g.criar_cor(0, 0, 0)
			body()
			//Verificação para coninuar ou não a execução do programa
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(700, 500)
			g.definir_titulo_janela("Lista de Compras")

               g.definir_cor(fundo)
               g.limpar()

               g.definir_cor(tex)
               g.definir_tamanho_texto(45.0)
               g.desenhar_texto(0, 0, "******LISTA COMPLETA*******")
               
               g.definir_tamanho_texto(25.0)
               g.desenhar_texto(0, 60, "PRODUTO")
               g.desenhar_texto(170, 60, "QUANTIDADE")
               g.desenhar_texto(400, 60, "V UNITÁRIO")
               g.desenhar_texto(600, 60, "V TOTAL")
               
               para(inteiro x=1; x<11; x++){
               	g.desenhar_texto(0, 70+(x*40), pdt[x] )
               	g.desenhar_texto(220, 70+(x*40), t.inteiro_para_cadeia(qtd[x], 10) )
               	g.desenhar_texto(400, 70+(x*40), "R$")
               	g.desenhar_texto(435, 70+(x*40), t.real_para_cadeia(vlr[x]) )
               	g.desenhar_texto(600, 70+(x*40), "R$")
               	g.desenhar_texto(635, 70+(x*40), t.real_para_cadeia(vlr[x]*qtd[x]) )
               }
               real total = 0.0
               escreva("O valor todal dos produtos desta lista é: R$")
               para(inteiro x=1; x<11; x++){
               	total += vlr[x]*qtd[x]
               }
               escreva(total)
               
			g.renderizar()
			escreva("\n\nDeseja continuar?")
			leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao body(){
		
		limpa()
		escreva("******Lista de compras******\n")
		para(inteiro x=1; x<11; x++){
			escreva("Insira o nome do produto ",x,": \n")
			leia(pdt[x])
			escreva("Insira a quantidade do produto: \n")
			leia(qtd[x])
			escreva("Insira valor unitário do produto: \n")
			leia(vlr[x])
			limpa()
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */