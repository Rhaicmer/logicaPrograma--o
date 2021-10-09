def Vtotal(qtd1, v1, qtd2, v2):
    caixa = int(qtd1) * float(v1) + int(qtd2) * float(v2)
    print("VALOR A PAGAR: R$ {:.2f}".format(caixa))

codigo1, qtdPeca1, valorUnitario1 = input().split()

codigo2, qtdPeca2, valorUnitario2 = input().split()

Vtotal(qtdPeca1, valorUnitario1, qtdPeca2, valorUnitario2)