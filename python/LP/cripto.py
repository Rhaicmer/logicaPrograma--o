from tkinter import *
import os



alfabeto = [
             'A','B', 'C', 'D', 'E', 'F', 'G',
             'H', 'I', 'J', 'K', 'L', 'M', 'N',
             'O', 'P', 'Q', 'R', 'S', 'T', 'U',
             'V', 'W', 'X', 'Y', 'Z'
            ]

alfabetoReg = [
                'A','B', 'C', 'D', 'E', 'F', 'G',
                'H', 'I', 'J', 'K', 'L', 'M', 'N',
                'O', 'P', 'Q', 'R', 'S', 'T', 'U',
                'V', 'W', 'X', 'Y', 'Z'
              ]



modo = False
textoCripto = " "
fraseOr = ""
def Crip():
    global modo
    global textoCripto
    global fraseOr
    if(modo == False):
        #verificar se a criptografia já foi realizada
        if(tChave.get() != textoCripto):
            textoCripto = tChave.get()
            #transformando a chave da criptografia em lista
            list(textoCripto)
            somaKey = 0
            for i in textoCripto:
                somaKey  += int(ord(i))
            letra1 = 65+26 - (somaKey%27)
            ref = 0
            for i in range(26):
                alfabetoReg[ref] = chr(letra1)
                ref+= 1
                if(letra1 ==90):
                    letra1 = 65
                else:
                    letra1 += 1
            print("Código da criptografia: ", somaKey)
            print("Letra correspondente: "+ chr(65+26 - (somaKey%27)))
            print("Novo alfabeto:")
            print(alfabetoReg)
            print("\n\n Criptografando...")
            fraseOr = tFrase.get()
            frase = list(fraseOr)
            print(frase)
            textoCripto = ""
            for _ in range(len(frase)):
                print(ord(frase[_]))
                if(ord(frase[_])  != 32):
                    frase[_] = ord(frase[_]) - 65
                    textoCripto += alfabetoReg[frase[_]]
                else:
                    frase[_] = 32
                    textoCripto += " "
                
            fra1.config(text=textoCripto)


        btn1.config(text="Descriptografar")
        modo = True
    else:
        fra1.config(text=fraseOr)
        btn1.config(text="Criptografar")
        modo = False

fraseCriptografada = " "



pastaApp = os.path.dirname(__file__)
print("Local do arquivo, "+pastaApp)

app=Tk()
app.title("Criptografia")
app. geometry("900x600")

imgLogo = PhotoImage(file = pastaApp+ "\\logo2.png")
l_logo=Label(app, image = imgLogo)
l_logo.pack()
l_logo.place(x=0, y=0)

ajs = 280

Label(app, text="Chave de criptografia:", background="#FFF", foreground="#000", anchor=W).place(x=10+ajs, y=10, width=130, height=20)
tChave = Entry(app)
tChave.place(x=160+ajs, y=10, width=200, height=20)

Label(app, text="Frase para criptografar:",  background="#FFF", foreground="#000", anchor=W).place(x=10+ajs, y=60, width=130, height=20)
tFrase = Entry(app)
tFrase.place(x=160+ajs, y=60, width=200, height=20)

btn1 = Button(master=app, text="Criptografar", background="#ccc", command=Crip)
btn1.place(x=400, y=140, width=100, height=30)





fra1 = Label(app, text=fraseCriptografada, background="#FFF", foreground="#000", font = "Arial 24")
fra1.place(x=10, y=360, width=880, height=60)


app.mainloop()

