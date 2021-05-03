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
-- retorna o nome do cliente que comprou o livro
SELECT c.NOME FROM CLIENTE c INNER JOIN VENDA v on c.IDCLIENTE = v.CODCLIENTE AND v.CODLIVRO =20;

-- 3- Quais os livros  de autoria de  Machado de Assis?

-- 4- Qual o menor e maior preço de livros da área de  Tecnologia?

-- 5- Modifique o preço do livro 'Dom Casmurro' para 180 reais.

-- 6- Remova  o cliente 4000.

-- 7- Quais os títulos dos livros da área de  Tecnologia?

-- 8- Qual a média de preços dos livros da editora 'Koogan'?

-- 9- Quantos livros de Tecnologia há?

-- 10- Quais os nomes dos autores do livro Banco de Dados?

-- 11- Quais os nomes e endereços dos clientes de Xapuri?

-- 12- Quais livros possuem mais de 2 vendas?

-- 13- Quais livros nunca venderam?

-- 14- Quanto o cliente 3000 gastou em compra de livros?

-- 15- Quais os nomes dos clientes que estão sem endereço?

