"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      10/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

valor_casa = float(input("Digite o valor da casa: R$ ").strip().replace(",", "."))
salario = float(input("Digite o salário: R$ ").strip().replace(",", "."))
anos = int(input("Digite a quantidade de anos a pagar: "))

meses = anos * 12

prestacao = valor_casa / meses

if prestacao > (salario * 0.3):
    print("Empréstimo negado.")
else:
    print(f"Empréstimo aprovado. A prestação será de R$ {prestacao:.2f}.")