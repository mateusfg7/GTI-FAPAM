Algoritmo "CalcularMulta"
// Disciplina: Programa��o Estruturada
// Professor:  Adjenor Cristiano
// Descri��o:  Calcular Multa
// Autor(a):   Mateus Felipe Gon�alves  <contato@mateusf.com>
// Data atual: 23/02/2024
Var
   velocidade_permitida: inteiro
   velocidade_motorista: inteiro
   excedente: real

Inicio
   escreval("Velocidade m�xima permitida (Km/h)")
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
      escreva("Voc� n�o precisar� pagar multa! ;)")
   senao
      excedente <- ((velocidade_motorista-velocidade_permitida)/velocidade_permitida)*100
      escreval("Voc� excedeu a velocidade m�xima permitida em ", excedente:2:0, "%")
      escreval("")
      se (excedente <= 20.0) entao
         escreval("INFRA��O M�DIA")
         escreval("")

         escreval("Sua multa � de R$85,00")
         escreval("+ 4 pontos")
      senao
         se (excedente <= 50.0) entao
            escreval("INFRA��O GRAVE")
            escreval("")

            escreval("Sua multa � de R$127,00")
            escreval("+ 5 pontos")
         senao
            escreval("INFRA��O GRAV�SSIMA")
            escreval("")

            escreval("Sua multa � de R$574,00")
            escreval("+ 7 pontos")
            escreval("Suspens�o do direito de dirigir")
         fimse
      fimse
   fimse



Fimalgoritmo