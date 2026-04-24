-- Criação
CREATE DATABASE biblioteca; 
-- Selecionar o BD para uso
USE biblioteca;

-- Criar tabela cliente
-- Armazena os dados dos clientes

CREATE  TABLE clientes(
	-- Identificador unico (PK- chave primaria)
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
        
	-- Nome completo do cliente (obrigatório - NOT NULL)
	nome VARCHAR(100) NOT NULL,
    
    -- Data de mascimento
    data_nascimento DATE,
    
    -- CPF unico p/ cada clinete (restrição de unidade- UNIQUE)
    cpf VARCHAR (14) UNIQUE,
    
    -- Email do cliente 
    email VARCHAR(100) NOT NULL,    
    
    -- Telefone de contato
    telefone VARCHAR(20) NOT NULL,
    
    
    -- Data em que o cliente foi cadastrado
    data_cadastro DATE NOT NULL
);

-- Tabela Autores
-- Amazena os dados dos Autores

CREATE TABLE autor(
	-- Indentificador unico (chave obrigatorio)
	id_autor INT AUTO_INCREMENT PRIMARY KEY,

	-- Nome do autor (obrigatório - NOT NULL)
	nome VARCHAR(14) NOT NULL,

	-- Área de Especialização (ex: Romance, Ação)
	especialidade VARCHAR (100) NOT NULl,

	-- Email do autor 
	email VARCHAR (100) NOT NULL UNIQUE,

	-- Telefone de contato
	telefone VARCHAR(20)

);

-- Tabela de livros
-- Representa cursos oferecidos pela editora

CREATE TABLE livros(
	-- Indentificador de livro
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome do livro (obrigatorio - NOT NULL)
    nome VARCHAR (100) NOT NULL,
    
    -- Carga horaria total do livro em horas
    carga_horaria INT NOT NULL
    );
