# A palavra "class" é usada para criar uma classe.

# Uma classe funciona como um molde para criar objetos.

class CARRO 
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


    #  Criando um objeto da classe carro.
    # "carro" é uma variavel que recebe um objeto 
    carro1= CARRO("Chevrolet", "S10", 2013)
        
    
    # exibir informações do carro.
    print(f"marca: {self.marca}")
