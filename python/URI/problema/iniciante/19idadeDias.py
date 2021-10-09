def Conversor(i):
    anos = int(i / 365)
    meses = i % 365
    dias = meses % 30
    meses = int(meses / 30)
    print(anos, "ano(s)")
    print(meses, "mes(es)")
    print(dias, "dia(s)")


idadeDias = int(input())

Conversor(idadeDias)