"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      11/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

nota1 = float(input("Nota 1: "))
nota2 = float(input("Nota 2: "))
nota3 = float(input("Nota 3: "))
nota4 = float(input("Nota 4: "))

if nota1 < 0 or nota1 > 25:
    print("Valor inválido.")
    exit()
elif nota2 < 0 or nota2 > 25:
    print("Valor inválido.")
    exit()
elif nota3 < 0 or nota3 > 25:
    print("Valor inválido.")
    exit()
elif nota4 < 0 or nota4 > 25:
    print("Valor inválido.")
    exit()

total = nota1 + nota2 + nota3 + nota4

if total >= 80:
    print("ALUNO APROVADO - EXCELENTE")
elif total >= 60:
    print("ALUNO APROVADO")
elif total >= 40:
    print("ALUNO EM RECUPERAÇÃO")
else:
    print("ALUNO REPROVADO")