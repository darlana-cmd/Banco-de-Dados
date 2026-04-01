CREATE TABLE dimensions(
id_dimensao SERIAL PRIMARY KEY,
nome varchar (120)
);

CREATE TABLE life_registry(
id SERIAL PRIMARY KEY,
nome VARCHAR (120),
omega NUMERIC,
id_dimensaoFK INT, FOREIGN KEY (id_dimensaoFK) REFERENCES dimensions (id_dimensao)
);


INSERT INTO dimensions (nome) VALUES 
('C774'),
('C875'),
('A123'),
('B456');

INSERT INTO life_registry (nome, omega, id_dimensaoFK) VALUES 
('Ana Cristina Prime', 0.12345, 1),
('Ana Cristina Clone', 0.11111, 2),
('Darlana-X', 0.54321, 2),
('Fernanda Alpha', 0.33333, 1),
('Acassio Beta', 0.22222, 2),
('Ariel_01', 0.44444, 1),
('Saymon Omega', 0.55555, 2),
('Joao Prime', 0.88888, 2),
('Maria Beta', 0.99999, 1),
('Ana Cristina Z', 0.13579, 3),
('Fernanda X', 0.24680, 4),
('Anacristina Mist', 0.10101, 1),
('Darlana Prime', 0.20202, 2),
('Fernanda Alpha', 0.30303, 1),
('Acacio Beta', 0.40404, 2),
('Ariell Clone', 0.50505, 1),
('Saymon Omega', 0.60606, 2);


SELECT l.nome, ROUND(l.omega*1.618, 3) AS "Fator N" FROM life_registry AS l 
INNER JOIN dimensions AS d ON id_dimensaoFK = id_dimensao
WHERE l.nome LIKE 'Ana Cristina%'
OR l.nome LIKE 'Darlana%'
OR l.nome LIKE 'Fernanda%' 
OR l.nome LIKE 'Acassio%'
OR l.nome LIKE  'Ariel%'
OR l.nome LIKE 'Saymon%' AND d.nome IN ('C875', 'C774') 
ORDER BY l.omega asc;



