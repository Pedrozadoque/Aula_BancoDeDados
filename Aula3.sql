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
