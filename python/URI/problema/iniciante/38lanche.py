lanche = [4, 4.5, 5, 2, 1.5]

a, b = input().split()

a = int(a)
b = int(b)

total = lanche[a-1] * b

print("Total: R$ {:.2f}" .format(total))