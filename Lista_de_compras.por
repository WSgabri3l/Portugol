programa {
  funcao inicio() {

    inteiro quantidade, posicao = 0 

    //Arrays:
    cadeia tipo_lista [10]
    cadeia items_lista[10]

    //"Ativador do loop ENQUANTO"
    logico loop_ativado = verdadeiro
    caracter pergunta

    enquanto (loop_ativado){

      //Isso seria para caso quisesse ver no final a quantidade de items...
      //inteiro soma = 0

      escreva ("Qual o tipo de lista desejas criar? (Limpeza, Higiene, Frutas, Verduras, Cereais) ")
      leia (tipo_lista)
      escreva ("\n")

      escreva ("Quantos produtos estarão nessa lista? ")
      leia (quantidade)
      escreva ("\n")

      enquanto (posicao != quantidade){

        //Guarda na lista "items_lista" as entradas do usuário. 

        escreva ("A lista terá: ")
        leia (items_lista[posicao])
        escreva ("\n")

        posicao ++

    }

      escreva ("A lista de ", tipo_lista, " terá: ", "\n")

      para (inteiro posicao_dois = 0; posicao_dois < quantidade; posicao_dois ++){

        escreva (items_lista[posicao_dois],"\n")

        //soma = soma + 1
        
    }

    //Para mostrar quantos items tem no final (mesmo sendo óbvio, já que você já disse no início do código.)

    //escreva ("\nA lista terá essa quantidade de items: ")
    //escreva ("\n", soma)
    //escreva("\n")

    escreva ("\nDeseja continuar? (s/n) \n")
    leia (pergunta)

    se (pergunta == "s"){

      //Você tem de zerar a variável para poder usa-lá novamente em um novo loop porque você não havia alterado ela ainda.
      posicao = 0 
      loop_ativado 

    }senao{

      loop_ativado = falso
    }

    }
  }
}
