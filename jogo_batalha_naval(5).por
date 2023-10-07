programa {

  //Código feito com auxílio de: juneonju e Ryanmedeirosp.
  //Me falaram erros na matriz :)

  inclua biblioteca Util --> u

  funcao inicio() {

    //Variável que hospeda o jogo em si.

    inteiro tabela_naval [9] [7] = {      
      {3,0,1,0,0,0,1},
      {3,0,0,0,1,0,0},
      {3,0,0,1,0,3,3},
      {0,3,3,3,0,0,3},
      {1,0,0,0,2,2,0},
      {0,1,0,0,0,0,3},
      {0,1,0,0,2,2,3},
      {0,0,2,2,0,0,3},
      {0,0,0,0,2,2,0}
    }

    //Variável cópia que será alterada pelo jogador.

    inteiro tabela_naval_copia [9] [7]

    para (inteiro linha_copia = 0; linha_copia < 9; linha_copia ++){
      para (inteiro coluna_copia = 0; coluna_copia < 7; coluna_copia ++){

        tabela_naval_copia [linha_copia] [coluna_copia] = 0

      }
    }

    //Informações sobre o jogo.

    escreva ("BATALHA NAVAL\n")
    escreva ("Barcos número 3 valem 1 pontos e em sua volta há as suas outras partes.\n")
    escreva ("Barcos número 2 valem 2 pontos e em sua volta há as suas outras partes.\n")
    escreva ("Barcos número 1 valem 1 pontos.\n")

    escreva ("\nAguarde, estamos arrumando os barcos")

    para (inteiro contador = 0; contador < 10; contador ++){

      escreva (".")
      u.aguarde (1000)

    }

    
    //Variáveis de controle de jogo.

    inteiro linha_jogador, coluna_jogador

    logico loop_ativado = verdadeiro

    inteiro pontos_erros = 30, pontos_certos = 0

    //Início do jogo:

    enquanto (loop_ativado){

      logico flag_erro = falso, flag_certo = falso

      logico flag_3 = falso, flag_2 = falso, flag_1 = falso

      escreva ("\n")

      //Escreve todo a tabela de jogo do usuário.

      para (inteiro linha_1 = 0; linha_1 < 9; linha_1 ++){
        para (inteiro coluna_1 = 0; coluna_1 < 7; coluna_1 ++){

          escreva (tabela_naval_copia [linha_1] [coluna_1], " ")

        }escreva("\n") //Esse "\n" é importante estando aqui para pular a linha caso a linha termine.
      }

      //Mostra a pontuação do usuário.

      escreva ("\nVocê ainda pode errar: ", pontos_erros, ".\n")
      escreva ("\nVocê teve: ", pontos_certos, " acertos.\n")

      //Recebe as informações do jogador (linha e coluna)

      escreva ("\nDigite uma linha: (0 a 8)\n")
      leia (linha_jogador)

      escreva ("\nDigite uma coluna: (0 a 6)\n")
      leia (coluna_jogador)

      //Aqui, comparamos a linha do jogador com a linha que possui uns dos números que representam os barcos.
      //Depois usamos bandeiras de verdadeiro ou falso para definir a potuação ou diminuir as chances de jogo.

      para (inteiro linha_A = 0; linha_A < 9; linha_A ++){

        para (inteiro coluna_A = 0; coluna_A < 7; coluna_A ++){

          se ((tabela_naval [linha_A] [coluna_A] == 3) e (linha_jogador == linha_A e coluna_jogador == coluna_A)){

            tabela_naval_copia [linha_A] [coluna_A] = tabela_naval [linha_A] [coluna_A]
            flag_certo = verdadeiro
            flag_3 = verdadeiro

          } senao se ((tabela_naval [linha_A] [coluna_A] == 2) e (linha_jogador == linha_A e coluna_jogador == coluna_A)){

            tabela_naval_copia [linha_A] [coluna_A] = tabela_naval [linha_A] [coluna_A]
            flag_certo = verdadeiro
            flag_2 = verdadeiro

          } senao se ((tabela_naval [linha_A] [coluna_A] == 1) e (linha_jogador == linha_A e coluna_jogador == coluna_A)){

            tabela_naval_copia [linha_A] [coluna_A] = tabela_naval [linha_A] [coluna_A]
            flag_certo = verdadeiro
            flag_1 = verdadeiro

          } senao {

            flag_erro = verdadeiro

          }
        }
      }

      //Aqui define-se os pontos ou as perdas de chances a partir da ativação das flags.

      se (flag_erro == verdadeiro e flag_certo == falso e flag_1 == falso e flag_2 == falso e flag_1 == falso){

        pontos_erros --

      } senao se (flag_1 == verdadeiro) {

        pontos_certos = pontos_certos + 3

      } senao se (flag_2 == verdadeiro){

        pontos_certos = pontos_certos + 2

      } senao se (flag_3 == verdadeiro){

        pontos_certos = pontos_certos + 1
      }

      //Aqui finaliza-se o jogo caso as chances terminem ou atinja uma certa quantidade de pontos.

      se (pontos_certos >= 15){

        loop_ativado = falso
        escreva ("\nGANHOU\n")

      } 

      se (pontos_erros == 0){

        loop_ativado = falso
        escreva ("\nPERDEU\n")

      }
    }

    //Aqui simplesmente são mostrados onde estavam todos os barcos.

    escreva ("\nEstá é a localização exata dos barcos: \n")

    para (inteiro linha_2 = 0; linha_2 < 9; linha_2 ++){
        para (inteiro coluna_2 = 0; coluna_2 < 7; coluna_2 ++){

          escreva (tabela_naval [linha_2] [coluna_2], " ")

        }escreva("\n") //Esse "\n" é importante estando aqui para pular a linha caso a linha termine.
      }   
  }
}
