"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      21/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

total = 0.0
pedidos = []

while True:
  print("\n+" + " Cardápio ".center(31, "-") + "+")
  print("| [1] Hambúrguer ----- R$ 10.00 |")
  print("| [2] Pizza ---------- R$ 20.00 |")
  print("| [3] Refrigerante --- R$ 5.00  |")
  print("| [4] Batata Frita --- R$ 8.00  |")
  print("| [5] FINALIZAR PEDIDO          |")
  print("+" + "".center(31, "-") + "+")
  escolha = int(input("Escolha uma opção\n-> "))

  if escolha == 1:
    total += 10.00
    pedidos.append("Hambúrguer")
  elif escolha == 2:
    total += 20.00
    pedidos.append("Pizza")
  elif escolha == 3:
    total += 5.00
    pedidos.append("Refrigerante")
  elif escolha == 4:
    total += 8.00
    pedidos.append("Batata Frita")
  elif escolha == 5:
    break

print("\n" + "+" + " Pedido ".center(31, "-") + "+")

for pedido in pedidos:
  print(f"| {pedido} ".ljust(32, " ") + "|")

print("+" + "".center(31, "-") + "+")
print(f"| Total: R$ {total:.2f} ".ljust(32, " ") + "|")
print("+" + "".center(31, "-") + "+")

