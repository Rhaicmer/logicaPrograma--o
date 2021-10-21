
notas = []
notas = input().split()

media = (float(notas[0]) * 2 + float(notas[1]) * 3 + float(notas[2]) * 4 + float(notas[3]) * 1) / (2 + 3+ 4+ 1)
print("Media: {:.1f}".format(media))

if (media >= 7.0):
    print("Aluno aprovado.")
elif(5.0 <= media <= 6.7):
    print("Aluno em exame.")
    notaExame = float(input())
    print("Nota do exame: {:.1f}". format(notaExame))
    novaMedia = float((media + notaExame) / 2)
    if(novaMedia >= 5.0):
        print("Aluno aprovado.")
    else:
        print("Aluno reprovado.")
    print("Media final {:.1f}".format(novaMedia))
else:
    print("Aluno reprovado.")


