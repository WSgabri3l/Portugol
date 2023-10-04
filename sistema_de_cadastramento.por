 programa {

    inclua biblioteca Util --> u

  funcao inicio() {

    inteiro opcao, limite_usuarios, quantidade_usuarios = 0, quantidade_idades = 0, copia_limite_usuarios
    logico loop_ativado = verdadeiro
    cadeia nome, lista_nomes [100]
    inteiro idade, lista_idade [100]

    escreva ("Quantos usuários serão cadastrados no site? ")
    leia (limite_usuarios)
    lista_nomes[limite_usuarios]

    copia_limite_usuarios = limite_usuarios

    enquanto (loop_ativado){

      escreva("\nDigite o número para: ")
      escreva("\n1- Cadastrar novo usuário.")
      escreva("\n2- Listar os usuários cadastrados.")
      escreva("\n3- Sair.")
      escreva("\n\n")

      leia (opcao)

      escolha (opcao){

        caso 1:

        escreva ("\nEspaços disponíveis: ", copia_limite_usuarios, ".\n")

        se (limite_usuarios > quantidade_usuarios){

          escreva("\nDigite o nome do usuário a ser cadastrado: ")
          leia (nome)

          escreva ("\nDigite a idade do usuário: ")
          leia (idade)

          lista_nomes [quantidade_usuarios] = nome

          quantidade_usuarios = quantidade_usuarios + 1

          lista_idade [quantidade_idades] = idade 

          quantidade_idades = quantidade_idades + 1

          copia_limite_usuarios = copia_limite_usuarios - 1

        } senao {

          escreva ("\nLimite de usuários atingidos, desculpe.\n")

        }

        pare

        caso 2:

        escreva ("\nEssa é a lista de usuários já cadastrados: ")

        para (inteiro contador_2 = 0; contador_2 < quantidade_usuarios; contador_2 ++){
          escreva ("\n", lista_nomes [contador_2])
          escreva (", ", lista_idade [contador_2], ".")
        }

        escreva ("\n")

        pare

        caso 3: 

        escreva ("\nFinalizando")

        para (inteiro contador_3 = 0; contador_3 < 7; contador_3 ++){

          escreva (".")
          u.aguarde (500)
        }

        escreva ("\n")

        loop_ativado = falso

        pare

        caso contrario:

        escreva ("\nOpção inválida.")

        pare
      }
    }
  }
}
