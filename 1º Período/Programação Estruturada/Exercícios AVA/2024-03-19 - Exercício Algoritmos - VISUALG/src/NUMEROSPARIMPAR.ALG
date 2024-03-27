Algoritmo "NumerosParImpar"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor
// Descrição   : Imprime números pares ou ímpares até
//               o número escolhido pelo usuário.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 19/03/2024
Var
   numero, contador: Inteiro
   opcao: caractere
Inicio
   escreva("Digite um número: ")
   leia(numero)

   escreva("Escolha uma opção (P para Par ou I para Ímpar): ")
   leia(opcao)

   para contador de 0 ate numero faca
      se (opcao = "P") entao
         se contador % 2 = 0 entao
            escreval(contador)
         fimse
      senao se (opcao = "I") entao
         se contador % 2 <> 0 entao
            escreval(contador)
         fimse
      fimse
   fimpara
Fimalgoritmo
