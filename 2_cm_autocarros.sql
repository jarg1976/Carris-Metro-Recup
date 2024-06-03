USE cm_system;

CREATE TABLE autocarros (
    id INT UNSIGNED NOT NULL, 
    matricula CHAR(8) UNIQUE NOT NULL, -- 35-QX-56 35QX56
    km DECIMAL(7, 2) UNSIGNED DEFAULT 0.0, -- 99999.00
    alvara VARCHAR(10) UNIQUE, 
    lotacao_sentada TINYINT UNSIGNED, -- 35 algarismos xxxxxxxxxx -128 ate 127 mas se colocarmos o unsigned ele vai de 0 a 255
    lotacao_em_pe TINYINT UNSIGNED NOT NULL
) ENGINE = InnoDB;

ALTER TABLE autocarros ADD PRIMARY KEY (id);

ALTER TABLE autocarros CHANGE id 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT;

INSERT INTO autocarros (matricula, km, alvara, lotacao_sentada, lotacao_em_pe) VALUES
('66-CD-22', 40000.30, 'AL1122331', 42, 18),
('77-EF-44', 55000.60, 'AL4455662', 48, 22),
('88-GH-55', 80000.40, 'AL7788993', 60, 15),
('99-IJ-66', 35000.75, 'AL9900114', 30, 25),
( '10-KL-77', 70000.20, 'AL2233445', 50, 20),
( '21-MN-88', 60000.80, 'AL5566776', 38, 27),
( '32-OP-99', 45000.50, 'AL8899007', 44, 23),
( '43-QR-11', 30000.90, 'AL1122338', 33, 27),
( '54-ST-22', 65000.25, 'AL4455669', 55, 15),
( '65-UV-33', 50000.10, 'AL7788990', 40, 30),
( '76-WX-44', 75000.70, 'AL9900111', 47, 18),
( '87-YZ-55', 55000.40, 'AL2233442', 42, 23),
( '98-AB-66', 90000.60, 'AL5566773', 60, 10),
( '09-CD-77', 35000.20, 'AL8899004', 26, 28),
( '20-EF-88', 80000.30, 'AL1122335', 49, 21);
