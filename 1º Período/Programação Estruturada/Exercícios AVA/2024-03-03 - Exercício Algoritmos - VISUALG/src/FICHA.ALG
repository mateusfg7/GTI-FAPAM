Algoritmo "Ficha"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor Cristiano
// Descri��o   : Imprime o m�s referente � um ID
// Autor(a)    : Mateus Felipe Gon�alves
// Data atual  : 03/03/2024
Var
   // Se��o de Declara��es das vari�veis
   nome:        caractere
   sexo:        caractere
   cidade:      caractere
   ano_nasc:    inteiro
   comprimento: caractere

Inicio


   escreval("Nome")
   escreva("-> ")
   leia(nome)
   escreval("")

   escreval("Sexo [M|F]")
   escreva("-> ")
   leia(sexo)
   escreval("")

   escreval("Cidade")
   escreva("-> ")
   leia(cidade)
   escreval("")

   escreval("Ano de nascimento")
   escreva("-> ")
   leia(ano_nasc)
   escreval("")

   se ano_nasc > 2024 entao
      escreval("ERRO | O ano de nascimento n�o pode ser no futuro")
      interrompa()
   fimse

   se maiusc(sexo) = "M" entao
      comprimento <- "Sr."
   senao
      comprimento <- "Sr�."
   fimse

   escreval("FICHA CADASTRAL")
   escreval(comprimento, " -- ", nome)
   escreval("Idade --", 2024 - ano_nasc)
   escreval("Cidade - ", cidade)


Fimalgoritmo