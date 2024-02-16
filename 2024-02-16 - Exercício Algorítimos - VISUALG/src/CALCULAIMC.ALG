Algoritmo "CalculaIMC"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano Queiroz
// Descrição   : Calcula IMC de uma pessoa
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 16/02/2024
Var

   preso_em_km:  real
   altura_em_cm: inteiro

   IMC: inteiro


Inicio

   escreval("# CALCULADORA IMC ########")
   escreval("")

   escreval("Seu peso /Kg (Ex.: 59.9)")
   escreva("-> ")
   leia(preso_em_km)

   escreval("")

   escreval("Altura /cm (Ex.: 170)")
   escreva("-> ")
   leia(altura_em_cm)

   escreval("")

   escreval("# RESULTADOS #############")
   escreval("")

   escreval("Seu IMC =", preso_em_km/((altura_em_cm/100)^2))

   escreval("")
   escreval("##########################")


Fimalgoritmo