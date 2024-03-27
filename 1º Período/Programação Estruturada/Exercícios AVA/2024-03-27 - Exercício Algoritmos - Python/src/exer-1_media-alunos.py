"""
Lê três notas do aluno, calcula e imprime a média no console.

Aluno:     Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Curso:     Gestão da Tecnologia da Informação
Matéria:   Programação Estruturada
Turma:     1º Período - B
Data:      27/03/2024
"""

# Lê as notas do aluno
nota1 = float(input("Digite a primeira nota: "))
nota2 = float(input("Digite a segunda nota: "))
nota3 = float(input("Digite a terceira nota: "))

# Calcula a média
media = (nota1 + nota2 + nota3) / 3

# Imprime a média
print(f"A média do aluno é {media:.2f}")
