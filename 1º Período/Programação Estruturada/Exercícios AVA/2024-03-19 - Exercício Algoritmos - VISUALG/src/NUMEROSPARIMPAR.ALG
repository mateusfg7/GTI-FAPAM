Algoritmo "NumerosParImpar"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor
// Descri��o   : Imprime n�meros pares ou �mpares at�
//               o n�mero escolhido pelo usu�rio.
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 19/03/2024
Var
   numero, contador: Inteiro
   opcao: caractere
Inicio
   escreva("Digite um n�mero: ")
   leia(numero)

   escreva("Escolha uma op��o (P para Par ou I para �mpar): ")
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
