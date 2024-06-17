
USE detran_1;

-- Inserindo dados na tabela Categoria
INSERT INTO Categoria (CategoriaID, Nome)
VALUES 
(1, 'Categoria A'),
(2, 'Categoria B'),
(3, 'Categoria C'),
(4, 'Categoria D'),
(5, 'Categoria E'),
(6, 'Categoria F');

-- Inserindo dados na tabela Modelo
INSERT INTO Modelo (ModeloID, Nome)
VALUES 
(100001, 'Modelo X'),
(100002, 'Modelo Y'),
(100003, 'Modelo Z'),
(100004, 'Modelo W'),
(100005, 'Modelo V'),
(100006, 'Modelo U');

-- Inserindo dados na tabela Endereco
INSERT INTO Endereco (Id, Bairro, Cep, Cidade, Estado)
VALUES 
(1, 'Centro', '12345-678', 'Cidade A', 'AA'),
(2, 'Bairro X', '98765-432', 'Cidade B', 'BB'),
(3, 'Centro', '45678-912', 'Cidade A', 'AA'),
(4, 'Bairro Y', '32165-498', 'Cidade C', 'CC'),
(5, 'Centro', '78912-345', 'Cidade D', 'DD');

-- Inserindo dados na tabela Proprietario
INSERT INTO Proprietario (CPF, Nome, Estado, Sexo, Data_nascimento, Idade, EnderecoID)
VALUES 
('10987654321', 'Maria Oliveira', 'RJ', 'F', '1975-08-19', 48, 1),
('11111111111', 'Carlos Souza', 'MG', 'M', '1985-03-10', 39, 2),
('12345678901', 'João Silva', 'SP', 'M', '1980-05-12', 44, 3),
('22222222222', 'Ana Santos', 'SP', 'F', '1990-07-25', 33, 4),
('33333333333', 'Pedro Lima', 'RJ', 'M', '1978-01-15', 46, 5);

-- Inserindo dados na tabela Telefone
INSERT INTO Telefone (id, num_telefone, CPF)
VALUES 
(1, '(11) 1234-5678', '10987654321'),
(2, '(11) 9876-5432', '11111111111'),
(3, '(22) 3456-7890', '12345678901'),
(4, '(22) 8765-4321', '22222222222'),
(5, '(33) 2345-6789', '33333333333');

-- Inserindo dados na tabela Veiculo
INSERT INTO Veiculo (Placa, Chassi, Cor_predominante, ModeloID, CategoriaID, Ano_fabricacao, CPF)
VALUES 
('ABC1234', '9BWZZZ377VT004251', 'Preto', 100001, 1, 2015, '12345678901'),
('GHJ5678', '4BWZZZ377VT004256', 'Amarelo', 100006, 6, 2019, '11111111111'), 
('LMN8910', '7BWZZZ377VT004253', 'Branco', 100003, 3, 2012, '11111111111'),
('QRS1122', '6BWZZZ377VT004254', 'Azul', 100004, 4, 2020, '22222222222'),
('TUV3344', '5BWZZZ377VT004255', 'Prata', 100005, 5, 2017, '33333333333'),
('XYZ5678', '8BWZZZ377VT004252', 'Vermelho', 100002, 2, 2018, '10987654321');

-- Inserindo dados na tabela Tipo_infracao
INSERT INTO Tipo_infracao (TipoID, Descricao, Valor)
VALUES 
(1, 'Avanço de Sinal Vermelho', 150.00),
(2, 'Parada Sobre a Faixa de Pedestres', 100.00),
(3, 'Excesso de Velocidade', 200.00),
(4, 'Estacionamento Proibido', 120.00),
(5, 'Uso de Celular ao Volante', 180.00),
(6, 'Estacionamento em Local Proibido', 200.00);

-- Inserindo dados na tabela Local
INSERT INTO Local (LocalID, Latitude, Longitude, Velocidade_permitida)
VALUES 
(1, -23.55052000, -46.63330800, 60),
(2, -22.90684700, -43.17289600, 50),
(3, -20.31550000, -40.31277800, 70),
(4, -25.42835600, -49.27325100, 40),
(5, -19.91668200, -43.93449300, 80),
(6, -23.56168400, -46.65598100, 60);

-- Inserindo dados na tabela Agente
INSERT INTO Agente (Matricula, Nome, Data_contratacao, Tempo_servico)
VALUES 
(1001, 'Carlos Mendes', '2020-01-10', 40),
(1002, 'Ana Souza', '2019-03-22', 55),
(1003, 'Marcos Lima', '2018-07-15', 70),
(1004, 'Julia Santos', '2017-10-30', 80),
(1005, 'Ricardo Oliveira', '2021-05-05', 30),
(1006, 'Fernanda Almeida', '2022-02-10', 15);

-- Inserindo dados na tabela Infracao
INSERT INTO Infracao (InfracaoID, Placa, Data_hora, TipoID, LocalID, Velocidade_aferida, AgenteID)
VALUES 
(1, 'ABC1234', '2023-06-01 08:30:00', 1, 1, 80, 1001),
(2, 'XYZ5678', '2023-06-02 14:00:00', 2, 2, 55, 1002),
(3, 'LMN8910', '2023-05-20 10:15:00', 3, 3, 90, 1003),
(4, 'QRS1122', '2023-05-25 11:45:00', 4, 4, NULL, 1004),
(5, 'TUV3344', '2023-06-03 16:20:00', 5, 5, NULL, 1005),
(6, 'GHJ5678', '2024-06-09 10:00:00', 6, 6, 70, 1006);
