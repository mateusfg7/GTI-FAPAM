Algoritmo "ProximosMultiplosDe5"
// Disciplina  : Programa��o Estruturada
// Professor   : Adjenor
// Descri��o   : Imprime os pr�ximos 10 n�meros m�ltiplos de 5 a partir de um n�mero fornecido pelo usu�rio.
// Autor(a)    : Mateus Felipe Gon�alves <contato@mateusf.com>
// Data atual  : 19/03/2024

Var
    numero, contador: Inteiro

Inicio
    escreva("Digite um n�mero: ")
    leia(numero)

    para contador de 1 ate 10 faca
        se numero % 5 = 0 entao
            escreval(numero)
            numero <- numero + 5
        senao
            numero <- numero + 1
        fimse
    fimpara
Fimalgoritmo
