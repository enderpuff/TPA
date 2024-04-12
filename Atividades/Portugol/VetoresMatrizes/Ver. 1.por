programa
{
	inclua biblioteca Texto --> txt
	
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

	const cadeia estados [28][2] = {
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
		
	funcao inicio() {	
		cadeia input
		leia(input)
		buscador_estado(input)
	}

	/**
	 * Função que fala o nome do estado de acordo com sua sigla, sendo essa input do usuário. (e vice-versa)
	 * @param {cadeia} sn -  O input do usuário, podendo ser a sigla de um estado, ou seu nome por extenso.
	 */
	funcao buscador_estado(cadeia sn) {
		logico valido = falso
		para (inteiro i=1;i<28;i++) {
			se (sn == estados[i][0]) {
				escreva("O nome do estado correspondente a sigla é " + estados[i][1])
				valido = verdadeiro
				pare
			} senao se (txt.caixa_alta(sn) == txt.caixa_alta(estados[i][1])) {
				escreva("A sigla correspondente ao estado é " + estados[i][0])
				valido = verdadeiro
				pare
			}
		}
		se (nao valido) {
			escreva("O estado não existe ou não foi registrado.")
		}
	}

	funcao cadeia extenso(inteiro num) {
		se (num < 10) {
			retorne unidades[num]
		} senao se (num == 10) {
			retorne "Dez"
		} senao se (num > 10 e num < 20) {
			retorne dezenas[num-11]	
		}
		retorne ""
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1890; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */