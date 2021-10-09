programa{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tt
	caracter continue = 's'
	cadeia nomeChacara[50]
	inteiro saldoChacara[50]
	inteiro opc = 0
	inteiro opc2 = 0
	cadeia nomeParcial
	funcao inicio(){
		para(inteiro x=0; x<50; x++){
			nomeChacara[x] = "Vazio"
		}
		para(inteiro x=0; x<50; x++){
			saldoChacara[x] = 0
		}
		faca{

			body()
			//Verificação para coninuar ou não a execução do programa
			
			
		}
		enquanto(continue == 's')
	}


	funcao body(){
          limpa()
		escreva("*******Programa de empreendimentos imobiliáros*****",
		        "\n              Aluguel de chácaras\n\n" 
		       )
		escreva("1 - Atualizar a quantidade de chácaras",
		         "\n2 - Movimentação Financeira no Caixa da Imobiliária",
		         "\n3 - Listar saldos atual e individuais dos imóveis",
		         "\n\n9 - Finalizar programa"
			  )
	    
		leia(opc)
		enquanto(opc ==1){
			att()
		}
		enquanto(opc ==2){
			movimentacao()
		}
		enquanto(opc ==3){
			mostrar()
		}
		se(opc ==9){
			continue = 'q'
		}
	}
	
	funcao  rh(cadeia string, inteiro length, logico center){
		inteiro nCaracter = t.numero_caracteres(string)
		inteiro nTrac = length - nCaracter
		se(center){
			escreva("|")
			para(inteiro x=0; x <nTrac/2; x++){
				escreva(" ")
			}
			escreva(string)
			para(inteiro x=0; x <length-(nCaracter+nTrac/2); x++){
				escreva(" ")
			}
			escreva("|")
			
		}
		senao{
			escreva("|")
			escreva(string)
			para(inteiro x=0; x < nTrac ; x++){
				escreva(" ")
			}
			escreva("|")
		}
	}

	funcao att(){
		limpa()
		escreva("Cadastre a chácara digitando um número para posicionar a chácara:\n")
		leia(opc2)
		escreva("\nCadastre o nome da chácara:\n")
		leia(nomeParcial)
		nomeChacara[opc2-1] = nomeParcial
		escreva("\nCHÁCARA CADASTRADA COM SUCESSO! DESEJA CADASTRAR NOVAMENTE?(0 para não)\n")
		leia(opc2)
		se(opc2 == 0){
			opc = 0
		}
	}

	funcao movimentacao(){
		limpa()
		inteiro mov = 0
		inteiro chac = 0
		escreva("Selecione uma chácara para fazer a movimentação:\n")
		leia(chac)
		escreva("Adicione o gasto ou locro com o imovel:\n")
		leia(mov)
		saldoChacara[chac-1]+=mov
		escreva("MOVIMENTAÇÃO REALIZADA COM SUCESSO! DESEJA ADICIONAR MAIS MOVIMENTAÇÃO?:( 0 para não)\n")
		leia(chac)
		se(chac == 0){
			opc = 0
		}
	}

	funcao mostrar(){
		rh("Posição", 20, verdadeiro)
		rh("NOME", 20, verdadeiro)
		rh("SALDO", 20, verdadeiro)
		escreva("\n")
		para(inteiro x=0; x<50; x++){
			rh(tt.inteiro_para_cadeia(x+1, 10), 20, verdadeiro)
			rh(nomeChacara[x], 20, verdadeiro)
			rh(tt.inteiro_para_cadeia(saldoChacara[x], 10), 20, verdadeiro)
			escreva("\n")
		}
		escreva("Digite 0 para voltar ao menu inicial\n")
		leia(opc2)
		se(opc2 == 0){
			opc = 0
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1778; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */