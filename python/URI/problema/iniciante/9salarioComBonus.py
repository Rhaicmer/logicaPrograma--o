def Total(n, s, v, c):
    sal = s + (v * (c/100))
    print("TOTAL = R$ {:.2f}".format(sal))


nome = input()
salario = float(input())
vendas = float(input())

Total(nome, salario, vendas, 15)