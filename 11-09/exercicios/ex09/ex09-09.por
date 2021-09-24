programa{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
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
		cadeia input = ""
		leia(input)
		//centralizar palavra
		rh(input, 20, verdadeiro)//1- palavra  2- quantidade total entre letras e traço 3- centralizado ou nao
		escreva("\n")
		rh("oi", 20, verdadeiro)
		escreva("\n")
		rh("Adriel", 20, verdadeiro)
		escreva("\n")
		rh("Guilherme", 20, verdadeiro)
		escreva("\n")
		rh("paralelepípedo", 20, verdadeiro)
		escreva("\n")
		//palavra ao canto
		rh("oi", 20, falso)
		escreva("\n")
		rh("Adriel", 20, falso)
		escreva("\n")
		rh("Guilherme", 20, falso)
		escreva("\n")
		rh("paralelepípedo", 20, falso)
		escreva("\n")
	}
	
	funcao  rh(cadeia string, inteiro length, logico center){
		inteiro nCaracter = t.numero_caracteres(string)
		inteiro nTrac = length - nCaracter
		se(center){
			
			para(inteiro x=0; x <nTrac/2; x++){
				escreva("-")
			}
			escreva(string)
			para(inteiro x=0; x <length-(nCaracter+nTrac/2); x++){
				escreva("-")
			}
			
		}
		senao{
			escreva(string)
			para(inteiro x=0; x < nTrac ; x++){
				escreva("-")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 286; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */