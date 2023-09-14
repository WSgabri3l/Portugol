programa {
  funcao inicio() {

    inteiro n1, n2, contador
    contador = 1

    enquanto (contador != 6){

      escreva ("Essa é a sua tentativa ", contador, ".", "\n")
      escreva ("Digite um número: ")
      leia (n1)

      escreva ("Digite outro número: ")
      leia (n2)

      se (n1 > n2){

        escreva (n1, " é o maior.\n")

      } senao {

        escreva (n2, " é o maior.\n")

      }

      contador ++

    }
    
  }
}
