import sys

"""
Nome:      Mateus Felipe Gonçalves <contato@mateusf.com>
Professor: Adjenor Cristiano
Data:      21/04/2024
Matéria:   Programação Estruturada
Turma:     1º Perí. B
"""

def e_primo(primo: bool = True):
  if primo:
    print(f"{numero} é primo.")
  else:
    print(f"{numero} não é primo.")
  
  sys.exit()

numero = int(input("Digite um número\n-> "))

if numero < 2:
  e_primo(primo=False)

primo = True
for i in range(2, numero):
  if numero % i == 0:
    primo = False
    break
  
e_primo(primo)


