CREATE TABLE Autores (
    id_autor INT NOT NULL AUTO_INCREMENT,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    ano_nascimento INT,
    PRIMARY KEY (id_autor)
);

CREATE TABLE Livros (
    id_livro INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    genero VARCHAR(50),
    id_autor INT,
    PRIMARY KEY (id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

 -- 2. Insira 10 novas linhas em cada tabela
INSERT INTO Autores (nome_autor, nacionalidade, ano_nascimento) VALUES
('George Orwell', 'Britânico', 1903),
('J.K. Rowling', 'Britânico', 1965),
('J.R.R. Tolkien', 'Britânico', 1892),
('Isaac Asimov', 'Russo-Americano', 1920),
('Clarice Lispector', 'Ucraniana-Brasileira', 1920),
('Machado de Assis', 'Brasileiro', 1839),
('Gabriel Garcia Marquez', 'Colombiano', 1927),
('Haruki Murakami', 'Japonês', 1949),
('Agatha Christie', 'Britânico', 1890),
('Stephen King', 'Americano', 1947);

INSERT INTO Livros (titulo, ano_publicacao, genero, id_autor) VALUES
('1984', 1949, 'Distopia', 1),
('A Revolução dos Bichos', 1945, 'Sátira', 1),
('Harry Potter e a Pedra Filosofal', 1997, 'Fantasia', 2),
('O Senhor dos Anéis', 1954, 'Fantasia', 3),
('Eu, Robô', 1950, 'Ficção Científica', 4),
('A Hora da Estrela', 1977, 'Romance', 5),
('Dom Casmurro', 1899, 'Realismo', 6),
('Cem Anos de Solidão', 1967, 'Realismo Mágico', 7),
('Norwegian Wood', 1987, 'Romance', 8),
('O Iluminado', 1977, 'Terror', 10);

-- 3. Execute 1 comando de DML (UPDATE ou DELETE)
UPDATE Autores
SET ano_nascimento = 1920
WHERE id_autor = 4;

-- ---

-- 4. Execute 1 de DQL (SELECT)
SELECT titulo, ano_publicacao 
FROM Livros 
WHERE genero = 'Fantasia';

-- ---

-- 5. Execute 3 funções Agregadas
-- Função 1: COUNT
SELECT COUNT(id_livro) AS total_de_livros FROM Livros;

-- Função 2: MIN
SELECT MIN(ano_publicacao) AS livro_mais_antigo FROM Livros;

-- Função 3: MAX
SELECT MAX(ano_publicacao) AS livro_mais_recente FROM Livros;

-- ---

-- 6. Execute 2 de Agrupamento
-- Agrupamento 1: Contar livros por gênero
SELECT genero, COUNT(id_livro) AS quantidade
FROM Livros
GROUP BY genero;

-- Agrupamento 2: Contar autores por nacionalidade
SELECT nacionalidade, COUNT(id_autor) AS total_autores
FROM Autores
GROUP BY nacionalidade
ORDER BY total_autores DESC;

-- ---

-- 7. Execute 1 JOIN
SELECT
    Livros.titulo,
    Autores.nome_autor
FROM
    Livros
INNER JOIN
    Autores ON Livros.id_autor = Autores.id_autor;