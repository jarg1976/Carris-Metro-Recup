USE cm_system;

CREATE TABLE carreiras_paragens(
    id INT UNSIGNED NOT NULL,
    id_carreira INT UNSIGNED NOT NULL,
    id_paragem INT UNSIGNED NOT NULL,
    inicio TINYINT UNSIGNED NOT NULL CHECK(inicio IN(0,1)),
    fim TINYINT UNSIGNED NOT NULL CHECK(inicio IN(0,1))
) ENGINE = InnoDB;

ALTER TABLE carreiras_paragens ADD PRIMARY KEY(id);

ALTER TABLE carreiras_paragens CHANGE id 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE carreiras_paragens
    ADD CONSTRAINT `fk_carreiras_paragens_id_carreira` FOREIGN KEY (id_carreira) REFERENCES carreiras(id),
    ADD CONSTRAINT `fk_carreiras_paragens_id_paragem` FOREIGN KEY (id_paragem) REFERENCES paragens(id);

INSERT INTO
    carreiras_paragens (
        id_carreira, id_paragem, inicio, fim
    )
VALUES 
    (1, 1, 1, 0),
    (1, 2, 0, 0),
    (1, 3, 0, 0),
    (1, 4, 0, 0),
    (1, 5, 0, 1),
    (2, 6, 1, 0),
    (2, 7, 0, 0),
    (2, 8, 0, 0),
    (2, 9, 0, 0),
    (2, 10, 0, 1),
    (3, 11, 1, 0),
    (3, 12, 0, 0),
    (3, 13, 0, 0),
    (3, 14, 0, 1),
    (3, 15, 0, 0),
    (4, 16, 1, 0),
    (4, 17, 0, 0),
    (4, 18, 0, 0),
    (4, 19, 0, 0),
    (4, 20, 0, 1),
    (5, 20, 1, 0),
    (5, 19, 0, 0),
    (5, 18, 0, 0),
    (5, 17, 0, 0),
    (5, 16, 0, 1),
    (6, 15, 1, 0),
    (6, 14, 0, 0),
    (6, 13, 0, 0),
    (6, 12, 0, 0),
    (6, 11, 0, 1);