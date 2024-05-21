import os
from time import sleep

limpar = lambda: os.system("clear")

itens = []

while True:
    limpar()
    print("+-- MENU PRINCIPAL --+")
    print("| [1] Adicionar item |")
    print("| [2] Remover item   |")
    print("| [3] Listar itens   |")
    print("| [4] Sair           |")
    print("+--------------------+")
    opcao = input("-> ")
    
    if not opcao.isdigit():
        print("\nOpção inválida!")
        sleep(2)
        continue
    
    opcao = int(opcao)
    
    if opcao == 1:
        limpar()
        
        print("[ ADICIONAR ITEM ]\n")
        
        nome = input("Nome do item: ")
        quantidade = int(input("Quantidade: "))
        valor_unitario = float(input("Valor unitário: ").replace(",", "."))
        
        itens.append([nome, quantidade, valor_unitario])
        
        print("\nItem adicionado com sucesso!")
        sleep(2)
    elif opcao == 2:
        limpar()
        
        if len(itens) == 0:
            print("Nenhum item para remover!")
            sleep(2)
            continue
        
        print("[ REMOVER ITEM ]\n")
        
        print("[ID] Nome\n")
        for indice, item in enumerate(itens):
            print("[%d] %s" % (indice, item[0]))
        
        print("\nID do ítem que deseja remover")
        id_item = int(input("-> "))
        
        if id_item < 0 or id_item >= len(itens):
            print("\nID inválido!")
            sleep(2)
            continue
        else:
            del itens[id_item]
            print("\nItem removido com sucesso!")
            sleep(2)
    elif opcao == 3:
        limpar()
        
        print("[ ITENS ]\n")
        
        quantidade_total = 0
        valor_total = 0
        
        print("ID | Nome - Quantidade - Valor unitário (Valor total)")
        print("---|-----------------------------------------------")
        for indice, item in enumerate(itens):
            print("%d  | %s - %d unidade(s) - R$ %.2f (R$ %.2f)" % (indice, item[0], item[1], item[2], item[1] * item[2]))
            quantidade_total += item[1]
            valor_total += item[1] * item[2]
        
        print("\nQuantidade unitária de itens -- %d" % len(itens))
        print("Quantidade total de itens ----- %d" % quantidade_total)
        print("Valor total da compra --------- R$ %.2f" % valor_total)
        
        input("\nPressione enter para continuar...")
    elif opcao == 4:
        limpar()
        break
    else:
        print("\nOpção inválida!")
        sleep(2)