USE cm_system;

CREATE TABLE motoristas (
    id INT UNSIGNED NOT NULL, 
    nome VARCHAR(100) NOT NULL, 
    n_funcionario VARCHAR(10) UNIQUE NOT NULL, 
    morada VARCHAR(255) NOT NULL, 
    n_telemovel INT UNSIGNED UNIQUE NOT NULL, 
    num_carta_condicao VARCHAR(8) UNIQUE NOT NULL, 
    data_emissao DATE NOT NULL, 
    validade_carta_conducao DATE NOT NULL
) ENGINE = InnoDB;

ALTER TABLE motoristas ADD PRIMARY KEY (id);

ALTER TABLE motoristas CHANGE id 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;

INSERT INTO motoristas (nome, n_funcionario, morada, n_telemovel, num_carta_condicao, data_emissao, validade_carta_conducao) VALUES
('José Silva', 'MF123456', 'Rua das Flores, 123', 912345678, 'AB123456', '2020-01-15', '2025-01-15'),
('Maria Oliveira', 'MF789012', 'Avenida Central, 456', 923456789, 'CD789012', '2018-05-20', '2023-05-20'),
('Carlos Pereira', 'MF345678', 'Travessa dos Amigos, 789', 934567890, 'EF345678', '2019-08-10', '2024-08-10'),
('Ana Sousa', 'MF901234', 'Largo da Paz, 234', 945678901, 'GH901234', '2021-03-25', '2026-03-25'),
('Rui Martins', 'MF567890', 'Praça da Liberdade, 567', 956789012, 'IJ567890', '2017-11-30', '2022-11-30');

INSERT INTO motoristas (nome, n_funcionario, morada, n_telemovel, num_carta_condicao, data_emissao, validade_carta_conducao) VALUES
('José Fernandes', 'MF123458', 'Rua das Roas, 123', 912345679, 'AD323456', '2020-01-15', '2025-01-15');