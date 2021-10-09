def Dedp(x1, y1, x2, y2):
    x1 = float(x1)
    y1 = float(y1)
    x2 = float(x2)
    y2 = float(y2)
    dis = ((x2 - x1)**2 + (y2 - y1)**2)**(1/2)
    print("{:.4f}".format(dis))


X1, Y1 = input().split()
X2, Y2 = input().split()

Dedp(X1, Y1, X2, Y2)