USE cm_system;
#Criar tabela carreiras_paragens
CREATE TABLE viagens(
    id INT UNSIGNED NOT NULL,
    carreira_id INT UNSIGNED NOT NULL,
    motorista_id INT UNSIGNED NOT NULL,
    autocarro_id INT UNSIGNED NOT NULL,
    datainico DATETIME NOT NULL,
    datafim DATETIME
) ENGINE = InnoDB;

#Criar chave primaria
ALTER TABLE viagens ADD PRIMARY KEY(id);

#Auto incremento
ALTER TABLE viagens CHANGE id
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;

#Criar chave secundaria
ALTER TABLE viagens
    ADD
        CONSTRAINT viagens_c_fk FOREIGN KEY(carreira_id)
        REFERENCES carreiras(id);

ALTER TABLE viagens
    ADD
        CONSTRAINT viagens_m_fk FOREIGN KEY(motorista_id)
        REFERENCES motoristas(id);

ALTER TABLE viagens
    ADD
        CONSTRAINT viagens_a_fk FOREIGN KEY(autocarro_id)
        REFERENCES autocarros(id);

#Inserir dados na tabela

INSERT INTO viagens (carreira_id, motorista_id, autocarro_id, datainico, datafim) VALUES
(1, 1, 6, '2024-01-15 08:00:00', '2024-01-15 10:30:00'),
(2, 2, 7, '2024-01-16 10:30:00', '2024-01-16 13:00:00'),
(3, 3, 8, '2024-01-17 14:00:00', '2024-01-17 17:00:00'),
(4, 4, 9, '2024-01-18 09:30:00', '2024-01-18 12:00:00'),
(5, 5, 10, '2024-01-19 13:00:00', '2024-01-19 16:30:00'),
(6, 1, 11, '2024-01-20 11:00:00', '2024-01-20 14:00:00'),
(7, 2, 12, '2024-01-21 15:30:00', '2024-01-21 18:00:00'),
(8, 3, 13, '2024-01-22 08:30:00', '2024-01-22 11:00:00'),
(9, 4, 14, '2024-01-23 12:00:00', '2024-01-23 15:30:00'),
(10, 5, 15, '2024-01-24 16:00:00', '2024-01-24 18:30:00'),
(11, 1, 1, '2024-01-25 09:30:00', '2024-01-25 12:30:00'),
(12, 2, 2, '2024-01-26 14:30:00', '2024-01-26 17:00:00'),
(13, 3, 3, '2024-01-27 10:00:00', '2024-01-27 13:30:00'),
(14, 4, 4, '2024-01-28 11:30:00', '2024-01-28 14:00:00'),
(15, 5, 5, '2024-01-29 15:00:00', '2024-01-29 17:30:00'),
(16, 1, 6, '2024-01-30 08:30:00', '2024-01-30 11:00:00'),
(17, 2, 7, '2024-01-31 13:30:00', '2024-01-31 16:00:00'),
(18, 3, 8, '2024-02-01 16:30:00', '2024-02-01 19:00:00'),
(19, 4, 9, '2024-02-02 09:00:00', '2024-02-02 12:30:00'),
(20, 5, 10, '2024-02-03 11:00:00', '2024-02-03 14:00:00'),
(21, 1, 11, '2024-02-04 14:30:00', '2024-02-04 17:00:00'),
(22, 2, 12, '2024-02-05 10:00:00', '2024-02-05 13:30:00'),
(23, 3, 13, '2024-02-06 12:30:00', '2024-02-06 15:00:00'),
(24, 4, 14, '2024-02-07 15:30:00', '2024-02-07 18:00:00'),
(25, 5, 15, '2024-02-08 08:30:00', '2024-02-08 11:00:00'),
(26, 1, 10, '2024-02-09 13:00:00', '2024-02-09 15:30:00'),
(27, 2, 11, '2024-02-10 16:00:00', '2024-02-10 18:30:00'),
(28, 3, 12, '2024-02-11 09:30:00', '2024-02-11 12:00:00'),
(29, 4, 13, '2024-02-12 11:00:00', '2024-02-12 14:00:00'),
(30, 5, 14, '2024-02-13 14:30:00', '2024-02-13 17:00:00');
