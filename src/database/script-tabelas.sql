CREATE DATABASE Ser;

USE Ser;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
dtNasc DATE,
email VARCHAR(264),
senha VARCHAR (15));

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY ,
nome VARCHAR (45));

INSERT INTO quiz VALUES (
1,'Quebrada Queer');

CREATE TABLE resultado (
idResultado INT  AUTO_INCREMENT,
fkUsuario	INT,
fkQuiz INT,
pontuacao INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz) REFERENCES quiz (idQuiz),
 PRIMARY KEY (idResultado,fkUsuario,fkQuiz));

INSERT INTO resultado ( fkUsuario, fkQuiz, pontuacao) VALUES ( 1, 1, 1 );

SELECT usuario.nome, (SELECT resultado.pontuacao  
     FROM resultado 
     WHERE resultado.fkUsuario = usuario.idUsuario 
     ORDER BY resultado.pontuacao DESC LIMIT 1) AS UltimaPontuacao
     FROM usuario
ORDER BY UltimaPontuacao DESC;

SELECT usuario.nome, resultado.pontuacao 
FROM usuario JOIN resultado ON 
fkUsuario=idUsuario;

SELECT usuario.nome ,resultado.fkQuiz
FROM usuario JOIN resultado
ON fkQuiz=idQuiz;

SELECT*FROM quiz;
SELECT*FROM resultado;
SELECT * FROM usuario;



