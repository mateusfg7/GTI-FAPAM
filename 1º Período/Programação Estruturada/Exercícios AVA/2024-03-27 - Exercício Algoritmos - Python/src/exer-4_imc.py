"""
Programa que pede ao usuário para informar o peso e a altura com o comando leia, depois calcula e imprime na tela o IMC dessa pessoa sabendo que a fórmula do IMC é (peso/altura²).  

Aluno:     Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Curso:     Gestão da Tecnologia da Informação
Matéria:   Programação Estruturada
Turma:     1º Período - B
Data:      27/03/2024
"""

# Lê o peso
peso = float(input("Digite o peso (kg)\n-> "))

# Lê a altura
altura_cm = float(input("Digite a altura (cm)\n-> "))

# Calcula o IMC
imc = peso / (altura_cm/100) ** 2

# Imprime o IMC
print(f"\nO IMC é {imc:.2f}")