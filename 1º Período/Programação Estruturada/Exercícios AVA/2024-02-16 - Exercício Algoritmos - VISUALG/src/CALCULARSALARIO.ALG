Algoritmo "CalcularSalario"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor Cristiano Queiroz
// Descri��o   : Algoritmo que l� o sal�rio total de
//               uma pessoa e quantas horas ela trabalha por dia,
//               e calcula e imprime quanto essa pessoa
//               recebe por hora.
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 16/02/2024
Var

   DIAS_NO_MES: inteiro
   dias_uteis:  inteiro

   salario:       real
   horas_por_dia: inteiro

   horas_por_mes:    inteiro
   salario_por_hora: real


Inicio

   DIAS_NO_MES <- 30

   escreval("-| CALCULAR SAL�RIO |------")
   escreval("")

   escreval("Seu sal�rio (Ex.: 1400.00)")
   escreva("-> ")
   leia(salario)

   escreval("")

   escreval("Horas de trabalho (Ex.: 8)")
   escreva("-> ")
   leia(horas_por_dia)

   escreval("")

   // 4 semanas no m�s, s�bado e domingo n�o conta, ou seja:
   // 4*2 = 8 dias n�o �teis
   dias_uteis <- DIAS_NO_MES - 8
   horas_por_mes <-  dias_uteis * horas_por_dia

   salario_por_hora <- salario/horas_por_mes

   escreva("Seu valor /hora = R$", salario_por_hora)

   escreval("")
Fimalgoritmo