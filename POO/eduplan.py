# ==========================================
# CLASSE PROFESSOR
# ==========================================

class Professor:
    def __init__(self, id_professor, nome, email, senha_hash):
        self.id_professor = id_professor
        self.nome = nome
        self.email = email
        self.senha_hash = senha_hash


# ==========================================
# CLASSE DISCIPLINA
# ==========================================

class Disciplina:
    def __init__(self, id_disciplina, nome_disciplina, area_conhecimento):
        self.id_disciplina = id_disciplina
        self.nome_disciplina = nome_disciplina
        self.area_conhecimento = area_conhecimento


# ==========================================
# CLASSE SÉRIE
# ==========================================

class Serie:
    def __init__(self, id_serie, nome_serie, nivel):
        self.id_serie = id_serie
        self.nome_serie = nome_serie
        self.nivel = nivel


# ==========================================
# CLASSE ATIVIDADE
# ==========================================

class Atividade:
    def __init__(self, titulo, conteudo, metodologia,
                 objetivos, professor, disciplina, serie):

        self.titulo = titulo
        self.conteudo = conteudo
        self.metodologia = metodologia
        self.objetivos = objetivos

        # Relacionamentos
        self.professor = professor
        self.disciplina = disciplina
        self.serie = serie

    def exibir_atividade(self):
        print("===== ATIVIDADE =====")
        print(f"Título: {self.titulo}")
        print(f"Professor: {self.professor.nome}")
        print(f"Disciplina: {self.disciplina.nome_disciplina}")
        print(f"Série: {self.serie.nome_serie}")
        print(f"\nConteúdo: {self.conteudo}")
        print(f"\nMetodologia: {self.metodologia}")
        print(f"\nObjetivos: {self.objetivos}")


# ==========================================
# CRIAÇÃO DOS OBJETOS
# ==========================================

professor = Professor(
    1,
    "Mateus Rodrigues Barbosa Silva",
    "mateus.silva@ifto.edu.br",
    "senha_hash"
)

disciplina = Disciplina(
    1,
    "Programação Orientada a Objetos",
    "Informática"
)

serie = Serie(
    1,
    "2º Ano",
    "Ensino Médio Integrado ao Técnico em Informática"
)

atividade = Atividade(
    "Introdução à Programação Orientada a Objetos",
    "Estudo dos conceitos de Classe, Objeto, Atributo e Método.",
    "Aula expositiva seguida de atividade prática em Python.",
    "Compreender os fundamentos da Programação Orientada a Objetos.",
    professor,
    disciplina,
    serie
)

# ==========================================
# TESTE
# ==========================================

atividade.exibir_atividade()