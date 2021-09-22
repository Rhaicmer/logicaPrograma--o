programa{
     inclua biblioteca Util
	caracter continue = ' '
	funcao inicio(){
	     escreva("Programa iniciado!!!\n\n")
		faca{

			agregar()
			//Verificação para coninuar ou não a execução do programa
			//escreva("Deseja continuar?")
			//leia(continue)
			
		}
		enquanto(continue == 's')
	}


	funcao agregar(){
		//Declaração de variáveis
	     inteiro codigoAluno = 0, nota1 = 0, nota2 = 0, nota3 = 0, media = 0
	     logico codigoValido = verdadeiro
	     //Assimilando código do aluno e verificando se o código foi válido
	     
	     faca{
	     	limpa()
	     	se(codigoValido == falso){
	     		
	     		escreva("Código inválido\n")
	     	}
	     	escreva("Insira o código do aluno (3 dígitos numéricos): \n")
	          leia(codigoAluno)
	          se(codigoAluno > 999){
	          	codigoValido = falso
	          	limpa()
	          }
	          senao{
	          	codigoValido = verdadeiro
	          }
	     }
	     enquanto(codigoValido == falso)

	     escreva("CÓDIGO DO ALUNO: ",codigoAluno)

	     //Assimilando as 3 notas
	     escreva("\nInsira a nota 1: \n")
	     leia(nota1)
	     escreva("Insira a nota 2: \n")
	     leia(nota2)
	     escreva("Insira a nota 3: \n")
	     leia(nota3)

	     //tirando a média
	     media = (nota1 + nota2 + nota3) / 3

	     //Verificando se o aluno não zerou a nota
	     se(media > 0 ){
	     	escreva("A média das notas do aluno ", codigoAluno, " é ", media,"\n")
	     	continue = 's'
	     	Util.aguarde(3000)
	     }
	     senao{
	     	escreva(" O aluno ", codigoAluno, " zerou a média. Terminando Programa!")
	     	continue = 'a'
	     }
	     
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */