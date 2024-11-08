CREATE DATABASE IF NOT EXISTS banco;
USE banco;

CREATE TABLE IF NOT EXISTS especies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    raca VARCHAR(100),
    cor VARCHAR(20),
    Peso DECIMAL(10,2),
    dataNascimento VARCHAR(80)
);

INSERT INTO especies (nome, raca, cor, Peso, dataNascimento) VALUES
    ('Pateta', 'Cachorro', 'preto', 40.50, '2022-01-01'),
    ('boot', 'Cachorro', 'cinza', 29.30, '2022-01-02'),
    ('scobby', 'Cachorro', 'branco e preto', 37.40, '2022-01-03'),
    ('toto', 'Cachorro', 'preto', 17.10, '2022-01-04'),
    ('bolinha', 'Gato', 'marrom', 27.50, '2022-01-05'),
    ('cacau', 'Gato', 'preto', 36.30, '2022-01-06'),
    ('princesa', 'Gato', 'amarelo', 35.50, '2022-01-07'),
    ('jorginho', 'Cachorro', 'marrom', 25.40, '2022-01-08'),
    ('bolota', 'Cachorro', 'preto', 40.20, '2022-01-09'),
    ('caju', 'Gato', 'bege', 10.30, '2022-01-10'),
    ('caramelo', 'Gato', 'caramelo', 25.50, '2022-01-11'),
    ('Garfield', 'Gato', 'Laranja', 29.30, '2022-01-12');
