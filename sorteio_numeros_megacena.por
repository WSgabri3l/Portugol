programa {

  inclua biblioteca Util --> u
  inclua biblioteca Texto --> tx

  funcao inicio() {

    //Variáveis usadas no código:

    inteiro num_megacena [2] [3], num_megacena_copia [2] [3]

    cadeia pergunta

    logico loop_ativado = verdadeiro

    //Criando a cartela de números de 1 a 60:

    escreva ("\nEsta é a cartela de números: \n")

    para (inteiro contador_1 = 1; contador_1 < 11; contador_1 ++){

      escreva (contador_1, "  ")
    }

    escreva("\n\n")

    para (inteiro contador_2 = 11; contador_2 < 21; contador_2 ++){

      escreva (contador_2, " ")
    }

    escreva("\n\n")

    para (inteiro contador_3 = 21; contador_3 < 31; contador_3 ++){

      escreva (contador_3, " ")
    }

    escreva("\n\n")

    para (inteiro contador_4 = 31; contador_4 < 41; contador_4 ++){

      escreva (contador_4, " ")
    }

    escreva("\n\n")

    para (inteiro contador_5 = 41; contador_5 < 51; contador_5 ++){

      escreva (contador_5, " ")
    }

    escreva("\n\n")

    para (inteiro contador_6 = 51; contador_6 < 61; contador_6 ++){

      escreva (contador_6, " ")
    }

    escreva("\n\n")

    //Aqui eu comecei o loop.

    enquanto (loop_ativado){

      para (inteiro linha = 0; linha < 2; linha ++){

        para (inteiro coluna = 0; coluna < 3; coluna ++){

          num_megacena [linha] [coluna] = u.sorteia (1, 60)

        }
      }

      para (inteiro ln = 0; ln < 2; ln ++){

          para (inteiro cl = 0; cl < 3; cl ++){

            num_megacena_copia [ln] [cl] = num_megacena [ln] [cl]

          }
        }

      escreva ("\nEsses são os números sorteados da vez: \n")

      para (inteiro linha_A = 0; linha_A < 2; linha_A ++){

          para (inteiro coluna_A = 0; coluna_A < 3; coluna_A ++){

            escreva (num_megacena [linha_A] [coluna_A], " ")

          }
        }

      escreva ("\n\nVocê deseja sortear novos números? (S/N)\n")
      leia (pergunta)
      pergunta = tx.caixa_baixa (pergunta)

      se (pergunta == "s"){

        escreva ("\nEstes foram os últimos números sorteados: \n")

        para (inteiro ln3 = 0; ln3 < 2; ln3 ++){

          para (inteiro cl3 = 0; cl3 < 3; cl3 ++){

            escreva (num_megacena_copia [ln3] [cl3], " ")
          }
        }

        escreva ("\n")

        loop_ativado = verdadeiro

      }senao se (pergunta == "n"){

        escreva ("Espero que possamos jogar novamente algum dia")

        para (inteiro contador = 0; contador < 7; contador ++){

          escreva (".")
          u.aguarde (500)
        }

        loop_ativado = falso

      }
    }    
  }
}
