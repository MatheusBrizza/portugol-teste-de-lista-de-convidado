programa
{
	
	funcao inicio()
	{
	
		inteiro opcao
		cadeia lista[100]
		cadeia nome
		
		faca {
			mostrarMenu()
			leia(opcao)

			escolha(opcao) {
				caso 1:
					adicionarConvidado(lista)
					pare
				caso 2:
					listarConvidados(lista)
					pare
				caso 3:
					inteiro idConvidado
					caracter confirmar

					listarConvidados(lista)
					
					escreva("\nDigite o ID do convidado: ")
					leia(idConvidado)

					escreva("Deseja realmente excluir este convidado? (s/n) \n")
					leia(confirmar)
					se(confirmar == 's' ou confirmar == 'S') {
							
						se(lista[idConvidado] != "") {
							lista[idConvidado] = ""
							escreva("Convidado excluído\n")
						}
					}
					
					pare
				caso 4:
					escreva("funcionalidade não implementada \n")
					pare
				caso contrario:
					escreva("opcao inválida\n")
			}	
		} enquanto(opcao != 0)
	}

	funcao listarConvidados(cadeia lista[]) {
		para(inteiro i=0; i<100; i++) {
			se(lista[i] != "") {
				escreva(i, ".", lista[i], "\n\n")						
			}
		}
	}

	funcao adicionarConvidado(cadeia lista[]) {
		cadeia nome
		
		escreva("Digite o nome do convidado: \n")
		leia(nome)
		para(inteiro i=0; i<100; i++) {
			se(lista[i] == "") {
				lista[i] = nome
				escreva(nome, " foi adicionado à lista \n\n")
				pare
			}
		}
	}

	funcao mostrarMenu() {
		limpa()
		escreva("==>  LISTA DE CONVIDADOS  <== \n")
		escreva("MENU DE OPÇÕES\n")
		escreva("1) Adicionar nome\n")
		escreva("2) Listar nome\n")
		escreva("3) Remover convidado por id\n")
		escreva("4) Remover convidado por nome\n")
		escreva("0) Sair\n")
		escreva("Digite a opção: ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */