Algoritmo "CalcularConta"
// Disciplina: Programação Estruturada
// Professor:  Adjenor Cristiano
// Descrição:  Calcula Conta do Cliente
// Autor(a):   Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual: 23/02/2024
Var
   id_do_produto: inteiro
   quantidade:    real
   total:         real

   loop: caractere

Inicio
   loop <- "sim"

   enquanto (loop = "sim") faca
      loop <- "nao"
      
      limpatela()
      escreval("+---------------------------------------+")
      escreval("|               SALGADOS                |")
      escreval("|---------------------------------------|")
      escreval("| Cód. |    Salgado    | Valor unitário |")
      escreval("|---------------------------------------|")
      escreval("| [1]  | Coxinha       |     R$0,50     |")
      escreval("| [2]  | Pastel        |     R$0,75     |")
      escreval("| [3]  | Pão de Queijo |     R$0,40     |")
      escreval("| [4]  | Enroladinho   |     R$0,80     |")
      escreval("+---------------------------------------+")
      escreval("")
      escreva("Cód. -> ")
      leia(id_do_produto)
      escreva("Qtd. -> ")
      leia(quantidade)

      escolha id_do_produto
      caso 1
         total <-  quantidade*0.50
      caso 2
         total <-  quantidade*0.75
      caso 3
         total <-  quantidade*0.40
      caso 4
         total <-  quantidade*0.80
      fimescolha

      escreval("")
      escreval("TOTAL: R$", total:4:2)
      escreval("")

      escreval("Nova compra?")
      escreva("[sim|nao]-> ")
      leia(loop)
   fimenquanto

Fimalgoritmo