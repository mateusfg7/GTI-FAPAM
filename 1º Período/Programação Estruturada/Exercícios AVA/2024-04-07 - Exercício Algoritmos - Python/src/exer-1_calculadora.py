"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      10/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

# lê dois números e uma operação
num1 = float(input("Digite o primeiro número: "))
num2 = float(input("Digite o segundo número: "))
operacao = input("Digite a operação [+|-|*|/]: ")

# exiba o resultado da operação solicidada
if operacao == "+":
    print(f"O resultado da soma é: {num1 + num2}")
elif operacao == "-":
    print(f"O resultado da subtração é: {num1 - num2}")
elif operacao == "*":
    print(f"O resultado da multiplicação é: {num1 * num2}")
elif operacao == "/":
    # 0 não pode ser dividido
    if num2 == 0:
        print("Não é possível dividir por zero.")
    else:
        print(f"O resultado da divisão é: {num1 / num2}")
else:
    print("Operação inválida.")