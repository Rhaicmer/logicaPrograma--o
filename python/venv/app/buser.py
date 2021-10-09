from tkinter import *
import os

def semComando():
    print()

def NovaReserva():
    os.system('cmd /c "python venv\\app\\NovaReserva.py"')
    




pastaApp = os.path.dirname(__file__)
print("Local do arquivo, "+pastaApp)


app=Tk()
app.title("DSM Turismo")
app. geometry("900x600")

imgLogo = PhotoImage(file = pastaApp+ "\\logo.png")
l_logo=Label(app, image = imgLogo)
l_logo.pack()
l_logo.place(x=0, y=0)

barraMenu = Menu(app)
menuArquivo = Menu(barraMenu)
menuArquivo.add_command(label="Nova reserva", command = NovaReserva)
menuArquivo.add_command(label="Cancelar reserva", command = semComando)
menuArquivo.add_command(label="Verificar reservas", command = semComando)

barraMenu.add_cascade(label="Reservas", menu=menuArquivo)
app.config(menu=barraMenu)



app.mainloop()