USE cm_system;

CREATE TABLE viagem_paragens(
    id INT UNSIGNED NOT NULL,
    id_viagem INT UNSIGNED NOT NULL,
    id_paragem INT UNSIGNED NOT NULL,
    data_chegada DATETIME,
    data_partida DATETIME,
    n_pessoas_entraram TINYINT UNSIGNED DEFAULT 0,
    n_pessoas_sairam TINYINT UNSIGNED DEFAULT 0
) ENGINE = InnoDB;

ALTER TABLE viagem_paragens ADD PRIMARY KEY(id);

ALTER TABLE viagem_paragens CHANGE id 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE viagem_paragens
    ADD CONSTRAINT `fk_viagem_paragens_id_viagem` FOREIGN KEY (id_viagem) REFERENCES viagens(id),
    ADD CONSTRAINT `fk_viagem_paragens_id_paragem` FOREIGN KEY (id_paragem) REFERENCES paragens(id);

INSERT INTO viagem_paragens (id_viagem, id_paragem, data_chegada, data_partida, n_pessoas_entraram, n_pessoas_sairam) VALUES
(1, 1, '2024-01-15 08:00:00', '2024-01-15 08:10:00', 5, 0),
(1, 2, '2024-01-15 08:15:00', '2024-01-15 08:20:00', 2, 1),
(1, 3, '2024-01-15 08:25:00', '2024-01-15 08:30:00', 3, 0),
(1, 4, '2024-01-15 08:35:00', '2024-01-15 08:40:00', 1, 1),
(1, 5, '2024-01-15 08:45:00', '2024-01-15 08:50:00', 4, 2),
(2, 1, '2024-01-16 10:00:00', '2024-01-16 10:10:00', 6, 0),
(2, 2, '2024-01-16 10:15:00', '2024-01-16 10:20:00', 3, 1),
(2, 3, '2024-01-16 10:25:00', '2024-01-16 10:30:00', 2, 0),
(2, 4, '2024-01-16 10:35:00', '2024-01-16 10:40:00', 0, 1),
(2, 5, '2024-01-16 10:45:00', '2024-01-16 10:50:00', 5, 3);