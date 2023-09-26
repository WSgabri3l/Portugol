programa {
  funcao inicio() {

    inteiro total, teste, voto, temporizador, ara, rya, heb, cay, coe, nulo
    inteiro contador

    teste = 0

    temporizador = 1

    ara = 0
    rya = 0
    heb = 0
    cay = 0
    coe = 0
    nulo = 0

    //para (contador = 1; contador <= 5; contador ++){
    enquanto (temporizador != 0){

      escreva ("\nEm qual candidato deseja votar? ")

      escreva ("\n1) Aragão.")
      escreva ("\n2) Ryan.")
      escreva ("\n3) Heber.")
      escreva ("\n4) Cayo.")
      escreva ("\n5) Coelho")

      escreva ("\n9) Para sair")

      escreva ("\nEm quem deseja votar? ")

      leia (voto)

      escolha (voto){

        caso 1:
          escreva ("\nVocê votou em: Aragão.")
          ara ++
          pare

        caso 2:
          escreva ("\nVocê votou em: Ryan.")
          rya ++
          pare

        caso 3:
          escreva ("\nVocê votou em: Heber.")
          heb ++
          pare

        caso 4:
          escreva ("\nVocê votou em: Cayo.")
          cay ++
          pare

        caso 5:
          escreva ("\nVocê votou em: Coelho")
          coe ++
          pare

        caso 9:
          escreva ("\nSaindo...\n")
          temporizador = 0
          pare

        caso contrario:
          escreva ("\nNulo.")
          nulo ++
          pare
  
    }

    }

    total = ara + rya + heb + cay + coe + nulo

     ara = (ara / total) * 100
     rya = (rya / total) * 100
     heb = (heb / total) * 100
     cay = (cay / total) * 100
     coe = (coe / total) * 100
     nulo = (nulo / total) * 100

    escreva ("\nOs votos foram: \n", total, "\n")

    escreva ("\nAragão: ", ara, "%")
    escreva ("\nRyan: ", rya, "%")
    escreva ("\nHeber: ", heb, "%")
    escreva ("\nCayo: ", cay, "%")
    escreva ("\nCoelho: ", coe, "%")
    escreva ("\nNulo: ", nulo, "%")

 
    
  }
}
