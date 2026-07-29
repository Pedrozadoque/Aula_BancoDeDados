-- 1. Criar o Banco de Dados
CREATE DATABASE CursoPraticoDB;
GO

USE CursoPraticoDB;
GO

-- 2. Cria Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DataCadastro DATETIME DEFAULT GETDATE(),
    Ativo BIT DEFAULT 1
);