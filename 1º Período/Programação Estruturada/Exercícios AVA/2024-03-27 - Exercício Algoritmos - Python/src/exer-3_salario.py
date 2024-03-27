"""
Programa que lê o salário total de uma pessoa e quantas horas ela trabalha por dia. Em seguida, calcula e imprime quanto essa pessoa recebe por hora. Considerando o mês com 30 dias. 

Aluno:     Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Curso:     Gestão da Tecnologia da Informação
Matéria:   Programação Estruturada
Turma:     1º Período - B
Data:      27/03/2024
"""

# Lê o salário total
salario = float(input("Digite o salário total\n-> "))

# Lê a quantidade de horas trabalhadas por dia
horas_por_dia = float(input("Digite a quantidade de horas trabalhadas por dia\n-> "))

# Calcula horas trabalhadas no mês
horas_por_mes = horas_por_dia * 30

# Calcula o valor da hora
valor_hora = salario / horas_por_mes

# Imprime o valor da hora
print(f"\nO valor da hora é R$ {valor_hora:.2f}")