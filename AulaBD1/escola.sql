CREATE DATABASE escola;

USE escola;

CREATE TABLE aluno (
  id int PRIMARY KEY,
  nome varchar(100),
  email varchar(100),
  endereco varchar(100),
);

INSERT INTO aluno (id, nome, email, endereco) VALUES 
	              (1, 'João Carlos', 'Jcarlos@gmail.com', 'Rua 13 de maio'),
                  (2, 'José Vitor', 'Jvitor@gmail.com', 'Rua da Saudade'),
                  (3, 'Paulo André', 'Pandr@gmail.com', 'Rua do Sol');