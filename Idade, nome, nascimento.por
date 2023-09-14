programa {
  funcao inicio() {
    cadeia nome
    inteiro ano_nasc, ano_atual, result
    caracter resposta

    escreva ("Qual o seu nome? ")
    leia (nome)

    escreva ("Em que ano estamos? ")
    leia (ano_atual)

    escreva ("Em que ano nasceu? ")
    leia (ano_nasc)

    result = ano_atual - ano_nasc

    escreva ( nome,", no ano de ", ano_atual, " você tem ou terá: ", result)

    escreva ("\nA resposta está correta? (s/n) ")
    leia (resposta)

    enquanto (resposta != "s" ou "n"){

      escreva ("\nA resposta está correta? (s/n) ")
      leia (resposta)
    }

    se (resposta == "s"){

      escreva ("Eu acertei!")
    } se (resposta == "n"){

      escreva ("Eu errei...")
    }
  }
}
