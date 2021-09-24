programa{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> T
	caracter continue = ' '
	
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
		cadeia nTimes[11]
		inteiro pontos[11]

		//ler os nomes dos times e gerar a pontuação
		para(inteiro x=1; x<11; x++){
			escreva("Escreva o nome do time ",x,": \n")
			leia(nTimes[x])
			pontos[x] = u.sorteia(0, 70)
		}
          escreva("\n\n")

          // gerando tabela de times
          rh("Tabela de times", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=1; x<11; x++){
			rh(nTimes[x], 20, verdadeiro)
			rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			escreva("\n")
		}
		

		//Organizando todos em ordem crescente
		
          para(inteiro x=1; x<11; x++){
          	para(inteiro y=1; y<11; y++){
          		se(pontos[x] < pontos[y]){
          			inteiro temp = pontos[x]
          			pontos[x] = pontos[y]
          			pontos[y] = temp

          			cadeia temp2 = nTimes[x]
          			nTimes[x] = nTimes[y]
          			nTimes[y] = temp2
          		}
          	}
          }

          escreva("\n\n")
          rh("Tabela de times em ordem", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			rh(nTimes[x], 20, verdadeiro)
			rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			escreva("\n")
		}

		//mostrando o campeao e o rebaixado
		escreva("\n")
		escreva("O time campeão foi: ",nTimes[10], " com ", pontos[10]," pontos\n",
		        "O time rebaixado foi: ",nTimes[1], " com ", pontos[1]," pontos\n"
		       )

		//lista com pontuação pares
		escreva("\n\n")
          rh("Tabela pontos pares", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			se(pontos[x]%2==0){
			  rh(nTimes[x], 20, verdadeiro)
			  rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			  escreva("\n")
			}
		}

		//lista com pontuação impares
		escreva("\n\n")
          rh("Tabela pontos ímpares", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			se(pontos[x]%2==1){
			  rh(nTimes[x], 20, verdadeiro)
			  rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			  escreva("\n")
			}
		}

		//lista com pontuação impares
		escreva("\n\n")
          rh("Tabela pontos maiores 50", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			se(pontos[x] > 50){
			  rh(nTimes[x], 20, verdadeiro)
			  rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			  escreva("\n")
			}
		}

		//lista com pontuação impares
		escreva("\n\n")
          rh("Tabela pontos menores 50", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			se(pontos[x] < 50){
			  rh(nTimes[x], 20, verdadeiro)
			  rh(T.inteiro_para_cadeia(pontos[x],10), 20, verdadeiro)
			  escreva("\n")
			}
		}

		//lista com pontuação pares com dobro
		escreva("\n\n")
          rh("Tabela pontos pares/dobro", 42, verdadeiro)
          escreva("\n")
          rh("TIMES", 20, verdadeiro)
          rh("PONTOS", 20, verdadeiro)
          escreva("\n")
		para(inteiro x=10; x>0; x--){
			se(pontos[x]%2==0){
			  rh(nTimes[x], 20, verdadeiro)
			  rh(T.inteiro_para_cadeia(pontos[x]*2,10), 20, verdadeiro)
			  escreva("\n")
			}
		}

		
		
	}
	
	funcao  rh(cadeia string, inteiro length, logico center){
		inteiro nCaracter = t.numero_caracteres(string)
		inteiro nTrac = length - nCaracter
		se(center){
			escreva("|")
			para(inteiro x=0; x <nTrac/2; x++){
				escreva("-")
			}
			escreva(string)
			para(inteiro x=0; x <length-(nCaracter+nTrac/2); x++){
				escreva("-")
			}
			escreva("|")
			
		}
		senao{
			escreva("|")
			escreva(string)
			para(inteiro x=0; x < nTrac ; x++){
				escreva("-")
			}
			escreva("|")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2415; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */