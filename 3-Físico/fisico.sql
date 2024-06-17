CREATE DATABASE detran_1;
USE detran_1;

CREATE TABLE Agente (
	Matricula INT PRIMARY KEY,
    Nome VARCHAR(50),
    Data_contratacao DATE,
    Tempo_servico INT
);

CREATE TABLE Categoria (
	CategoriaID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Endereco (
	Id INT PRIMARY KEY,
    Bairro VARCHAR(150),
    Cep VARCHAR(10),
    Cidade VARCHAR(50),
    Estado VARCHAR(2)
);

CREATE TABLE Infracao (
	InfracaoID INT PRIMARY KEY,
    Placa VARCHAR (10),
    Data_hora DATETIME,
	TipoID INT,
	LocalID INT,
    Velocidade_aferida INT,
    AgenteID INT
);

CREATE TABLE Local (
    LocalID INT PRIMARY KEY,
    Latitude DECIMAL(10, 8),
    Longitude DECIMAL(11, 8),
    Velocidade_permitida INT
);

CREATE TABLE Modelo (
    ModeloID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Proprietario (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(50),
    Estado VARCHAR(2),
    Sexo CHAR(1),
    Data_nascimento DATE,
    Idade INT,
    EnderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES Endereco(id)
);

CREATE TABLE Telefone (
    id INT PRIMARY KEY,
    num_telefone VARCHAR(20),
    CPF VARCHAR(11),
    FOREIGN KEY (CPF) REFERENCES Proprietario(CPF)
);

CREATE TABLE Tipo_infracao (
    TipoID INT PRIMARY KEY,
    Descricao VARCHAR(255),
    Valor DECIMAL(10, 2)
);

CREATE TABLE Veiculo (
    Placa VARCHAR(10) PRIMARY KEY,
    Chassi VARCHAR(17),
    Cor_predominante VARCHAR(50),
    ModeloID INT,
    CategoriaID INT,
    Ano_fabricacao INT,
    CPF VARCHAR(11),
    FOREIGN KEY (ModeloID) REFERENCES Modelo(ModeloID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
    FOREIGN KEY (CPF) REFERENCES Proprietario(CPF)
);
