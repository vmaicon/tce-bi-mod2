-- Usando SQL, responda ao menos 10 das questões abaixo de 1 a 15.

-- 1- Quais os títulos dos livros  da área  'Romance' publicados antes de 2010?

SELECT titulo
FROM LIVRO
WHERE area = 'Romance' AND ano < 2010;

-- 2- Quais os nomes dos clientes que  compraram o livro Cem Anos de Solidão?

-- descobre o id do livro
SELECT * from LIVRO l WHERE titulo = 'Cem Anos de Solidão';
-- descobre quais vendas do livro
SELECT * FROM VENDA WHERE CODLIVRO = 20;
-- Resposta: retorna o nome do cliente que comprou o livro
SELECT c.NOME 
FROM CLIENTE c 
INNER JOIN VENDA v ON c.IDCLIENTE = v.CODCLIENTE 
AND v.CODLIVRO =20;

-- 3- Quais os livros  de autoria de  Machado de Assis?

-- descobrir dados do autor na tabela autor
SELECT * 
FROM AUTOR 
WHERE NOME = 'Machado de Assis';

-- Resposta: retorna os os livros do autor
SELECT l.TITULO FROM LIVRO l 
INNER JOIN AUTORLIVRO al ON l.CODLIVRO = al.CODLIVRO 
INNER JOIN AUTOR a ON a.CODAUTOR = al.CODAUTOR  
AND a.NOME = 'Machado de Assis';

-- 4- Qual o menor e maior preço de livros da área de  Tecnologia?

-- Descobre os livros de tecnologia na tablea de livro
SELECT * FROM LIVRO l WHERE AREA = 'Tecnologia';

-- Resposta: retorna o menor e maior preço dos livros de tecnologia
SELECT MIN(PRECO) AS MENOR_PREÇO, MAX(PRECO) AS MAIOR_PREÇO
FROM LIVRO  
WHERE AREA = 'Tecnologia';

-- 5- Modifique o preço do livro 'Dom Casmurro' para 180 reais.

-- Verifica se o livro existe
SELECT * 
FROM LIVRO 
WHERE TITULO = 'Dom Casmurro';

-- Resposta: altera o preço do livro de 100 para 180
UPDATE LIVRO 
SET PRECO = 180 
WHERE CODLIVRO = 10;

-- 6- Remova  o cliente 4000.

-- Verifica se o cliente ID 4000 existe.
SELECT * 
FROM CLIENTE 
WHERE IDCLIENTE = 4000;

-- Resposta: remove o cliente ID 4000
DELETE FROM CLIENTE 
WHERE IDCLIENTE = 4000;

-- 7- Quais os títulos dos livros da área de  Tecnologia?

-- Resposta
SELECT TITULO 
FROM LIVRO  
WHERE AREA = 'Tecnologia';

-- 8- Qual a média de preços dos livros da editora 'Koogan'?

-- Verifica todos os livros da editora 'Koogan'
SELECT *
FROM LIVRO  
WHERE EDITORA = 'Koogan';

-- Resposta, a função AVG vai retornar a média de preços dos livros da editora
SELECT AVG(PRECO) 
FROM LIVRO  
WHERE EDITORA = 'Koogan';

-- 9- Quantos livros de Tecnologia há?

-- 10- Quais os nomes dos autores do livro Banco de Dados?

-- 11- Quais os nomes e endereços dos clientes de Xapuri?

-- 12- Quais livros possuem mais de 2 vendas?

-- 13- Quais livros nunca venderam?

-- 14- Quanto o cliente 3000 gastou em compra de livros?

-- 15- Quais os nomes dos clientes que estão sem endereço?

