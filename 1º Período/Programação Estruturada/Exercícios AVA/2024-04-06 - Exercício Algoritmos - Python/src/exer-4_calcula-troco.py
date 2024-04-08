valor_compra = float(input('Digite o valor da compra: '))
valor_pago = float(input('Digite o valor pago: '))

troco = valor_pago - valor_compra

if troco < 0:
    print('\nValor pago insuficiente, falta R$ %.2f.'%abs(troco))
else:
    print('\nTroco: R$ %.2f'%troco)
