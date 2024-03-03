Algoritmo "Cardápio"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano
// Descrição   : Imprime o mês referente à um ID
// Autor(a)    : Mateus Felipe Gonçalves
// Data atual  : 03/03/2024
Var
   prato: inteiro
   bebida: inteiro
   quer_bebida: caractere
   total: real
Inicio
   escreval("------------ PRATOS ------------")
   escreval("[1] Risoto ------------- R$25,00")
   escreval("[2] Espaguete ---------- R$22,00")
   escreval("[3] Strogonoff --------- R$30,00")
   escreval("[4] Macarrão na Chapa -- R$20,00")
   escreval("")
   escreva("-> ")
   leia(prato)
   escreval("")

   escreval("Aceita uma bebida? [S|N]")
   escreva("-> ")
   leia(quer_bebida)
   escreval("")

   se maiusc(quer_bebida) = "S" entao
      escreval("--------- BEBIDAS ---------")
      escreval("[1] Água Mineral -- R$ 3,00")
      escreval("[2] Coca Cola ----- R$ 5,00")
      escreval("[3] Limonada ------ R$ 5,00")
      escreval("[4] Jack&Coffee --- R$25,00")
      escreval("")
      escreva("-> ")
      leia(bebida)
      escreval("")
   fimse

   escreval("---------- PEDIDO ----------")
   escolha(prato)
   caso 1
      total <- 25.00
      escreval("Risoto ------------- R$25,00")
   caso 2
      total <- 22.00
      escreval("Espaguete ---------- R$22,00")
   caso 3
      total <- 30.00
      escreval("Strogonoff --------- R$30,00")
   caso 4
      total <- 20.00
      escreval("Macarrão na Chapa -- R$20,00")
   fimescolha

   se maiusc(quer_bebida) = "S" entao
      escolha(bebida)
      caso 1
         total <- total + 3.00
         escreval("Água Mineral ------- R$ 3,00")
      caso 2
         total <- total + 5.00
         escreval("Coca Cola ---------- R$ 5,00")
      caso 3
         total <- total + 5.00
         escreval("Limonada ----------- R$ 5,00")
      caso 4
         total <- total + 25.00
         escreval("Jack&Coffee -------- R$25,00")
      fimescolha
   fimse

   escreval("")
   escreval("TOTAL: R$", total:2:2)
Fimalgoritmo