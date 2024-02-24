Algoritmo "CalcularMulta"
// Disciplina: Programação Estruturada
// Professor:  Adjenor Cristiano
// Descrição:  Calcular Multa
// Autor(a):   Mateus Felipe Gonçalves  <contato@mateusf.com>
// Data atual: 23/02/2024
Var
   velocidade_permitida: inteiro
   velocidade_motorista: inteiro
   excedente: real

Inicio
   escreval("Velocidade máxima permitida (Km/h)")
   escreva("-> ")
   leia(velocidade_permitida)
   escreval("")

   escreval("Velocidade do motorista (Km/h)")
   escreva("-> ")
   leia(velocidade_motorista)
   escreval("")

   escreval("---------------------------------")
   escreval("")

   se (velocidade_motorista <= velocidade_permitida) entao
      escreva("Você não precisará pagar multa! ;)")
   senao
      excedente <- ((velocidade_motorista-velocidade_permitida)/velocidade_permitida)*100
      escreval("Você excedeu a velocidade máxima permitida em ", excedente:2:0, "%")
      escreval("")
      se (excedente <= 20.0) entao
         escreval("INFRAÇÃO MÉDIA")
         escreval("")

         escreval("Sua multa é de R$85,00")
         escreval("+ 4 pontos")
      senao
         se (excedente <= 50.0) entao
            escreval("INFRAÇÃO GRAVE")
            escreval("")

            escreval("Sua multa é de R$127,00")
            escreval("+ 5 pontos")
         senao
            escreval("INFRAÇÃO GRAVÍSSIMA")
            escreval("")

            escreval("Sua multa é de R$574,00")
            escreval("+ 7 pontos")
            escreval("Suspensão do direito de dirigir")
         fimse
      fimse
   fimse



Fimalgoritmo