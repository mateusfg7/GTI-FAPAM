"""
Desenvolva um programa para separar os valores da lista [9,8,7,12,0,13,21,35,6,11,1] em duas listas, uma com os pares e outra com os ímpares.
"""

lista = [9,8,7,12,0,13,21,35,6,11,1]

pares = []
impares = []

for item in lista:
    if item % 2 == 0:
        pares.append(item)
    else:
        impares.append(item)

print(f"Pares: {pares}")
print(f"Ímpares: {impares}")