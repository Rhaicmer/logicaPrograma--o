from tkinter import *
from tkinter import ttk
import os
from tkinter import messagebox
#python -i venv\\app\\NovaReserva.py


def Sub():
    if(cbPoltrona.get() != "" and tNome.get() != "" and tRG.get() != "" and cbDestino.get() != "" and cbPagamento.get() != ""):
        pol = int(cbPoltrona.get())
        diretorioTxt = pastaApp + "\\poltronas.txt"
        arquivo = open(diretorioTxt, "r")
        lines = arquivo.readlines()
        arquivo.close()
        arquivo = open(diretorioTxt,"w")
        lines[pol-1] = str(pol)+"!"+tNome.get()+"!"+tRG.get()+"!"+cbDestino.get()+"!"+cbPagamento.get()+"\n"
        print("\n\n")
        for l in lines:
            arquivo.write(l)
        arquivo.close()
        arquivo = open(diretorioTxt, "r")
        lines = arquivo.readlines()
        print(lines[pol-1].split("!"))
        messagebox.showinfo("Sucesso", "Reserva de "+tNome.get()+" adicionado(a) com sucesso!")
        app1.quit()
    else:
        messagebox.showerror("Erro!", "Verifique os dados e tente novamente!")


listaDestino = ["Franca --> Sao Paulo"]
listaPagamento = ["Dinheiro", "Debito", "Credito", "Pix"]
listaPoltronasdisponiveis = []


vermelho = "#f00"
verde = "#0f0"
corFundo = "#0ff"

pastaApp = os.path.dirname(__file__)
print("Local do arquivo2, "+pastaApp)

#Verificando se há poltronas ocupadas
diretorioTxt = pastaApp + "\\poltronas.txt"
arquivo = open(diretorioTxt, "r")
lines = arquivo.readlines()
arquivo.close()
for l in lines:
    if(len(l) < 4):
        listaPoltronasdisponiveis.append(l.rstrip())



app1=Tk()
app1.title("DSM Turismo - Reservar Poltrona")
app1. geometry("900x600")
app1.configure(background=corFundo)

ajs = 300
Label(app1, text="Nome:", background=corFundo, foreground="#000", anchor=W).place(x=10+ajs, y=10, width=100, height=20)
tNome = Entry(app1)
tNome.place(x=60+ajs, y=10, width=200, height=20)

Label(app1, text="RG:", background=corFundo, foreground="#000", anchor=W).place(x=10+ajs, y=40, width=100, height=20)
tRG = Entry(app1)
tRG.place(x=40+ajs, y=40, width=100, height=20)

Label(app1, text="Destino:", background=corFundo, foreground="#000", anchor=W).place(x=10+ajs, y=70, width=100, height=20)
cbDestino = ttk.Combobox(app1, value =listaDestino )
cbDestino.place(x=80+ajs, y=70, width=180, height=20)

Label(app1, text="Modo de Pagamento:", background=corFundo, foreground="#000", anchor=W).place(x=10+ajs, y=100, width=150, height=20)
cbPagamento = ttk.Combobox(app1, value =listaPagamento )
cbPagamento.place(x=130+ajs, y=100, width=100, height=20)

Label(app1, text="Poltrona:", background=corFundo, foreground="#000", anchor=W).place(x=10+ajs, y=130, width=100, height=20)
cbPoltrona = ttk.Combobox(app1, value =listaPoltronasdisponiveis )
cbPoltrona.place(x=80+ajs, y=130, width=40, height=20)

Button(master=app1, text="Reservar", command=Sub).place(x=380, y=160, width=100, height=30)

imgBus = PhotoImage(master = app1, file = pastaApp+ "\\bus.png")
l_bus=Label(app1, image = imgBus)
l_bus.place(x=15, y=200)





poltronas = [787878]
indice = 0
for l in lines:
    if(len(l) < 4):
        poltronas.append(Label(app1, text=str(indice+1), background=verde, foreground="#000" ))
        print("Poltrona ", indice, "na cor verde")
    else:
        poltronas.append(Label(app1, text=str(indice+1), background=vermelho, foreground="#000" ))
        print("Poltrona ", indice, "na cor vermelha")
    indice += 1

   
indice = 1
posX = 660
while(indice <= 40):
    poltronas[indice].place(x= posX, y=305, width=40, height=40)
    posX -= 60
    indice += 4

indice = 2
posX = 660
while(indice <= 40):
    poltronas[indice].place(x= posX, y=355, width=40, height=40)
    posX -= 60
    indice += 4

indice = 4
posX = 660
while(indice <= 40):
    print(indice)
    poltronas[indice].place(x= posX, y=430, width=40, height=40)
    posX -= 60
    indice += 4

indice = 3
posX = 660
while(indice <= 40):
    poltronas[indice].place(x= posX, y=480, width=40, height=40)
    posX -= 60
    indice += 4



app1.mainloop()