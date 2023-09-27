programa {
  funcao inicio() {

    inteiro quantidade, posicao = 0
    cadeia tipo_lista
    cadeia items_lista[10]
    logico loop_ativado = verdadeiro
    caracter pergunta

    enquanto (loop_ativado){


      escreva ("Qual o tipo de item estará na lista? ")
      leia (tipo_lista)
      escreva ("\n")

      escreva ("Quantos produtos estarão nessa lista? ")
      leia (quantidade)
      escreva ("\n")

      enquanto (posicao != quantidade){

        escreva ("A lista terá: ")
        leia (items_lista[posicao])
        escreva ("\n")

        posicao ++
    }

      escreva ("A lista de ", tipo_lista, " terá: ", "\n")

      para (inteiro posicao_dois = 0; posicao_dois < quantidade; posicao_dois ++){

        //escreva (items_lista, "\n")
        //escreva (posicao_dois,"\n")
     
        escreva (items_lista[posicao_dois],"\n")
    
    }

    escreva ("\nDeseja continuar? (s/n) \n")
    leia (pergunta)

    se (pergunta == "s"){
      //Você tem de zerar a variável para poder usa-lá novamente em um novo loop porque você não havia alterado ela ainda.
      //posicao = 0 
      loop_ativado 
    }senao{

      loop_ativado = falso
    }

    }
  }
}
