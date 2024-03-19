Algoritmo "NumerosParImparDecrescente"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor
// Descrição   : Imprime números pares ou ímpares em ordem decrescente até o número escolhido pelo usuário.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 19/03/2024

Var
   numero, contador: inteiro
   opcao: caractere

Inicio
   escreva("Digite um número: ")
   leia(numero)

   escreva("Escolha uma opção (P para Par ou I para Ímpar): ")
   leia(opcao)

   para contador de numero ate 0 passo -1 faca
      se (maiusc(opcao) = "P") entao
         se(contador % 2 = 0) entao
            escreval(contador)
         fimse
      senao se (maiusc(opcao) = "I") entao
         se(contador % 2 <> 0) entao
            escreval(contador)
         fimse
      fimse
   fimpara

Fimalgoritmo
