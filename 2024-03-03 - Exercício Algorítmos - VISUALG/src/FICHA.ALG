Algoritmo "Ficha"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor Cristiano
// Descrição   : Imprime o mês referente à um ID
// Autor(a)    : Mateus Felipe Gonçalves
// Data atual  : 03/03/2024
Var
   // Seção de Declarações das variáveis
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
      escreval("ERRO | O ano de nascimento não pode ser no futuro")
      interrompa()
   fimse

   se maiusc(sexo) = "M" entao
      comprimento <- "Sr."
   senao
      comprimento <- "Srª."
   fimse

   escreval("FICHA CADASTRAL")
   escreval(comprimento, " -- ", nome)
   escreval("Idade --", 2024 - ano_nasc)
   escreval("Cidade - ", cidade)


Fimalgoritmo