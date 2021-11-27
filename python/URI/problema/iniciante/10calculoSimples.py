from random import choices, sample
print('=-'*20)
print('Jogo do Sorteio Automático da Quina!!!')
print('=-'*20)
tamanho = 5
valores = range(1, 60)
sorteio = (choices(valores, k=tamanho))
jogador = (sample(valores, tamanho))
sorteio.sort()
jogador.sort()
print('PROCESSANDO...')
print('Os números sorteados foram {}'.format(sorteio))
print('Os números escolhidos pelo jogaror foram {}'.format(jogador))
if set(sorteio) & set(jogador) == 0:
    print('Você não acertou nenhum número.')
else:
    print("Você acertou esse(s) número(s):", set(sorteio) & set(jogador))
    