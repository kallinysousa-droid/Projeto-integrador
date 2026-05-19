# A palavra "class" é usada para criar uma classe.

# Uma classe funciona como um molde para criar objetos.

class CARRO:
    #  "def" vai definir uma função ou metado.
    #  "__unit__" é o método constutor da classe.
    #    Ele é executado automaticamente quando um objeto é criado.
    
    # "self" representa o próprio objeto.
    #  É através do self que acessamos atributos e métodos do objeto.

    #  "marca", "modelo", "ano" e "velocidadde".
    #  São Parâmetros recebidos pela class.

    def __init__(self, marca, modelo, ano, velocidade=0):
        self.marca= marca 
        self.modelo=modelo
        self.ano=ano
        self.velocidade= velocidade


    #Metodos
    #Metodos acelearr
    def acelearr(self, aumento):
        self.velocidade= self.velocidade+aumento
        self.velocidade+= aumento
        print(f"O carro acelerou para{self.velocidade} km/h")



#  Criando um objeto da classe carro.
# "carro" é uma variavel que recebe um objeto 
carro1= CARRO("Chevrolet", "S10", 2013)
carro2= CARRO("BMW", "Série 3(320i)", 2023)
        

# # exibir informações do carro1.
print(f"marca: {carro1.marca}")
print(f"modelo: {carro1.modelo}")
print(f"ano: {carro1.ano}")
carro1.acelearr(50)


#  # Exibir informações do carro 2
print(f"marca: {carro2.marca}")
print(f"modelo: {carro2.modelo}")
print(f"ano: {carro2.ano}")
carro2.acelearr(80)

