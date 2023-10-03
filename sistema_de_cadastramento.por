programa {
  funcao inicio() {

    inteiro opcao, limite_usuarios
    logico loop_ativado = verdadeiro
    cadeia nome, lista_nomes [100]

    escreva ("Quantos usuários serão cadastrados no site? ")
    leia (limite_usuarios)
    lista_nomes[limite_usuarios]

    enquanto (loop_ativado){

      escreva("\nDigite o número para: ")
      escreva("\n1- Cadastrar novo usuário.")
      escreva("\n2- Listar os usuários cadastrados.")
      escreva("\n3- Sair.")

      leia (opcao)

      escolha (opcao){

        caso 1:

        escreva("\nDigite o nome do usuário a ser cadastrado")
        leia (nome)

        para (inteiro contador_1 = 0; contador_1 < limite_usuarios; contador_1 ++){

          nome = lista_nomes [contador_1]
        }

        pare

        caso 2:

        escreva ("\nEssa é a lista de usuários já cadastrados: ")
      }
    }
    









  }
}
