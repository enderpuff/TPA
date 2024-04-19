programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> utl
	
	/**
	 * ATIVIDADES - VETORES E MATRIZES
	 */

 	const cadeia unidades[] = {
 		"Zero",
		"um",
		"dois",
		"três",
		"quatro",
		"cinco",
		"seis",
		"sete",
		"oito",
		"nove"
	}

	const cadeia dezenas[] = {
		"Onze",
		"Doze",
		"Treze",
		"Catorze",
		"Quinze",
		"Dezesseis",
		"Dezessete",
		"Dezoito",
		"Dezenove",
		"vinte",
		"trinta",
		"quarenta",
		"cinquenta",
		"sessenta",
		"oitenta",
		"noventa"
	}

	const cadeia centenas[] = {
		"cento",
		"duzentos",
		"trezentos",
		"quatrocentos",
		"quinhentos",
		"seiscentos",
		"setecentos",
		"oitocentos",
		"novecentos"	
	}

	const cadeia diasDaSemana[7][2] = {
		{"0", "Domingo"},
		{"1", "Segunda-Feira"},
		{"2", "Terça-Feira"},
		{"3", "Quarta-Feira"},
		{"4", "Quinta-Feira"},
		{"5", "Sexta-Feira"},
		{"6", "Sábado"}
	}

	const cadeia estados[28][2] = {
		{"AC", "Acre"},
		{"AL", "Alagoas"},
		{"AP", "Amapá"},
		{"AM", "Amazonas"},
		{"BA", "Bahia"},
		{"CE", "Ceará"},
		{"DF", "Distrito Federal"},
		{"ES", "Espírito Santo"},
		{"GO", "Goiás"},
		{"MA", "Maranhão"},
		{"MT", "Mato Grosso"},
		{"MS", "Mato Grosso do Sul"},
		{"HG", "Mercúrio"},
		{"MG", "Minas Gerais"},
		{"PA", "Pará"},
		{"PB", "Paraíba"},
		{"PR", "Paraná"},
		{"PE", "Pernambuco"},
		{"PI", "Piauí"},
		{"RJ", "Rio de Janeiro"},
		{"RN", "Rio Grande do Norte"},
		{"RS", "Rio Grande do Sul"},
		{"RO", "Rondônia"},
		{"RR", "Roraima"},
		{"SC", "Santa Catarina"},
		{"SP", "São Paulo"},
		{"SE", "Sergipe"},
		{"TO", "Tocantins"}
	}

	const cadeia menu[] = {
		"Dias da Semana",
		"Estados Brasileiros",
		"Extenso",
		"Sair"
	}
		
	funcao inicio() {	
		inteiro input
		faca {
			escreva("Olá, qual programa deseja utilizar?\n")
			menuPrint(menu, falso)
			leia(input)
			escolha (input) {
				caso 1:
					cadeia diasemana
					escreva("Nesse programa, você poderá colocar um dia da semana e ele retornará o número, e vice-versa.\nEscreva o dia ou número: ")
					utl.aguarde(2500)
					limpa()
					pare
				caso 2:
					cadeia estadao
					escreva("Nesse programa, você irá escrever o nome de um estado, e a sigla será retornada, e vice-versa.\nEscreva o estado ou sigla: ")
					leia(estadao)
					buscador_estado(estadao)
					utl.aguarde(2500)
					limpa()
					pare
				caso 3:
					inteiro ex
					escreva("a")
					leia(ex)
					escreva(extenso(ex))
					utl.aguarde(2500)
					limpa()
					pare
				caso 4:
					pare
				caso contrario:
					escreva("A opção que selecionou é inválida!")
					utl.aguarde(2500)
					limpa()
					pare
			}
		} enquanto(input != 4)
	}

	/**
	 * Função para escrever o menu.
	 * @param {cadeia[]} opcoes - As opções que serão escritas no console
	 * @param {logico} subMenu - Se o menu escrito é um subMenu ou não
	 */
	funcao menuPrint(cadeia opcoes[], logico subMenu){
		para(inteiro i=0;i<utl.numero_elementos(opcoes);i++) {
			escreva((i+1) + " - " + opcoes[i] + "\n")
		}
	}

	/**
	 * Função que fala o nome do estado de acordo com sua sigla, sendo essa input do usuário. (e vice-versa)
	 * @param {cadeia} sn -  O input do usuário, podendo ser a sigla de um estado, ou seu nome por extenso.
	 */
	funcao buscador_estado(cadeia sn) {
		logico valido = falso
		para (inteiro i=1;i<28;i++) {
			se (txt.caixa_alta(sn) == txt.caixa_alta(estados[i][0])) {
				escreva("\nO nome do estado correspondente a sigla é " + estados[i][1])
				valido = verdadeiro
				pare
			} senao se (txt.caixa_alta(sn) == txt.caixa_alta(estados[i][1])) {
				escreva("\nA sigla correspondente ao estado é " + estados[i][0])
				valido = verdadeiro
				pare
			}
		}
		se (nao valido) {
			escreva("\nO estado não existe ou não foi registrado.")
		}
	}

	funcao cadeia extenso(inteiro num) {
		se (num < 10) {
			retorne unidades[num]
		} senao se (num == 10) {
			retorne "Dez"
		} senao se (num > 10 e num <= 20) {
			retorne dezenas[num-11]	
		} //senao se (num >= 20 e num < 100) {
			
		/*}*/ senao se (num == 100) {
			retorne "Cem"
		}
		retorne ""
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3945; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */