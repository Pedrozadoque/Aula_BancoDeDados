USE CursoPraticoDB;
GO

-- ===========================================
-- AULA 3: RELACIONAMENTOS, ATUALIZAÇÕES E EXCLUSÕES
-- ===========================================

-- JUNÇÃO DE TABELAS (INNER JOIN)
-- Exibir o produto junto com o nome da sua categoria
SELECT
    P.ProdutoID,
    P.NomeProduto,
    P.Preco,
    P.Estoque,
    C.NomeCategoria
FROM Produtos P
INNER JOIN Categorias C ON P.CategoriaID = C.CategoriaID;
GO

-- 2. ORDENAÇÃO DE DADOS (ORDER BY)
-- Ordenar os produtos do mais caro para o mais barato
SELECT NomeProduto, Preco 
FROM Produtos
ORDER BY Preco DESC;
GO

-- Ordenar em orde alfabética pelo nome
SELECT NomeProduto, Preco 
FROM Produtos
ORDER BY NomeProduto ASC;
GO