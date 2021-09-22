programa{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	caracter continue = ' '
	inteiro voto[7]
	caracter tela = 'a'
	logico aguardaVoto = falso
	inteiro votar
	real total = 0.0
	funcao inicio(){
		faca{
			voto[6]=0
               enquanto(voto[6]==0){
			    body()
               }
			//Verificação para coninuar ou não a execução do programa
			escreva("Deseja continuar?")
			leia(continue)
		}
		enquanto(continue == 's')
	}


	funcao body(){
		
		montarTela()
		
		enquanto(aguardaVoto == falso){
			leia(votar)
			computarVoto(votar)
		}
	}

	funcao montarTela(){
		
		se(tela == 'a'){
			limpa()
		   tracejado(32)
		   escreva("\n| ELEIÇÃO - sistema de votação |\n")
		   tracejado(32)
		   escreva("\n1.Votar em João",
		           "\n2.Votar em Maria",
		           "\n3.Votar em Marcos",
		           "\n4.Votar em branco",
		           "\n5.Anular voto",
		           "\n6.Finalizar a votação\n",
		           "\nEscolha seu voto\n"
		          )
		   tela = 'n'
		   aguardaVoto = falso
		}
		se(tela == 'b'){
			limpa()
			escreva("*********VOTO COMPUTADO!***********")
			u.aguarde(3000)
			limpa()
			tela = 'a'
		}
		se(tela == 'i'){
			limpa()
			escreva("*********VOTO INVÁLIDO!***********")
			u.aguarde(3000)
			limpa()
			tela = 'a'
		}
		se(tela == 'f'){
			limpa()
			tracejado(32)
		     escreva("\n| ELEIÇÃO - resultado final |\n")
		     tracejado(32)
		     
		     escreva("\nJoão: ", voto[1],"(",m.arredondar(porcentagem(voto[1]), 2),"%) votos.\n",
		             "Maria: ", voto[2],"(",m.arredondar(porcentagem(voto[2]), 2),"%) votos.\n",
		             "Marcos: ", voto[3],"(",m.arredondar(porcentagem(voto[3]), 2),"%) votos.\n",
		             "Brancos: ", voto[4],"(",m.arredondar(porcentagem(voto[4]), 2),"%) votos.\n",
		             "Nulos: ", voto[5],"(",m.arredondar(porcentagem(voto[5]), 2),"%) votos.\n",
		             "Total de votos: ", m.arredondar(total,0),"\n"
		            )
		            tela = 'a'
                      total = 0.0
                      para(inteiro x = 0; x<7; x++){
                      	voto[x] = 0
                      }
		     u.aguarde(10000)
		     voto[6]++
		}
	}

	funcao  computarVoto(inteiro x){
		se(x<6){
		   tela = 'b'
		   voto[x]++
		   total++	
		}
		senao se(x==6){
		   tela = 'f'	
		}
		senao{
		   tela = 'i'
		}
		aguardaVoto = verdadeiro
		
	}

	funcao tracejado(inteiro y){
		para(inteiro x=0; x<y; x++){
		       escreva("-")
		    }
	}

	funcao real porcentagem(inteiro v){
		real porc = 0.0
		porc = 100/total
		porc = porc*v
		retorne porc
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */