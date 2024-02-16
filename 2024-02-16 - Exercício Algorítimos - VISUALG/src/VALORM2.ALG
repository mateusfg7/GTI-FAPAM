Algoritmo "ValorM²"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano Queiroz
// Descrição   : Algoritmo que lê as medidas de um
//               terreno retangular e calcule e imprime quanto
//               custa para construir uma casa que ocupe todo
//               esse terreno.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 16/02/2024
Var

   VALOR_METRO_QUADRADO: real
   escolher_valor: caractere

   altura_terreno:       real
   largura_terreno:      real

Inicio
   VALOR_METRO_QUADRADO <- 850

   escreval("-| FORMULÁRIO |-------------------------")
   escreval("")

   escreval("Largura do terreno (m)")
   escreva("-> ")
   leia(largura_terreno)

   escreval("")

   escreval("Altura do terreno (m)")
   escreva("-> ")
   leia(altura_terreno)

   escreval("")

   escreval("Escolher valor do m²? (Padrão: R$850.00)")
   escreva("[sim|nao] -> ")
   leia(escolher_valor)

   escreval("")

   se escolher_valor = "sim" entao
      escreval("Valor do m² (Ex.: 900.00)")
      escreva("-> ")
      leia(VALOR_METRO_QUADRADO)

      escreval("")
   fimse
   
   escreval("-| RESULTADOS |-------------------------")
   escreval("")

   escreval("Tamanho do terreno  =", altura_terreno*largura_terreno, "m²")
   escreval("Custo de construção = R$", (altura_terreno*largura_terreno)*VALOR_METRO_QUADRADO)

   escreval("")
   escreval("----------------------------------------")



Fimalgoritmo