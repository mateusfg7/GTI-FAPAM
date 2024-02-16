algoritmo "MediaNotas"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano Queiroz
// Descrição   : Algoritmo que lê as três notas do aluno,
//               calcula e imprima no console a média que
//               ele obteve na disciplina.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 16/02/2024

var

   primeira_nota: inteiro
   segunda_nota:  inteiro
   terceira_nota: inteiro
   media: real
   loop:  caractere


inicio

   loop <- "sim"

   enquanto (loop = "sim") faca
      limpatela()
      escreval("-----| NOTAS |-----")
      escreval("")


      escreva("Primeira Nota --- ")
      leia(primeira_nota)
      escreva("Segunda Nota ---- ")
      leia(segunda_nota)
      escreva("Terceira Nota --- ")
      leia(terceira_nota)

      escreval("")

      media <- (primeira_nota+segunda_nota+terceira_nota)/3
      escreval("MÉDIA:", media)

      escreval("")
      escreval("-------------------")
      escreval("")
      escreval("Nova consulta? [sim|nao]")
      escreva("-> ")
      leia(loop)

   fimenquanto


fimalgoritmo