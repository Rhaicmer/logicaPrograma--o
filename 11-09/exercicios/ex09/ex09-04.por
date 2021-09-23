programa{
	inclua biblioteca Util --> u
	
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
		inteiro nfunc = 16
		real salarioFunc[16]
		escreva("******Apresentando lista de salário dos funcionários******\n")
		para(inteiro x=1; x<nfunc; x++){
			salarioFunc[x] = u.sorteia(770, 2000)
			escreva("Salário do Funcionário ",x,": R$", salarioFunc[x],"\n")
		}
		escreva("\nReajuste de 10% nos salário dos funcionários que ganham menos de R$1500,00\n")
		para(inteiro x=1; x<nfunc; x++){
			se(salarioFunc[x] < 1500.00){
				escreva("Funcionário ",x," recebeu um reajuste e agora seu salário é: R$", reajuste(salarioFunc[x]),"\n")
			}
			senao{
				escreva("Salário do Funcionário ",x,": R$",salarioFunc[x],"\n")
			}
		}
	}

	funcao real reajuste( real x){
		real val = 0.00
		val = x + (x/100*10)
		retorne val
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 729; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */