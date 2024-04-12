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
			cadeia opcoesPrincipal[] = {
				"Calculadora",
				"Par ou Ímpar",
				"Área do Triângulo",
				"Comparação de Números",
				"Tabuada",
				"Jogo - Adivinha números",
				"Super analisador de números 2000",
				"Coleção de dados para usos completamente não corporativos",
				"Sair"
			}
			menuPrint(opcoesPrincipal, falso)
			escreva("\n")
			leia(input)
			escolha (input) {
				caso 1:
					cadeia subOpcoes[] = {
						"Adição",
						"Subtração",
						"Multiplicação",
						"Divisão",
						"Potenciação",
						"Radiciação"
					}
					real num1,num2
					inteiro input1
					
					escreva("\n\tEscolha o tipo de operação\n")
					menuPrint(subOpcoes, verdadeiro)
					escreva("\n\t")
					
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
					inteiro t
					escreva("\nEscreva um número: ")
					leia(t)
					tabuada(t)
					utl.aguarde(2500)
					limpa()
					pare
				caso 6:
					inteiro numAdv = 0
					escreva("\n-------------------- JOGO DA ADIVINHAÇÃO --------------------\n")
					escreva("Nesse jogo, você precisará adivinhar um número aleatório de 1 a 10 valendo um bajilhão de dólares.\nVocê tem quantas chances quiser\n\n")
					jogo(numAdv)
					utl.aguarde(2500)
					limpa()
					pare
				caso 7:
					analizador2000()
					utl.aguarde(2500)
					limpa()
					pare
				caso 9:
					pare
				caso contrario:
					escreva("\nO valor que você escreveu é inválido!\n")
					utl.aguarde(2500)
					limpa()
					pare
			}
		} enquanto(input != 9)
	}

	/**
	 * Função para escrever o menu.
	 * @param {cadeia[]} opcoes - As opções que serão escritas no console
	 * @param {logico} subMenu - Se o menu escrito é um subMenu ou não
	 */
	funcao menuPrint(cadeia opcoes[], logico subMenu){
		para(inteiro i=0;i<utl.numero_elementos(opcoes);i++) {
			se (subMenu) {
			escreva("\t" + (i+1) + " - " + opcoes[i] + "\n")
			} senao {
			escreva((i+1) + " - " + opcoes[i] + "\n")
			}
		}
	}

	/**
	 * Função do jogo de adivinhação
	 * @param {inteiro} usr - O número que o usuário adivinhou
	 */
	funcao jogo(inteiro usr) {
		inteiro rand = Util.sorteia(1,10)
		faca {
			escreva("Escreva sua aposta! ")
			leia(usr)
		}enquanto(usr != rand)
		escreva("Você ganhou! ")
	}

	/**
	 * Função do Super Analizador de Números 2000
	 */
	funcao analizador2000() {
		inteiro numeros
		inteiro N=0,par=0,impar=0,maior=0,maiorpos=0,menor=9999,menorpos=0
		
		escreva("\n<--------------------SUPER ANALISADOR 2000-------------------->\n")
		escreva("\nQuantos números deseja analisar? ")
		leia(numeros)
		
		para(inteiro i=1;i<numeros+1;i++) {
			escreva("Escreva o " + i + "° número: ")
			leia(N)
			se (N%2==0) {
				par++	
			} senao {
				impar++
			}

			se (N>maior) {
				maior=N
				maiorpos=i
			} 
			se (N<menor) {
				menor=N
				menorpos=i
			}
		}
		
		escreva("\n<--------------------RESULTADOS-------------------->\n")
		escreva("\nVocê escreveu " + par + " números pares e " + impar + " números ímpares!\n")
		escreva("O maior número que escreveu foi " + maior + " na posição " + maiorpos + ", e o menor " + menor + " na posição " + menorpos + "!\n")
		escreva("Até a proxima!!\n")
	}

	/**
	 * Função que escreve a tabuada no console
	 * @param {inteiro} num - O número do qual a tabuada será escrita
	 */
	funcao tabuada(inteiro num) {
		para (inteiro i=1;i<=10;i++){
			escreva("\n" + num + " × " + i + " = " + (num*i))
		}	
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
 * @POSICAO-CURSOR = 2323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */