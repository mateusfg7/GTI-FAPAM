Algoritmo "NumerosParImparDecrescente"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor
// Descri��o   : Imprime n�meros pares ou �mpares em ordem decrescente at� o n�mero escolhido pelo usu�rio.
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 19/03/2024

Var
   numero, contador: inteiro
   opcao: caractere

Inicio
   escreva("Digite um n�mero: ")
   leia(numero)

   escreva("Escolha uma op��o (P para Par ou I para �mpar): ")
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
