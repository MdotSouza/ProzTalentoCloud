-- Criar database 'catalogo'
CREATE DATABASE catalogo;
USE catalogo;

-- Criar tabela 'autores'
CREATE TABLE autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Criar tabela 'livros'
CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    exemplares INT,
    idAutor INT,
    FOREIGN KEY (idAutor) REFERENCES autores (id)
);

-- Criar tabela 'publicacoes'
CREATE TABLE publicacoes (
    idLivro INT,
    idAutor INT,
    FOREIGN KEY (idLivro) REFERENCES livros (id),
    FOREIGN KEY (idAutor) REFERENCES autores (id)
);

-- Criar tabela 'log_insercao_livros'
CREATE TABLE log_insercao_livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idLivro INT,
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idLivro) REFERENCES livros (id)
);

-- Inserir dados na tabela 'autores'
INSERT INTO autores (id, nome) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Pereira'),
(4, 'Ana Souza');

-- Inserir dados na tabela 'livros'
INSERT INTO livros (id, titulo, exemplares, idAutor) VALUES
(1, 'Aventuras no Espaço', 10, 1),
(2, 'O Segredo do Enigma', 5, 2),
(3, 'Viagem ao Desconhecido', 8, 3),
(4, 'O Mistério da Ilha Perdida', 12, 4),
(5, 'O Tesouro do Pirata Negro', 3, 1),
(6, 'O Código da Cripta', 15, 2),
(7, 'O Encontro Cósmico', 6, 3),
(8, 'A Profecia da Lua Cheia', 9, 4);

-- Inserir dados na tabela 'publicacoes'
INSERT INTO publicacoes (idLivro, idAutor) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(3, 4),
(4, 1),
(5, 1),
(6, 2),
(7, 3),
(8, 4);

-- Criar trigger
DELIMITER //
CREATE TRIGGER after_insert_livros
AFTER INSERT ON livros
FOR EACH ROW
BEGIN
    INSERT INTO log_insercao_livros (idLivro) VALUES (NEW.id);
END //
DELIMITER;