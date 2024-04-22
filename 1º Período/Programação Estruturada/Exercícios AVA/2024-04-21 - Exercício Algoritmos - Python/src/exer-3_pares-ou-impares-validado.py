"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      21/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

limite = int(input("Digite um número\n-> "))

opcoes_validas = ["P", "I"]
opcao = ""
while opcao not in opcoes_validas:
  opcao = input("\nOpção | [P]ar ou [I]mpar\n-> ").upper()

  if opcao not in opcoes_validas:
    print("Opção inválida. Tente novamente.")

print()

if opcao == "P":
  for i in range(0, limite+1, 2):
    print(i)
elif opcao == "I":
  for i in range(1, limite+1, 2):
    print(i)