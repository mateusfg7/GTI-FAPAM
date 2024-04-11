"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      11/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

kwh = int(input("Quantidade de kWh consumido: "))

print("\n+- TIPO DE INSTALAÇÃO -+")
print("|  [R] Residencial     |")
print("|  [C] Comercial       |")
print("|  [I] Industrial      |")
print("+----------------------+")
instalacao = input("-> ").upper()

total = 0
if instalacao == "R":
    if kwh <= 500:
        total = kwh * 0.40
    else:
        total = kwh * 0.65
elif instalacao == "C":
    if kwh <= 1000:
        total = kwh * 0.55
    else:
        total = kwh * 0.60
elif instalacao == "I":
    if kwh <= 5000:
        total = kwh * 0.55
    else:
        total = kwh * 0.60
else:
    print("Tipo de instalação inválido.")
    exit()

print("\nTotal a pagar: R$ %.2f" % total)