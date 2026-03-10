CREATE DATABASE bedrift_it;
USE bedrift_it;

-- TABELL: Brukere
CREATE TABLE brukere (
    bruker_id INT AUTO_INCREMENT PRIMARY KEY,
    fornavn VARCHAR(50),
    etternavn VARCHAR(50),
    epost VARCHAR(100)
);

-- TABELL: Maskiner
CREATE TABLE maskiner (
    maskin_id INT AUTO_INCREMENT PRIMARY KEY,
    maskin_navn VARCHAR(50),
    operativsystem VARCHAR(50),
    bruker_id INT,
    FOREIGN KEY (bruker_id) REFERENCES brukere(bruker_id)
);

-- TABELL: Programmer
CREATE TABLE programmer (
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    navn VARCHAR(100),
    versjon VARCHAR(50)
);

-- KOBLINGSTABELL
CREATE TABLE maskin_program (
    id INT AUTO_INCREMENT PRIMARY KEY,
    maskin_id INT,
    program_id INT,
    FOREIGN KEY (maskin_id) REFERENCES maskiner(maskin_id),
    FOREIGN KEY (program_id) REFERENCES programmer(program_id)
);

-- 20 BRUKERE
INSERT INTO brukere (fornavn, etternavn, epost) VALUES
('Ola','Nordmann','ola@bedrift.no'),
('Kari','Hansen','kari@bedrift.no'),
('Per','Johansen','per@bedrift.no'),
('Anne','Larsen','anne@bedrift.no'),
('Jon','Berg','jon@bedrift.no'),
('Maria','Nilsen','maria@bedrift.no'),
('Erik','Solberg','erik@bedrift.no'),
('Emma','Haugen','emma@bedrift.no'),
('Lars','Kristoffersen','lars@bedrift.no'),
('Ida','Pedersen','ida@bedrift.no'),
('Mats','Andreassen','mats@bedrift.no'),
('Sara','Tangen','sara@bedrift.no'),
('Thomas','Lie','thomas@bedrift.no'),
('Julie','Bakken','julie@bedrift.no'),
('Daniel','Aasen','daniel@bedrift.no'),
('Nora','Eide','nora@bedrift.no'),
('Sebastian','Moen','sebastian@bedrift.no'),
('Amalie','Dahl','amalie@bedrift.no'),
('Henrik','Foss','henrik@bedrift.no'),
('Linnea','Sunde','linnea@bedrift.no');

-- 20 MASKINER
INSERT INTO maskiner (maskin_navn, operativsystem, bruker_id) VALUES
('PC-01','Windows 11',1),
('PC-02','Windows 11',2),
('PC-03','Windows 10',3),
('PC-04','Windows 11',4),
('PC-05','Windows 10',5),
('PC-06','Windows 11',6),
('PC-07','Windows 11',7),
('PC-08','Windows 10',8),
('PC-09','Windows 11',9),
('PC-10','Windows 11',10),
('PC-11','Windows 10',11),
('PC-12','Windows 11',12),
('PC-13','Windows 11',13),
('PC-14','Windows 10',14),
('PC-15','Windows 11',15),
('PC-16','Windows 11',16),
('PC-17','Windows 10',17),
('PC-18','Windows 11',18),
('PC-19','Windows 11',19),
('PC-20','Windows 10',20);

-- 10 PROGRAMMER
INSERT INTO programmer (navn, versjon) VALUES
('Visual Studio Code','1.85'),
('Microsoft Word','2021'),
('Microsoft Excel','2021'),
('Google Chrome','122'),
('Mozilla Firefox','123'),
('Slack','4.36'),
('Discord','1.0'),
('Zoom','6.0'),
('Notepad++','8.6'),
('Git','2.44');

-- PROGRAMMER INSTALLERT PÅ MASKINER
INSERT INTO maskin_program (maskin_id, program_id) VALUES
(1,1),(1,2),(1,3),
(2,1),(2,4),(2,3),
(3,2),(3,3),(3,5),
(4,1),(4,2),
(5,3),(5,4),
(6,1),(6,6),(6,3),
(7,1),(7,2),(7,7),
(8,2),(8,3),
(9,4),(9,5),
(10,1),(10,2),(10,3),(10,10),
(11,2),(11,3),
(12,1),(12,8),
(13,1),(13,2),(13,3),
(14,5),(14,9),
(15,1),(15,2),
(16,3),(16,4),
(17,6),(17,7),
(18,8),(18,1),
(19,2),(19,3),
(20,1),(20,10);