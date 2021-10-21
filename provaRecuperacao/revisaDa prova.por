programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tt

     cadeia nomeImovel[1000]  // variável que armazena o nome dos imóveis
     inteiro tranImovel[1000] //  variável que armazena o valor das transações
     caracter continue = 's' // variável de controle para encerrar ou não o programa
     inteiro opc = 0
     inteiro qtdImovel = 10
	funcao inicio()
	{ // inicio função inicio
	   para(inteiro x=0; x<qtdImovel; x++){
         	    nomeImovel[x] = "Não Cadastrado"
         }
	   faca{ // início da função faça

         
	   	escreva("*** PROGRAMA DE ALUGUEL DE CHÁCARAS ***\n\n",
	   	        "1 - Adicionar Chácara para o catálogo.\n",
	   	        "2 - Movimentação financeira da chácara.\n",
	   	        "3 - Listar saldos e chácaras disponíveis.\n\n",
	   	        "9 - Finalizar Programa.\n"
	   	       )
	   	leia(opc) // receber o valor da opção

	   	escolha(opc){ // com~ço do laço escolha
	   		caso 1:
	   			AddChacara()
	   			pare
	   		caso 2:
	   			Transacao()
	   			pare
	   		caso 3:
	   			Mostrar()
	   			pare
	   		caso 9:
	   			continue = 'a'
	   			pare
	   		caso contrario:
	   			limpa() // Limpa a tela do console
	   			escreva("Opção inválida. Esvolha um opção válida...\n\n")
	   		
	   	} // fim do laço escolha

	   	
	   } // fim da função faça
	   enquanto(continue == 's')
	} // fim da função início

	funcao AddChacara(){ //inicio da função AddChacara
		
		limpa() // Limpa a tela do console
		escreva("Escolha o código da nova Chácara (de 1 à ",qtdImovel,"):\n")
          inteiro codImovel = 0
          leia(codImovel) //Variavel que recebe o código da chácara.

          escreva("\nEntre com o nome da chácara:\n")
          cadeia nImovel
          leia(nImovel) // Variavel que recebe o nome da chacara

          nomeImovel[codImovel-1] = nImovel // adicionando o nome que eu digitei a posição do vetor que eu tbm digitei

          escreva("\nImovel ",nomeImovel[codImovel-1], " adicionado com sucesso com o código ",codImovel,"\n")

          u.aguarde(5000) // aguardar 5s

          limpa() // Limpa a tela do console
		
	} // fim da função AddChacara

	funcao Transacao(){ // inicio da função transação

		limpa() //Limpa a tela do console

		escreva("Escolha o código da chácara para adicionar receitas ou despesas(de 1 à ",qtdImovel,"):\n")
		inteiro recebaCod
		leia(recebaCod)

          escreva("\nImóvel selecionado: ",nomeImovel[recebaCod-1],"\n")
		escreva("\n\nDigite o valor a ser debitado:\n")
		inteiro recebaValor
		leia(recebaValor)

		tranImovel[recebaCod - 1] += recebaValor

		escreva("\nDebitado R$",recebaValor," do imóvel ",nomeImovel[recebaCod-1]," com sucesso\n")

          u.aguarde(5000) // aguardar 5s
          
          limpa()

		
	} // fim da função transação

	funcao Mostrar(){ // inicio da função mostrar
		
		limpa() // Limpa a tela do console
		escreva("----------------------------------------\n")
          rh("COD", 4, verdadeiro)
          rh("NOME IMOVEL",20, verdadeiro)
          rh("RECEITA", 10, verdadeiro)
          escreva("\n----------------------------------------\n")
		para(inteiro x=0; x<qtdImovel; x++){  // inico da função para
			rh(tt.inteiro_para_cadeia(x+1, 10), 4, verdadeiro)
			rh(nomeImovel[x], 20, verdadeiro)
			rh(tt.inteiro_para_cadeia(tranImovel[x], 10), 10, verdadeiro)
			escreva("\n")
		} // fim da função para
		escreva("----------------------------------------\n")

		inteiro recebe
		escreva("\n\nPara voltar ao menu iniciar digite qualquer número\n")
		leia(recebe)
		
		limpa() // Limpa a tela do console
		
	} // fim da função mostrar

	funcao  rh(cadeia string, inteiro length, logico center){ // começo da função rh
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
	} // fim da função rh
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */