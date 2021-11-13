from tkinter import *
import os
from tkinter import messagebox

dig10 = 0
dig11 = 0

def Validar():
    global dig10, dig11
    cpfDig = tCpf.get()
    if(len(cpfDig) == 11):
        cpfDig = list(cpfDig)
        ref = 10
        somaCpf = 0
        for i in range(9):
            somaCpf += int(cpfDig[i]) * ref
            ref -= 1
        if(somaCpf % 11 < 2):
            dig10 = 0
        else:
            dig10 = 11 - (somaCpf % 11)

        ref = 11
        somaCpf = 0
        for i in range(10):
            somaCpf += int(cpfDig[i]) * ref
            ref -= 1
        if(somaCpf % 11 < 2 ):
            dig11 = 0
        else:
            dig11 = 11 - (somaCpf % 11) 
        print(cpfDig)
        if(dig10 == int(cpfDig[9]) and dig11 == int(cpfDig[10])):
            messagebox.showinfo("Sucesso", "CPF VALIDADO!")
        else:
            messagebox.showerror("Erro!", "CPF INVÁLIDO")
    else:
        messagebox.showerror("Erro!", "Digite um formato válido de CPF")        

def DV():
    global dig10, dig11
    cpfDig = tCpf.get()
    if(len(cpfDig) == 9):
        cpfDig = list(cpfDig)
        ref = 10
        somaCpf = 0
        for i in range(9):
            somaCpf += int(cpfDig[i]) * ref
            ref -= 1
        if(somaCpf % 11 < 2):
            dig10 = 0
        else:
            dig10 = 11 - (somaCpf % 11)
        
        cpfDig.append(dig10)
        ref = 11
        somaCpf = 0
        for i in range(10):
            somaCpf += int(cpfDig[i]) * ref
            ref -= 1
        if(somaCpf % 11 < 2 ):
            dig11 = 0
        else:
            dig11 = 11 - (somaCpf % 11) 
        print(cpfDig)
        msg = "Digito verificador: "
        msg += str(dig10)
        msg += " "
        msg += str(dig11)
        messagebox.showinfo("Sucesso", msg)
    else:
        messagebox.showerror("Erro!", "Digite um formato válido de CPF")
       
            

 

app=Tk()
app.title("Validação de CPF")
app. geometry("400x100")
app.configure(background="#FFF")


ajs = 50

Label(app, text="CPF:", background="#FFF", foreground="#000", anchor=W).place(x=10+ajs, y=10, width=50, height=20)
tCpf = Entry(app)
tCpf.place(x=60+ajs, y=10, width=200, height=20)

btn1 = Button(master=app, text="Validar", background="#ccc", command=Validar)
btn1.place(x=60, y=40, width=100, height=30)

btn2 = Button(master=app, text="Calcular DV", background="#ccc", command=DV)
btn2.place(x=250, y=40, width=100, height=30)


app.mainloop()