
– Cria um banco de dados 
CREATE DATABASE bibliotecabd_athena;


– Seleciona o banco de dados para uso
USE bibliotecabd_athena;

CREATE TABLE Clientes(

	-- Identificador único (PK- chave primária)
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,

	-- Nome completo do cliente (obrigatório - NOT NULL)
nome_cliente VARCHAR (100) NOT NULL,

	  -- Data de nascimento
datacliente_nascimento DATE,

 -- CPF unico p/ cada clientes (restrição de unidade- UNIQUE)
cpf_cliente VARCHAR (14) UNIQUE, 

	-- Email do cliente
email VARCHAR(100) UNIQUE NOT NULL, 

	  -- Telefone de contato
telefone VARCHAR (100) NOT NULL


 -- Senha do cliente
senha VARCHAR(255) NOT NULL

);

CREATE TABLE Autores(

-- Número único de cada autor (gerado automático) 
id_autor INT AUTO_INCREMENT PRIMARY KEY,


-- Nome completo do autor (obrigatório) 
nome_autor VARCHAR(100) NOT NULL,

-- Área de especialização do autor (obrigatório) 
especializacao_autor VARCHAR (100) NOT NULL,

-- Email único e obrigatório 
email_autor VARCHAR(100) UNIQUE NOT NULL,

-- Senha criptografada (obrigatório) 
senha_autor VARCHAR (255) NOT NULL,

-- Quantidade de livros publicados (pode ficar vazio) 
quantidade_livros INT,

-- País de origem do autor 
nacionalidade VARCHAR (25),

-- Data de nascimento do autor 
dataautor_nascimento DATE

);


CREATE TABLE Generos (

	-- Número único de cada gênero (gerado automático) 
id_genero INT PRIMARY KEY AUTO_INCREMENT,

-- Nome do gênero ex: Romance, Fantasia, Terror 
	nome_genero VARCHAR(100) NOT NULL,
	
	-- Número que representa a faixa etária (obrigatório) 
id_faixaetaria INT NOT NULL 


CREATE TABLE Livros (

-- Número único de cada livro (gerado automático) 
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
	
-- Título do livro (obrigatório) 
titulo VARCHAR (200) NOT NULL,
-- Gênero escrito por extenso ex: Fantasia (pode ficar vazio) 
genero TEXT,

-- Número do gênero, conecta com a tabela Gêneros 
id_genero INT FOREIGN KEY,

-- Número do autor, conecta com a tabela Autores 
id_autor INT FOREIGN KEY,

-- Número da editora, conecta com a tabela Editoras (obrigatório) 
id_editora VARCHAR(100) FOREIGN KEY NOT NULL,

-- Ano de publicação do livro (obrigatório) 
ano_publicacao INT NOT NULL,

-- Resumo do livro 
sinopse_livro TEXT

);


-- TABELA PONTE: livro_genero 
-- Liga a tabela Livros com a tabela Gêneros
 -- Um livro pode ter vários gêneros 
CREATE TABLE  livro_genero(

-- Número do gênero, vem da tabela Gêneros (obrigatório) 
id_genero INT NOT NULL,

	-- Número do livro, vem da tabela Livros (obrigatório) 
id_livro INT NOT NULL,

	-- Os dois juntos não podem repetir 
PRIMARY KEY  (id_genero, id_livro),

-- Conecta com a tabela Gêneros 
-- Se deletar o gênero, apaga aqui também 
 FOREIGN KEY(id_genero),
 REFERENCES Generos(id_genero),
 ON DELETE CASCADE,

-- Conecta com a tabela Livros 
-- Se deletar o livro, apaga aqui também 
 FOREIGN KEY(id_livros)
 REFERENCES Livros(id_livros),
 ON DELETE CASCADE,



); 


-- TABELA PONTE: livro_autor
 -- Liga a tabela Livros com a tabela Autores 
-- Um livro pode ter vários autores 
CREATE TABLE livro_autor(

	-- Número do livro, vem da tabela Livros (obrigatório) 
id_livro INT NOT NULL,

-- Número do autor, vem da tabela Autores (obrigatório) 
	id_autor INT NOT NULL,

-- Os dois juntos não podem repetir 
	PRIMARY KEY (id_livro, id_autor)
);

-- Adicionando a coluna id_livro na tabela Gêneros 
ALTER TABLE Generos
ADD COLUMN id_livros 

-- Adicionando conexão entre Gêneros e ela mesma -- ON DELETE RESTRICT = não deixa deletar se ainda houver livros usando 
ALTER TABLE Generos
    ADD CONSTRAINT fk_livro_genero
    FOREIGN KEY (id_genero)
    REFERENCES Generos(id_genero)
    ON DELETE RESTRICT;
 INT;


CREATE TABLE Emprestimos
id_emprestimo INT PRIMARY KEY NOT NULL,
id_cliente INT FOREIGN KEY,
id_livro INT FOREIGN KEY, 
data_emprestimo DATE NOT NULL
data_devolucaoprevista DATE NOT NULL
data_devolucaoreal DATE NULL
status VARCHAR (35) NOT NULL



CREATE TABLE emprestimo_clienty(

id_emprestimo INT NOT NULL,

	id_cliente INT NOT NULL,

	PRIMARY KEY (id_emprestimo, id_cliente)

-- =============================================== 
-- MODIFICANDO A TABELA Clientes depois de criada 
-- =============================================== 


-- Adicionando a coluna id_emprestimo na tabela Clientes 
ALTER TABLE Clientes
ADD COLUMN id_emprestimos

-- Adicionando conexão: não deixa deletar cliente se houver empréstimos 
ALTER TABLE Clientes
 ADD CONSTRAINT fk_emprestimo_clienty
 FOREIGN KEY (id_cliente)
 REFERENCES Clientes(id_cliente)
 ON DELETE RESTRICT;
 INT;


