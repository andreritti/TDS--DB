CREATE DATABASE estacionamento;

USE estacionamento;

CREATE TABLE cliente(
    cpf INT NOT NULL PRIMARY KEY,
    nome VARCHAR(60),
    dtNasc DATE
);

CREATE TABLE modelo(
    codMod INT NOT NULL PRIMARY KEY,
    desc_2 VARCHAR(40)
);

CREATE TABLE veiculo(
    placa VARCHAR(8) NOT NULL PRIMARY KEY,
    Modelo_codMod INT,
    Cliente_cpf INT,
    cor VARCHAR(20),
    ano INT,
    FOREIGN KEY (Modelo_codMod) REFERENCES modelo(codMod),
    FOREIGN KEY (Cliente_cpf) REFERENCES cliente(cpf)
);

CREATE TABLE patio(
    num INT NOT NULL PRIMARY KEY,
    ender VARCHAR(40),
    capacidade INT
);

CREATE TABLE estaciona(
    cod INT NOT NULL PRIMARY KEY,
    Patio_num INT,
    Veiculo_placa VARCHAR(8),
    dtEntrada DATE,
    dtSaida DATE,
    hsEntrada TIME,
    hsSaida TIME,
    FOREIGN KEY (Patio_num) REFERENCES patio(num),
    FOREIGN KEY (Veiculo_placa) REFERENCES veiculo(placa)
);

/*  Populando as tabelas  */

-- Clientes
INSERT INTO cliente (cpf, nome, dtNasc) VALUES
(111111111, 'Ana Souza', '1990-04-10'),
(222222222, 'Carlos Lima', '1985-06-22'),
(333333333, 'Marina Silva', '1992-11-05');

-- Modelos
INSERT INTO modelo (codMod, desc_2) VALUES
(1, 'Hatch'),
(2, 'SUV'),
(3, 'Sedan');

-- Veículos
INSERT INTO veiculo (placa, Modelo_codMod, Cliente_cpf, cor, ano) VALUES
('JJJ-2020', 1, 111111111, 'verde', 2005),
('JEG-1010', 2, 222222222, 'preto', 1999),
('XYZ-3030', 3, 333333333, 'verde', 2010),
('ABC-1234', 1, 111111111, 'azul', 2018);

-- Pátios
INSERT INTO patio (num, ender, capacidade) VALUES
(1, 'Rua das Flores, 123', 50),
(2, 'Av. Central, 500', 100);

-- Estacionamentos
INSERT INTO estaciona (cod, Patio_num, Veiculo_placa, dtEntrada, dtSaida, hsEntrada, hsSaida) VALUES
(1, 1, 'JJJ-2020', '2025-06-01', '2025-06-01', '08:00:00', '10:00:00'),
(2, 2, 'JEG-1010', '2025-06-02', '2025-06-02', '09:00:00', '11:30:00'),
(3, 1, 'XYZ-3030', '2025-06-03', '2025-06-03', '07:45:00', '10:15:00'),
(4, 1, 'ABC-1234', '2025-06-04', '2025-06-04', '10:00:00', '12:00:00'),
(5, 2, 'XYZ-3030', '2025-06-05', '2025-06-05', '08:30:00', '11:00:00');


/*  questao 1  */

SELECT 
    v.placa,
    c.nome
FROM veiculo AS v
    JOIN cliente AS c ON c.cpf = v.Cliente_cpf;

/*  questao 2  */


/*  questao 3 */


/*  questao 4 */


/*  questao 5 */


/*  questao 6 */


/*  questao 7 */


/*  questao 8 */


/*  questao 9 */

