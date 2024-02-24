Algoritmo "Doacao"
// Disciplina: Programação Estruturada
// Professor:  Adjenor Cristiano
// Descrição:  Verifica disponibilidade de doação
// Autor(a):   Mateus Felipe Gonçalves <contato@mateusf.com>
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
      escreval("Você deve ter entre 19 e 69 anos para doar sangue!")
      Fimalgoritmo
   fimse


   escreval("Seu peso (Kg)")
   escreva("-> ")
   leia(peso)
   escreval("")

   se (peso < 50.0) entao
      escreval("Você deve ter pelomenos 50Kg para doar sangue!")
      Fimalgoritmo
   fimse


   escreval("Fez tatuagem no último ano")
   escreva("[sim|nao]-> ")
   leia(fez_tatuagem)
   escreval("")

   se (NAO(fez_tatuagem = "nao")) entao
      escreval("Você não pode doar sangue se tiver feito tatuagem no último ano!")
      Fimalgoritmo
   fimse


   escreval("Ingeriu alcool nas últimas 12 horas")
   escreva("[sim|nao]-> ")
   leia(ingeriu_alcool)
   escreval("")

   se (NAO(ingeriu_alcool = "nao")) entao
      escreval("Você não pode doar sangue se tiver bebido nas últimas 12 horas!")
      Fimalgoritmo
   fimse


   escreval("")
   escreval("Você pode ser um doador!")
   escreval("")
   
Fimalgoritmo