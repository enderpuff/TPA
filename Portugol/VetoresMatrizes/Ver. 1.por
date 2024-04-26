programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> utl
	inclua biblioteca Tipos --> tp
	
	/**
	 * ATIVIDADES - VETORES E MATRIZES
	 */

 	cadeia extenso[] = {
 		"Zero",
		"Um",
		"Dois",
		"Três",
		"Quatro",
		"Cinco",
		"Seis",
		"Sete",
		"Oito",
		"Nove",
		"Dez",
		"Onze",
		"Doze",
		"Treze",
		"Catorze",
		"Quinze",
		"Dezesseis",
		"Dezessete",
		"Dezoito",
		"Dezenove"
	}

	const cadeia diasDaSemana[7][2] = {
		{"1", "Domingo"},
		{"2", "Segunda-Feira"},
		{"3", "Terça-Feira"},
		{"4", "Quarta-Feira"},
		{"5", "Quinta-Feira"},
		{"6", "Sexta-Feira"},
		{"7", "Sábado"}
	}

	const cadeia meses[12][2] = {
		{"1", "Janeiro"},
		{"2", "Fevereiro"},
		{"3", "Março"},
		{"4", "Abril"},
		{"5", "Maio"},
		{"6", "Junho"},
		{"7", "Julho"},
		{"8", "Agosto"},
		{"9", "Outubro"},
		{"10", "Setembro"},
		{"11", "Novembro"},
		{"12", "Dezembro"}	
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
		"Dias da Semana/Mês",
		"Estados Brasileiros",
		"Extenso",
		"Megasena"
	}
		
	funcao inicio() {
		/*extenso[20] = "Vinte"
		extenso[30] = "Trinta"
		extenso[40] = "Quarenta"
		extenso[50] = "Cinquenta"
		extenso[60] = "Sessenta"
		extenso[70] = "Setenta"
		extenso[80] = "Oitenta"
		extenso[90] = "Noventa"*/
		
		inteiro input
		cadeia continue
		faca {
			escreva("\nOlá, qual programa deseja utilizar?\n")
			menuPrint(menu, falso)
			leia(input)
			escolha (input) {
				caso 1:
					limpa()
					dias_semana()
					escreva("\nDeseja continuar? (S/n) ")
					leia(continue)
					limpa()
					pare
				caso 2:
					limpa()
					cadeia estadao
					escreva("Nesse programa, você irá escrever o nome de um estado, e a sigla será retornada, e vice-versa.\nEscreva o estado ou sigla: ")
					leia(estadao)
					buscador_estado(estadao)
					escreva("\nDeseja continuar? (S/n) ")
					leia(continue)
					limpa()
					pare
				caso 3:
					limpa()
					inteiro ex
					escreva("a")
					leia(ex)
					//escreva(paraExtenso(ex))
					escreva("\nDeseja continuar? (S/n) ")
					leia(continue)
					limpa()
					pare
				caso contrario:
					limpa()
					escreva("A opção que selecionou é inválida!")
					escreva("\nDeseja continuar? (S/n) ")
					leia(continue)
					limpa()
					pare
			}
		} enquanto(txt.caixa_alta(continue) == "S" ou txt.caixa_alta(continue) == "SIM")
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
	 * 
	 */
	funcao dias_semana() {
		cadeia dnm
		escreva("\nNesse programa, você poderá colocar um dia da semana ou mês e ele retornará o número, e vice-versa.")
		
		caracter semanames = 'S'
		logico valido = falso
		escreva("\nDeseja consultar [S]emana ou [M]ês? [S/M] ")
		leia(semanames)
		
		se (tp.cadeia_para_caracter(txt.caixa_alta(tp.caracter_para_cadeia(semanames))) == 'S') {
			escreva("\nEscreva o dia ou número: ")
			leia(dnm)
			
			para (inteiro i=0;i<=7;i++) {
				se (txt.caixa_alta(dnm) == txt.caixa_alta(diasDaSemana[i][0])) {
					escreva("\nO nome do dia da semana correspondente ao número é " + diasDaSemana[i][1])
					valido = verdadeiro
					pare
				} senao se (txt.caixa_alta(dnm) == txt.caixa_alta(diasDaSemana[i][1])) {
					escreva("\nO número correspondente ao dia da semana é " + diasDaSemana[i][0])
					valido = verdadeiro
					pare
				}
			}
			se (nao valido) {
				escreva("\nO número ou dia da semana escrito é inválido.")
			}
		} senao se (tp.cadeia_para_caracter(txt.caixa_alta(tp.caracter_para_cadeia(semanames))) == 'M') {
			escreva("\nEscreva o mês ou número: ")
			leia(dnm)
			
			para (inteiro i=0;i<=12;i++) {
				se (txt.caixa_alta(dnm) == txt.caixa_alta(meses[i][0])) {
					escreva("\nO nome do mês correspondente ao número é " + meses[i][1])
					valido = verdadeiro
					pare
				} senao se (txt.caixa_alta(dnm) == txt.caixa_alta(meses[i][1])) {
					escreva("\nO número correspondente ao mês é " + meses[i][0])
					valido = verdadeiro
					pare
				}
			}
			se (nao valido) {
				escreva("\nO número ou mês escrito é inválido.")
			}
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

	/*funcao cadeia paraExtenso(inteiro num) {
		
	}*/
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */