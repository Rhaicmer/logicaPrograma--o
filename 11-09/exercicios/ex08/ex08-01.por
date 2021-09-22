programa
{
	inclua biblioteca Matematica --> mat
	inteiro programaSelecionado
	funcao inicio()
	{
	  caracter continuar = ' '
	  
		escreva("*** Programa iniciado: Três em um... ***\n")
		faca{
			limpa()
               escreva("Três programas disponíveis\n\n",
                       "1: Mês do ano\n2: Cálculo de desconto de salário\n3: Cálculo de ganho e perca de peso\n\n",
                       "Selecione o programa a ser rodado, digitando 1, 2 ou 3: "
                       )
               leia(programaSelecionado)
               escolha(programaSelecionado){
               	caso 1:
               		_mes()
               		pare
               	caso 2:
               		_salario()
               		pare
               	caso 3:  
               		_peso()
               		pare
               	caso contrario:
               		limpa()
               		escreva("Opção Inválida...Tente novamente")  
               }
			escreva("\nVoltar para menu inicial(S)\nTerminar Programa(Qualquer outra tecla)")
			leia(continuar)
		}
		enquanto(continuar == 's' ou continuar == 'S' ) 
		escreva("\nObrigado pelo seu voto.Programa finalizado!")
	}
	

	funcao _mes(){
			inteiro mesDigitado = 0
		caracter continue = 's'
		cadeia mes[13] = {"","Janeiro", "Fevereiro", "Março",
		                     "Abril","Maio","Junho",
		                     "Julho","Agosto","Setembro",
		                     "Outubro","Novembro","Dezembro"
		                  }
		                  
		escreva("*** Programa iniciado: Mês do ano ***\n")
		
		faca{
			escreva("Selecione um número válido correspondente ao mês:\n")
			para(inteiro m = 1; m <13; m++){
				escreva(m,": ", mes[m],"\n")
			}
			leia(mesDigitado)
			se(mesDigitado >= 0 e mesDigitado <= 12){
				escreva("O mês selecionado foi: ",mes[mesDigitado])
				escreva("\nDeseja continuar?\n")
			     leia(continue)
			     limpa()
			}
			senao{
				limpa()
				escreva("Valor digitado '", mesDigitado,"' inválido! Tente novamente\n")
				
			}

			
		}
		enquanto(continue == 's' ou continue == 'S' )
		//escreva("\nVoltando para programaprincipal\n\n")
		programaSelecionado = 0
	}

	funcao _salario(){
		caracter continue = ' '
		escreva("*** Programa iniciado ***\nCáculos de desconto do salário do trabahador brasileiro")
		real salarioBruto = 0.00, salarioLiquido = 0.00, salarioDesconto1 = 0.00
		real valorTransporte = 300.00, emprestimo1 = 0.1, emprestimo2 = 0.2
		real valorEmprestimo1 = 0.00, valorEmprestimo2 = 0.00, totalEmprestimo = 0.00, totalDesconto = 0.00
		     
		faca{
			limpa()
			emprestimo2 = 0.2
			escreva("Informe o valor do salário bruto:\n")
			leia(salarioBruto)

			//calculando Saláriocom o primeiro desconto
			valorEmprestimo1 =  salarioBruto * emprestimo1
			salarioDesconto1 = salarioBruto - valorEmprestimo1 

			//calculando segundo desconto
			valorEmprestimo2 = salarioDesconto1 * emprestimo2
			se(valorEmprestimo2 > valorTransporte){
				emprestimo2 = 0.15
				valorEmprestimo2 = salarioDesconto1 * emprestimo2
			}
			totalEmprestimo = valorEmprestimo1 + valorEmprestimo2
			totalDesconto = totalEmprestimo + valorTransporte
			salarioLiquido = salarioBruto - totalDesconto
			escreva("Primeiro Empréstimo.: R$",mat.arredondar(valorEmprestimo1, 2),
			        "\nSegundo Empréstimo..: R$",mat.arredondar(valorEmprestimo2, 2),
			        "\nTotal do  Empréstimo: R$",mat.arredondar(totalEmprestimo, 2),
			        "\nTotal do  Transporte: R$",mat.arredondar(valorTransporte, 2),
			        "\nTotal dos  Descontos: R$",mat.arredondar(totalDesconto, 2),
			        "\nSalário Líquido.....: R$",mat.arredondar(salarioLiquido, 2)
			        )
               
			escreva("\n\n\nDeseja continuar?\n")
			leia(continue)
		}
		enquanto(continue == 's' ou continue == 'S' )
		//escreva("\nVoltando para programaprincipal\n\n")
		programaSelecionado = 0
	}

	funcao _peso(){
		caracter continue = ' '

		real peso, pesoMaior, pesoMenor
		escreva("*** Programa iniciado ***\n")
		faca{
			limpa()
               escreva("Informe seu peso (em Kg): \n")
               leia(peso)
               pesoMenor = peso -  peso*0.2
               pesoMaior = peso + peso*0.1

               escreva("O peso informado foi ", peso," Kg.\n",
                       "O peso caso imagreça 20% será de: ", pesoMenor," Kg.\n",
                       "O peso caso engorde 10% será de: ", pesoMaior, " Kg."
                      )
               
			escreva("\n\nDeseja continuar?\n")
			leia(continue)
		}
		enquanto(continue == 's' ou continue == 'S' )
		//escreva("\nVoltando para programaprincipal\n\n")
		programaSelecionado = 0
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1011; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */