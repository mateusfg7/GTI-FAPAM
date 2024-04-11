"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      10/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

# menu com 4 opções de salgados
print("+------ MENU SALGADOS -------+")
print("| [1] Coxinha ------ R$ 3,50 |")
print("| [2] Pastel ------- R$ 4,00 |")
print("| [3] Empada ------- R$ 3,00 |")
print("| [4] Enroladinho -- R$ 2,50 |")
print("+----------------------------+")
salgado = int(input("-> "))

if salgado < 1 or salgado > 4:
    print("Opção inválida.")
    exit()

# menu com 4 opções de bebidas
print("\n+------ MENU BEBIDAS --------+")
print("| [1] Refrigerante - R$ 3,00 |")
print("| [2] Suco --------- R$ 2,50 |")
print("| [3] Água --------- R$ 2,00 |")
print("| [4] Chá ---------- R$ 2,50 |")
print("+----------------------------+")
bebida = int(input("-> "))

if bebida < 1 or bebida > 4:
    print("Opção inválida.")
    exit()

# cálculo do valor total
total = 0

if salgado == 1:
    total += 3.50
elif salgado == 2:
    total += 4.00
elif salgado == 3:
    total += 3.00
elif salgado == 4:
    total += 2.50

if bebida == 1:
    total += 3.00
elif bebida == 2:
    total += 2.50
elif bebida == 3:
    total += 2.00
elif bebida == 4:
    total += 2.50

print("\nTotal a pagar: R$ %.2f" % total)