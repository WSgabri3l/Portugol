programa {

  inclua biblioteca Texto --> tx

  funcao inicio() {

    //Variáveis relacionadas a palavra usada na forca:

    cadeia forca_palavra
    caracter palavra_separada [100], palavra_analisada [100]
    inteiro num_car_palavra

    //Variáveis relacionadas ao jogador:

    caracter letra

    //Variáveis relacionadas ao controle do código:
    
    logico loop_ativado_jogo, flag_certo, flag_repetido
    inteiro erros = 0, acertos = 0

    //Primeiro, apresenta-se o jogo e pegamos os dados para iniciá-lo.

    escreva ("JOGO DA FORCA!", "\n")
    escreva ("Digite uma palavra para começar a partida: ")
    leia (forca_palavra)
    escreva ("\n")
    limpa ()

    //Organizando os caracteres, contabilizando as letras e as guardando dentro de um vetor para serem lidas depois mais para frente.

    num_car_palavra = tx.numero_caracteres (forca_palavra)

    para (inteiro contador_1 = 0; contador_1 < num_car_palavra; contador_1 ++){

      palavra_separada [contador_1] = tx.obter_caracter (forca_palavra, contador_1)
      palavra_analisada [contador_1] = '_'
      
    }

    //Número de erros e acertos:

    acertos = num_car_palavra
    erros = 6

    //Lógica por trás do jogo:

    loop_ativado_jogo = verdadeiro

    enquanto (loop_ativado_jogo){

      //Escreve a palavra enquanto o jogador está jogando.

      para (inteiro contador_2 = 0; contador_2 < num_car_palavra; contador_2 ++){

        escreva (palavra_analisada[contador_2], " ")

      }

      //Avisa quantas chances restam ao jogador.

      escreva ("\n")
      escreva ("Você ainda tem ", erros, " chances.")

      //Recebe a letra do jogador.

      escreva ("\n")
      escreva ("Digite uma letra: ")
      leia (letra)
      escreva ("\n")
      

      flag_certo = falso
      flag_repetido = falso

      //Verifica se a letra do jogador existe na palavra, comparando a letra escolhida pelo jogador às aquelas
      //presentes no vetor que separa as letras das palavras e tambem ao vetor em que está presente a palavra
      //ocultada. Assim, saberemos se as letras escolhidas pelo usuário estão na palavra e se ela foi repetida ou não.

      para (inteiro contador_3 = 0; contador_3 < num_car_palavra; contador_3 ++){

        se (letra == palavra_separada[contador_3]){

          se (letra == palavra_analisada [contador_3]){

            flag_repetido = verdadeiro

          }senao{

            palavra_analisada[contador_3] = letra
            flag_certo = verdadeiro
            acertos --

          }
 
        }
      }

      //Verifica se o jogador irá pontuar ou não a partir da ativação das bandeiras.

      se (flag_repetido == verdadeiro){

        escreva ("\nVocê já usou a letra ", letra, ".\n")

      } senao se (flag_certo == verdadeiro){

        escreva ("\nVocê acertou uma das letras.\n")

      } senao{

        erros --

        escreva ("\nEssa letra não está na palavra.\n")

      }

      //Aqui, termina o jogo, invertendo o valor da variável lógica e assim desligando o loop "enquanto."

      se (acertos == 0){

        loop_ativado_jogo = falso

      }

      se (erros == 0){

        loop_ativado_jogo = falso

      }
    }//Fechamento do ENQUANTO.

    se (acertos == 0){

      escreva ("\n")
      escreva ("PARABÉNS, VOCÊ VENCEU O JOGO!")

    }

    se (erros == 0){

      escreva ("\n")
      escreva ("VOCÊ PERDEU, QUE PENA.")

    }
  }
}