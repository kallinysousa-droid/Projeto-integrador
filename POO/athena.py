# ===================================
# Classe Bibliotecário
# ===================================
class Bibliotecario:
    def __init__(self, id_bibliotecario, nome, email, senha_hash):
        self.id_bibliotecario = id_bibliotecario
        self.nome = nome
        self.email = email
        self.senha_hash = senha_hash

# ===================================
# Classe Cliente
# ===================================
class Cliente:
    def __init__(self, id_cliente, nome, email, senha_hash, cpf, data_nascimento):
        self.id_cliente = id_cliente
        self.nome = nome
        self.email = email
        self.senha_hash = senha_hash
        self.cpf = cpf  
        self.data_nascimento = data_nascimento

# ===================================
# Classe Autores 
# ===================================
class Autores:
    def __init__(self, id_autor, nome, especializacao_autor, email, senha_hash, dataautor_nascimento, quantilivro):
        self.id_autor = id_autor
        self.nome = nome
        self.email = email
        self.senha_hash = senha_hash
        self.especializacao = especializacao_autor
        self.dataautor_nascimento = dataautor_nascimento
        self.quantilivro = quantilivro

# ====================================
# Classe Gênero
# ====================================
class Genero:
    def __init__(self, id_genero, tipogenero, faixaetaria, generolivro): 
        self.id_genero = id_genero
        self.tipogenero = tipogenero
        self.faixaetaria = faixaetaria
        self.generolivro = generolivro

# ====================================
# Classe Livros
# ====================================
class Livro:
    def __init__(self, id_livro, titulo, sinopse, sequencia, genero, autores, bibliotecario, cliente): 
        self.id_livro = id_livro
        self.titulo = titulo
        self.sequencia = sequencia
        self.sinopse = sinopse

        # Relacionamentos 
        self.genero = genero
        self.autores = autores
        self.bibliotecario = bibliotecario
        self.cliente = cliente 

    def exibir_detalhes_livro(self):
        print("===== DETALHES DO LIVRO =====")
        print(f"Título: {self.titulo}")
        print(f"Sequência: {self.sequencia}")
        print(f"Autor: {self.autores.nome}") 
        print(f"Gênero: {self.genero.tipogenero} (Idade: {self.genero.faixaetaria})")
        print(f"Cadastrado por Bibliotecário: {self.bibliotecario.nome}")
        print(f"Reservado por Cliente: {self.cliente.nome}")
        print(f"\nSinopse: {self.sinopse}")

    def exibir_livro_estatico(self):
        print("Título: O Fantasma da Ópera")
        print("Sequência: Não contém")
        print("Sinopse: Prestes a morrer, o pai da jovem Christine Daaé...")


# ====================================
# CRIAÇÃO DOS OBJETOS
# ====================================

# 1. Criando um objeto da classe Bibliotecario
bibliotecario_1 = Bibliotecario(1, "Ana Souza", "ana.souza@email.com", "hash_senha_123")

# 2. Criando um objeto da classe Cliente
cliente_1 = Cliente(101, "Carlos Silva", "carlos.silva@email.com", "hash_senha_456", "123.456.789-00", "15/05/1995")

# 3. Criando um objeto da classe Autores
autor_1 = Autores(50, "Gaston Leroux", "Romance Gótico/Mistério", "gaston@email.com", "hash_autor_789", "06/05/1868", 15)

# 4. Criando um objeto da classe Genero
genero_1 = Genero(5, "Romance de Mistério", "14 anos", "Ficção")

# 5. Criando um objeto da classe Livro (passando os objetos anteriores como parâmetros)
livro_1 = Livro(
    id_livro=1001, 
    titulo="O Fantasma da Ópera", 
    sinopse="Prestes a morrer, o pai da jovem Christine Daaé promete que um anjo da música a protegerá.", 
    sequencia="Volume Único", 
    genero=genero_1,          # Objeto Genero 
    autores=autor_1,         # Objeto Autores 
    bibliotecario=bibliotecario_1, # Objeto Bibliotecario 
    cliente=cliente_1        # Objeto Cliente 
)

# ====================================
# TESTANDO O CÓDIGO
# ====================================
# Chamando o método para exibir as informações dinâmicas do objeto criado
livro_1.exibir_detalhes_livro()


