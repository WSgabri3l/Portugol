programa {
  funcao inicio() {

    inteiro n1, n2, contador
    contador = 1

    enquanto (contador != 6){

      escreva ("Essa � a sua tentativa ", contador, ".", "\n")
      escreva ("Digite um n�mero: ")
      leia (n1)

      escreva ("Digite outro n�mero: ")
      leia (n2)

      se (n1 > n2){

        escreva (n1, " � o maior.\n")

      } senao {

        escreva (n2, " � o maior.\n")

      }

      contador ++

    }
    
  }
}
