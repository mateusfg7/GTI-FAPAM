Algoritmo "ValorM�"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor Cristiano Queiroz
// Descri��o   : Algoritmo que l� as medidas de um
//               terreno retangular e calcule e imprime quanto
//               custa para construir uma casa que ocupe todo
//               esse terreno.
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 16/02/2024
Var

   VALOR_METRO_QUADRADO: real
   escolher_valor:       caractere

   altura_terreno:       real
   largura_terreno:      real

Inicio
   VALOR_METRO_QUADRADO <- 850

   escreval("-| FORMUL�RIO |-------------------------")
   escreval("")

   escreval("Largura do terreno (m)")
   escreva("-> ")
   leia(largura_terreno)

   escreval("")

   escreval("Altura do terreno (m)")
   escreva("-> ")
   leia(altura_terreno)

   escreval("")

   escreval("Escolher valor do m�? (Padr�o: R$850.00)")
   escreva("[sim|nao] -> ")
   leia(escolher_valor)

   escreval("")

   se escolher_valor = "sim" entao
      escreval("Valor do m� (Ex.: 900.00)")
      escreva("-> ")
      leia(VALOR_METRO_QUADRADO)

      escreval("")
   fimse

   escreval("-| RESULTADOS |-------------------------")
   escreval("")

   escreval("Tamanho do terreno  =", altura_terreno*largura_terreno, "m�")
   escreval("Custo de constru��o = R$", (altura_terreno*largura_terreno)*VALOR_METRO_QUADRADO)

   escreval("")
   escreval("----------------------------------------")



Fimalgoritmo