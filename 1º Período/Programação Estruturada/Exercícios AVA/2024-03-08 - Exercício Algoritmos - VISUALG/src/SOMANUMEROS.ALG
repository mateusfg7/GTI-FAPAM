Algoritmo "SomaNumeros"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor Cristino
// Descri��o   : Soma v�rios n�meros fornecidos pelo usu�rio
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 08/03/2024
Var
   soma:   inteiro
   numero: inteiro
   continuar: caractere
   primeira_interacao: logico
   
Inicio
   continuar <- "SIM"
   primeira_interacao <- verdadeiro
   numero <- 0
   soma <- 0

   enquanto (maiusc(continuar) = "SIM") faca
      limpatela()

      se(primeira_interacao) entao
         primeira_interacao <- falso

         escreval("Digite um n�mero")
         escreva("-> ")
         leia(numero)
      senao
         escreval("Digite mais um n�mero")
         escreva("-> ")
         leia(numero)
      fimse

      soma <- soma + numero

      escreval()

      escreval("Deseja somar mais um n�mero?")
      escreva("-> ")
      leia(continuar)

   fimenquanto

   limpatela()

   escreval("Resultado da soma:")
   escreval()
   escreval("   [", soma, " ]   ")
Fimalgoritmo