Algoritmo "Doacao"
// Disciplina: Programa��o Estruturada
// Professor:  Adjenor Cristiano
// Descri��o:  Verifica disponibilidade de doa��o
// Autor(a):   Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual: 23/02/2024
Var
   idade:          inteiro
   peso:           real
   fez_tatuagem:   caractere
   ingeriu_alcool: caractere

Inicio
   escreval("Sua idade")
   escreva("-> ")
   leia(idade)
   escreval("")

   se ((idade < 19) OU (idade > 69)) entao
      escreval("Voc� deve ter entre 19 e 69 anos para doar sangue!")
      Fimalgoritmo
   fimse


   escreval("Seu peso (Kg)")
   escreva("-> ")
   leia(peso)
   escreval("")

   se (peso < 50.0) entao
      escreval("Voc� deve ter pelomenos 50Kg para doar sangue!")
      Fimalgoritmo
   fimse


   escreval("Fez tatuagem no �ltimo ano")
   escreva("[sim|nao]-> ")
   leia(fez_tatuagem)
   escreval("")

   se (NAO(fez_tatuagem = "nao")) entao
      escreval("Voc� n�o pode doar sangue se tiver feito tatuagem no �ltimo ano!")
      Fimalgoritmo
   fimse


   escreval("Ingeriu alcool nas �ltimas 12 horas")
   escreva("[sim|nao]-> ")
   leia(ingeriu_alcool)
   escreval("")

   se (NAO(ingeriu_alcool = "nao")) entao
      escreval("Voc� n�o pode doar sangue se tiver bebido nas �ltimas 12 horas!")
      Fimalgoritmo
   fimse


   escreval("")
   escreval("Voc� pode ser um doador!")
   escreval("")
   
Fimalgoritmo