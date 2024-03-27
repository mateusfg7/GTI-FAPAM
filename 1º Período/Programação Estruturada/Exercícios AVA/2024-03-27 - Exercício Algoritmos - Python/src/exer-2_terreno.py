"""
Programa que lê as medidas de um terreno retangular e calcula e imprime quanto custa para construir uma casa que ocupe esse terreno.
O m² de construção custa R$ 850,00.

Aluno:     Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Curso:     Gestão da Tecnologia da Informação
Matéria:   Programação Estruturada
Turma:     1º Período - B
Data:      27/03/2024
"""

# Lê as medidas do terreno
largura = float(input("Digite a largura do terreno: "))
comprimento = float(input("Digite o comprimento do terreno: "))

# Calcula a área do terreno
area = largura * comprimento

# Calcula o custo da construção
custo = area * 850

# Imprime o custo da construção
print(f"O custo para construir uma casa nesse terreno é R$ {custo:.2f}")
