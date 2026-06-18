-- Criação do Banco de Dados 
CREATE DATABASE biblioteca;

-- Selecionar o BD para uso 
USE biblioteca

-- Criar tabela cliente
-- Armazena os dados dos Clientes
CREATE TABLE Clientes(
    -- Identificador único (PK - chave primária)
    id_cliente INT  AUTO_INCREMENT PRIMARY KEY,
    -- Nome completo do cliente(obrigatório)
    nome VARCHAR(100) NOT NULL,

    -- Data de nascimento 
    data_nascimento DATE,

    -- CPF único para cada cliente (Restriçao de unicidade - UNIQUE)
    cpf VARCHAR(14) UNIQUE,

    -- Email do Cliente
    email VARCHAR(100),

    -- Telefone pra contato
    telefone VARCHAR(100) NOT NULL,

    -- Data de Cadastro
    data_cadastro DATE NOT NULL,
    
);


CREATE TABLE autores(
    -- Identificador único autores
    id_autor INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do Autor (Obrigatório - NOT NULL)
    nome VARCHAR(100) NOT NULL,

    -- Área de especialização (ex:Quantos anos trabalha na área da escrita) 
    especialidade VARCHAR(100) NOT NULL,

    -- Email do autor
    email VARCHAR(100) NOT NULL UNIQUE,

    -- Telefone para contato
    telefone VARCHAR(20)
);


CREATE TABLE Livros(
    -- Identificador Único do livro
    id_livro INT AUTO_INCREMENT PRIMARY KEY,

    -- Título do livro
    nome VARCHAR(100) NOT NULL,

    -- Preço do Livro em reais
    preco_livro DECIMAL(10,2) INT NOT NULL
);

    -- Tabela Gêneros
CREATE TABLE generos (
    -- Identificador Único de generos
    id_genero INT AUTO_INCREMENT PRIMARY KEY,

    -- Título do livro
    nome VARCHAR(100) NOT NULL,
);

CREATE TABLE livro_autor_genero(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    id_genero INT NOT NULL,
    ano INT NOT NULL,
    faixaetaria INT NOT NULL,
      FOREIGN KEY(id_livro)
        REFERENCES LIVROS(id_livro)
        ON DELETE RESTRICT,
            -- RESTRICT impede apagar generos com livros vinculados
   FOREIGN KEY(id_autor)
        REFERENCES autores(id_autor)
        ON DELETE RESTRICT,
            -- RESTRICT impede apagar generos com livros vinculados

   FOREIGN KEY(id_genero)
        REFERENCES generos(id_genero)
        ON DELETE RESTRICT
            -- RESTRICT impede apagar generos com livros vinculados
);


-- EXPLICAÇÃO 
-- A chave estrangeira garante que:
-- 1: Todo aluno deve estar vinculado a uma turma existente
-- 2: Não é possivel inserir um aluno com uma turma inexistente 
-- 3: Não é possível excluir uma turma que posssua alunos vinculados (RESTRICT)

    


-- ===================================================================================================================================================================
INSERT INTO Clientes(nome, data_nascimento, cpf, email, telefone, data_cadastro)
VALUES
('kalliny Gomes', '2000-12-12', '000.777,333-99', 'kalliny@gmail.com', '(63) 99999-9888', 2026-06-16)
('Adriana Gomes', '1987-10-04', '777.999.222-11', 'adriana@gmail.com', '(63) 11111-2222', 2026-04-18)
('Daniel Gomes', '2015-09-01', '666.667.777-88', 'daniel@gmail.com', '(63) 22222-3333', 2021-09-04)

INSERT INTO autores(1, nome, especialidade, email, telefone)
VALUES
('Fernando Paz', 'escritor ', 'fernandopaz@mail.com', (63) 99999-8787)
('Joaquim Manuel De Macedo', 'escritora', 'joaquimmanuel@email.com', (63) 99999-1111)

INSERT INTO livros(1,nome, preco_livro)
VALUES
('O Fantasma da Opera', 150,00)
('A Moreninha' 36,61)

INSERT INTO generos(nome)
VALUES
('Romance'),
('Fantasia')


INSERT INTO livro_autor_genero(id_autor. id_livro, id_genero, ano, faixaetaria)
VALUES
('1', '3', '2', '1909', 14)
('2', '2', '1', '1844', 12)

-- ====================================================================================================================================================================================================

-- Na tabela professor colocar o codigo abaixo
-- Serve para selecionar todos (*) os professores (FROM)
SELECT *
FROM genero


-- * Vai selecionar todos os FROM genero com o WHERE nome = "A Moreninha" para selecionar todos os gerenos com o nome A Moreninha
SELECT *
FROM gereno
WHERE nome = "A Moreninha"

-- Vai selecionar * (todos) os FROM na tabela autores (WHERE) quando id_autor for 2
SELECT *
FROM autores
WHERE id_autor= "2"


-- Vai selecionar * (todos ) os FROM autores (WHERE) quando generos for > fantasia;
SELECT *
FROM autores 
WHERE generos = fantasia;

UPDATE clientes
SET email='kallinyGomes@gmail.com'
WHERE id_cliente= '1';

-- Vai mudar SET telefone para (63) 11111-2229 quando id_cliente for 1


UPDATE clientes
SET telefone = '(63) 11111-2229'
WHERE id_cliente= '1'

-- Vai mudar SET especialidade para Romancista quando id_autor for 2

UPDATE autores
SET especialidade = 'Romancista'
WHERE id_autor= '2'

-- Vai deletar * (todos) livros WHERE (quando) ele id_livro for igual a 1 

DELETE FROM livros
WHERE id_livro= '1';


