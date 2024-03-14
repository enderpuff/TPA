programa
{

	inclua biblioteca Matematica --> mat
	inclua biblioteca Util --> utl
		
	funcao inicio()
	{	
		/**
		 * O número que o usuário irá colocar para escolher uma função do menu
		 * @type {inteiro}
		 */
		inteiro input
		
		faca {
			escreva("\nOlá, o que gostaria de fazer?\n")
			escreva("1 - Calculadora\n")
			escreva("2 - Par ou Ímpar\n")
			escreva("3 - Área do Triângulo\n")
			escreva("4 - Comparação de números\n")
			escreva("5 - Sair\n\n")
			leia(input)
			escolha (input) {
				caso 1:
					real num1,num2
					inteiro input1
					escreva("\n\tEscolha o tipo de operação\n")
					escreva("\t1 - Adição\n")
					escreva("\t2 - Subtração\n")
					escreva("\t3 - Multiplicação\n")
					escreva("\t4 - Divisão\n")
					escreva("\t5 - Potenciação\n")
					escreva("\t6 - Radiciação\n\n\t")
					leia(input1)
					se (input1 <= 6 e input1 > 0) {
						escreva("\n\tEscreva um número! ")
						leia(num1)
						escreva("\n\tEscreva outro número! ")
						leia(num2)
						calc(input1,num1,num2)
					} senao {
						escreva("\n\tO valor que você escreveu é inválido!")	
					}
					utl.aguarde(2500)
					limpa()
					pare
				caso 2:
					inteiro num
					escreva("\nEscreva um número! ")
					leia(num)
					parOuImpar(num)
					utl.aguarde(2500)
					limpa()
					pare
				caso 3:
					real b,h
					escreva("\nEscreva a base do triângulo! ")
					leia(b)
					escreva("\nEscreva a altura do triângulo! ")
					leia(h)
					triangulo(b,h)
					utl.aguarde(2500)
					limpa()
					pare
				caso 4:
					real n1,n2
					escreva("\nEscreva um número: ")
					leia(n1)
					escreva("\nEscreva outro número: ")
					leia(n2)
					comparar(n1,n2)
					utl.aguarde(2500)
					limpa()
					pare
				caso 5:
					pare
				caso contrario:
					escreva("\nO valor que você escreveu é inválido!\n")
					utl.aguarde(2500)
					limpa()
					pare
			}
		} enquanto(input != 5)
	}

	/**
	 * Função que calcula o resultado de várias operações matemáticas.
	 * @param {inteiro} tipo - O tipo de operação que será realizada
	 * @param {real} num1 - O número que vem primeiro na operação
	 * @param {real} num2 - O número que vem em segundo na operação
	 */
	funcao calc(inteiro tipo, real num1, real num2) {
		escolha (tipo) {
			caso 1:
				escreva("\n\t" + num1 + " + " + num2 + " = " + " " + (num1+num2))
				pare
			caso 2:
				escreva("\n\t" + num1 + " - " + num2 + " = " + " " + (num1-num2))
				pare
			caso 3:
				escreva("\n\t" + num1 + " × " + num2 + " = " + " " + (num1*num2))
				pare
			caso 4: 
				escreva("\n\t" + num1 + " ÷ " + num2 + " = " + " " + (num1/num2))
				pare
			caso 5:
				escreva("\n\t" + num1 + " ^ " + num2 + " = " + " " + mat.potencia(num1,num2))
				pare
			caso 6:
				escreva("\n\t" + num1 + " √ " + num2 + " = " + " " + mat.raiz(num1,num2))
				pare
			caso contrario:
				pare
		}
	}

	/**
	 * Função que calcula a área de um triângulo simples.
	 * @param {real} b - Base do triângulo
	 * @param {real} h - Altura do triângulo
	 */
	funcao triangulo(real b, real h) {
		escreva("A área de seu triângulo é " + b*h*0.5 + "!\n")
	}

	/**
	 * Função que compara dois números
	 * @param {real} num1 - O número que vem primeiro na comparação
	 * @param {real} num2 - O número que vem em segundo na comparação
	 */
	funcao comparar(real num1, real num2) {
		se (num1 > num2) {
			escreva(num1 + " é maior que " + num2 + "!\n")	
		} senao se (num1 < num2) {
			escreva(num1 + " é menor que " + num2 + "!\n")
		} senao {
			escreva(num1 + " e " + num2 + " são iguais!\n")
		}
	}

	/**
	 * Função que converte o `logico` para algo mais legível.
	 * Veja `isEven`
	 * @param {inteiro} num - Número que será verificado
	 */
	funcao parOuImpar(inteiro num) {
		se (isEven(num)) 
			escreva("\nO número " + num + " é par!\n")
		senao
			escreva("\nO número " + num + " é ímpar!\n")
	}

	/**
	 * Função auxiliar para `parOuImpar`
	 * Verifica se um número é par ou ímpar
	 * @param {inteiro} num - Número que será verificado
	 */
	funcao logico isEven(inteiro num) {
		retorne num % 2 == 0
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4018; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */