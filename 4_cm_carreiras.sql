USE cm_system;

CREATE TABLE carreiras(
    id INT UNSIGNED NOT NULL,
    n_carreira VARCHAR(4) UNIQUE NOT NULL,
    descricao VARCHAR(50)
) ENGINE = InnoDB;

ALTER TABLE carreiras ADD PRIMARY KEY(id);

ALTER TABLE carreiras CHANGE id 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;


INSERT INTO carreiras (n_carreira, descricao) VALUES
('101', 'Rota Central'),
('102', 'Linha Verde Expresso'),
('103', 'Circuito Urbano A'),
('104', 'Via Rápida Norte'),
('105', 'Circular Bairro'),
('106', 'Expresso Sul'),
('107', 'Linha Residencial'),
('108', 'Rota do Comércio'),
('109', 'Transversal Leste'),
('110', 'Circular Oeste'),
('111', 'Expresso Noturno'),
('112', 'Linha Turística'),
('113', 'Rota dos Parques'),
('114', 'Circuito Histórico'),
('115', 'Via Rápida Sul'),
('116', 'Rota Cultural'),
('117', 'Expresso Matinal'),
('118', 'Linha Industrial'),
('119', 'Circuito Gastronômico'),
('120', 'Rota Panorâmica'),
('121', 'Transversal Oeste'),
('122', 'Circular Universitária'),
('123', 'Expresso Executivo'),
('124', 'Linha Esportiva'),
('125', 'Rota das Praias'),
('126', 'Via Rápida Leste'),
('127', 'Circuito Religioso'),
('128', 'Transversal Norte'),
('129', 'Rota da Moda'),
('130', 'Expresso Intercidades'),
('131', 'Linha da Saúde'),
('132', 'Circuito Cultural'),
('133', 'Via Rápida Oeste'),
('134', 'Rota das Flores'),
('135', 'Expresso Vespertino'),
('136', 'Linha do Lazer'),
('137', 'Transversal Sul'),
('138', 'Circuito Ambiental'),
('139', 'Rota do Cinema'),
('140', 'Via Rápida Central'),
('141', 'Expresso Turístico'),
('142', 'Linha da Tecnologia'),
('143', 'Rota da Música'),
('144', 'Circuito Fashion'),
('145', 'Transversal Central'),
('146', 'Rota dos Festivais'),
('147', 'Via Rápida Universitária'),
('148', 'Expresso Cultural'),
('149', 'Linha da Inovação'),
('150', 'Circuito Noturno');
