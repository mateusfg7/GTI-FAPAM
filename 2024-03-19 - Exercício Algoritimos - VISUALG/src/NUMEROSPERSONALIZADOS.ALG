Algoritmo "NumerosPersonalizados"
// Disciplina  : Programação Estruturada
// Professor   : Adjenor
// Descrição   : Pergunta ao usuário quantos números ele
//               quer imprimir e interrompe se for mais que 30.
// Autor(a)    : Mateus Felipe Gonçalves <contato@mateusf.com>
// Data atual  : 19/03/2024

Var
    contador, quantidade: Inteiro

Inicio
    escreval("Quantos números você deseja imprimir?")
    escreva("-> ")
    leia(quantidade)

    para contador de 1 ate quantidade faca
        se quantidade > 30 entao
            escreval("Número muito grande! O máximo permitido é 30.")
            interrompa
        senao
            escreval(contador)
        fimse
    fimpara

Fimalgoritmo
