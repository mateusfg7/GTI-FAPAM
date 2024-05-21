# verificação do maior valor
lista = []


while True:
    novo_valor = int(input("Digite um valor: "))
    lista.append(novo_valor)
    print("")

    exibir = input("Deseja exibir a lista? (s/n)")

    if exibir == "s":
        print(f"(I) N")
        for cont, item in enumerate(lista):    
            print(f"({cont}) {item}")

    print("Escolha uma opção:")
    print("[1]> Adicionar novo valor")
    print("[2]> Excluir valor")
    print("[3]> Finalizar")
    escolha = int(input("-> "))

    print("")
    if escolha == 1:
        continue
    elif escolha == 2:
        print(f"(I) N")
        for cont, item in enumerate(lista):    
            print(f"({cont}) {item}")
        excluir = int(input("Digite o índice do valor que deseja excluir: "))
        del lista[excluir]
    elif escolha == 3:
        break


maior = 0
menor = 0
soma = 0

for cont, item in enumerate(lista):
    if (item > maior) or cont == 0:
        maior = item

for cont, item in enumerate(lista):
    if (item < menor) or cont == 0:
        menor = item

for item in lista:
    soma += item


for cont, item in enumerate(lista):
    print(f"({cont}) {item}")

print(f"O maior valor é: {maior}")
print(f"O menor valor é: {menor}")
print(f"A média dos valores é: {soma / len(lista)}")