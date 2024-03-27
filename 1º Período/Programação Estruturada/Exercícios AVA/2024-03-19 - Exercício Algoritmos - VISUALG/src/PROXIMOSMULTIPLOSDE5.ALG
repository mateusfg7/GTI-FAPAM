Algoritmo "ProximosMultiplosDe5"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor
// Descrição   : Imprime os próximos 10 números múltiplos de 5 a partir de um número fornecido pelo usuário.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 19/03/2024

Var
    numero, contador: Inteiro

Inicio
    escreva("Digite um número: ")
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
