from os import system, name

nome = input("Digite seu nome: ")
sobrenome = input("Digite seu sobrenome: ")
n = int(input("Número de repetições: "))

# limpa terminal
if name == 'nt':
    # windows
    system('cls')
else:
    # outros unix (linux, mac...)
    system('clear')

for i in range(n):
    print(f"{nome} {sobrenome}")
