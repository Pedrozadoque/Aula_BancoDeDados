USE CursoPraticoDB;
GO

-- =======================================================
-- 1. Inserindo dados na tabela Categorias
-- Not: Não Informamos CategoriaID pois ela é IDENTITY(1, 1)
-- ========================================================
INSERT INTO Categorias (NomeCategoria)
VALUES
    ('Eletrônicos'),
    ('Periféricos'),
    ('Acessórios');
GO

-- =============================================================
-- 2. Inserindo dados na tabela Produtos
-- Os valores da CategoriaID devem existir na tabela Categorias!
-- ==============================================================
INSERT INTO Produtos (NomeProduto, Preco, Estoque, CategoriaID)
VALUES
    ('Teclado Mecânico', 250.00, 15, 2),     -- Categoria 2: Periféricos
    ('Mouse Game', 120.50, 30, 2),           -- Categoria 2: Periféricos
    ('Monitor 24 Pol', 899.90, 8, 1),        -- Categoria 1: Eletrônicos
    ('Suporte para Monitor', 75.00, 20, 3);  --Categoria 3: Acessórios
GO

-- =======================================================================
-- 3. Consultando os dados inseridos
-- =======================================================================

-- Ver todas as catecorias
SELECT * FROM Categorias;

-- Ver todos os produtos
SELECT * from Produtos;

-- Selecionar apenas  nome e preço dos produtos
SELECT NomeProduto, Preco
FROM Produtos;

-- Filtrar produtos com preço maior que R$100,00
SELECT *
FROM Produtos
WHERE Preco > 100.00;