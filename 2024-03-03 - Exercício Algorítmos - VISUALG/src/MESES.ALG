Algoritmo "Meses"
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
   escreval("Digite o número do mês")
   escreva("-> ")
   leia(id)

   escreval("")

   escolha(id)
   caso 1
      escreval("Janeiro")
   caso 2
      escreval("Fevereiro")
   caso 3
      escreval("Março")
   caso 4
      escreval("Abril")
   caso 5
      escreval("Maio")
   caso 6
      escreval("Junho")
   caso 7
      escreval("Julho")
   caso 8
      escreval("Agosto")
   caso 9
      escreval("Setembro")
   caso 10
      escreval("Outubro")
   caso 11
      escreval("Novembro")
   caso 12
      escreval("Dezembro")
   outrocaso
      escreval("ID Inválido!")
   fimescolha

Fimalgoritmo