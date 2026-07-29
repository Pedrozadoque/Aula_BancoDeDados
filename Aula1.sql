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

-- 3. Criar Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT NOT NULL,
    DataPedido DATETIME DEFAULT GETDATE(),
    ValorTotal DECIMAL(10,2) CHECK (ValorTotal >= 0),
    CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);