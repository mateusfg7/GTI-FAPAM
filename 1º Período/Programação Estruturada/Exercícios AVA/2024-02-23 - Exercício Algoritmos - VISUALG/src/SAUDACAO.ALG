Algoritmo "Sauda��o"
// Disciplina: Programa��o Estruturada
// Professor:  Adjenor Cristiano
// Descri��o:  Sauda��es
// Autor(a):   Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual: 23/02/2024
Var
   nome: caractere
   sexo: caractere

Inicio
   escreval("Seu nome")
   escreva("-> ")
   leia(nome)

   escreval("")

   escreval("Seu sexo (apenas letra) | Ex.: M")
   escreval("[M] Masculino")
   escreval("[F] Feminino")
   escreva("-> ")
   leia(sexo)

   escreval("")

   se (sexo = "M") entao
      escreva("Bem Vindo ", nome, "!")
   senao
      escreva("Bem Vinda ", nome, "!")
   fimse

   escreval("")



Fimalgoritmo