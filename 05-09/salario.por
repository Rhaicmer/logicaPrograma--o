programa
{ 
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{    
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
		escreva("\nObrigado pelo seu voto.Programa finalizado!")
	    
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */