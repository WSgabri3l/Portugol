//Receba 4 notas e fa�a a m�dia entre elas.

programa {
  funcao inicio() {

    real nota1, nota2, nota3, nota4, media
    cadeia nome_materia

    escreva ("Qual a mat�ria? \n")
    leia (nome_materia)

    escreva ("Informe as notas: \n")
    escreva ("Nota 1: ")
    leia (nota1)
    escreva ("Nota 2: ")
    leia (nota2)
    escreva ("Nota 3: ")
    leia (nota3)
    escreva ("Nota 4: ")
    leia (nota4)

    media = (nota1 + nota2 + nota3 + nota4)/4

    escreva ("\nA m�dia em ", nome_materia, " � ", media, ".")
  
  }
}
