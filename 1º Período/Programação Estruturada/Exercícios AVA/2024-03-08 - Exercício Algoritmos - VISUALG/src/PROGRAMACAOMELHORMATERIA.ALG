Algoritmo "ProgramacaoMelhorMateria"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor Cristino
// Descri��o   : Imprime uma mensagem N vezes
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 08/03/2024
Var
   quantidade: inteiro
   contador: inteiro
   certeza: caractere

Inicio
   certeza   <- "N�O"
   quantidade <- 0
   contador <- 0

   enquanto ((maiusc(certeza) = "N�O") OU (maiusc(certeza) = "NAO")) faca
      limpatela()

      escreval("Digite o n�mero de vezes")
      escreva("-> ")
      leia(quantidade)

      se (quantidade > 100) entao
         escreval()
         escreval("A mensagem ser� repedita", quantidade, " vezes!")
         escreval("Voc� tem certeza que quer continuar?")
         escreva("-> ")
         leia(certeza)
      senao
         certeza <- "SIM"
      fimse
   fimenquanto

   limpatela()

   enquanto (contador <= quantidade) faca
      contador <- contador + 1
      escreval("Programa��o � a melhor mat�ria!")
   fimenquanto

Fimalgoritmo