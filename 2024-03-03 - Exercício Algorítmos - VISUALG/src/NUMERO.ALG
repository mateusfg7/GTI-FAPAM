Algoritmo "Numero"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano
// Descrição   : Imprime o mês referente à um ID
// Autor(a)    : Mateus Felipe Gonçalves
// Data atual  : 03/03/2024
Var
   // Seção de Declarações das variáveis
   id: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite o número")
   escreva("-> ")
   leia(id)

   escreval("")

   escolha(id)
   caso 1
      escreval("Um")
   caso 2
      escreval("Dois")
   caso 3
      escreval("Três")
   caso 4
      escreval("Quatro")
   caso 5
      escreval("Cinco")
   caso 6
      escreval("Seis")
   caso 7
      escreval("Sete")
   caso 8
      escreval("Oito")
   caso 9
      escreval("Nove")
   caso 10
      escreval("Dez")
   outrocaso
      escreval("Valor inválido!")
   fimescolha

Fimalgoritmo