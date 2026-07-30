USE CursoPraticoDB;
GO

DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Categorias;
GO

-- 1. Tabela de Categorias
CREATE TABLE Categorias (
    CategoriaID INT IDENTITY(1, 1) PRIMARY KEY,
    NomeCategoria VARCHAR(50) NOT NULL
);
GO

-- 2. Tabela de Produtos (com FK referenciando Categorias)
CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1, 1) PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) CHECK (Preco >= 0),
    Estoque INT DEFAULT 0,
    CategoriaID INT,
    CONSTRAINT FK_Produtos_Categorias FOREIGN KEY (CategoriaID)
        REFERENCES Categorias(CategoriaID)
);
GO
