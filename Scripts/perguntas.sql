/**
 * TRIBUNAL DE CONTAS DO ESTADO DO ACRE - TCE
 * 
 * FUNDAÇÃO PARQUE TECNOLÓGICO DA PARAÍBA - PAQTCPB
 * 
 * Treinamento em BI e Ciência de Dados
 * 
 * Módulo: Gestão de Dados Relacionais em Ciência de Dados
 * 
 * Exercício de Avaliação - SQL
 * 
 * 
 * Aluno 1: Maicon Vasconcelos de Araújo
 */


-- Usando SQL, responda ao menos 10 das questões abaixo de 1 a 15.

-- 1- Quais os títulos dos livros  da área  'Romance' publicados antes de 2010?

SELECT titulo
FROM LIVRO
WHERE area = 'Romance' AND ano < 2010;

-- 2- Quais os nomes dos clientes que  compraram o livro Cem Anos de Solidão?

-- Resposta: retorna o nome do cliente que comprou o livro
SELECT c.NOME 
FROM CLIENTE c 
	INNER JOIN VENDA v ON c.IDCLIENTE = v.CODCLIENTE 
WHERE v.CODLIVRO =20;

-- 3- Quais os livros  de autoria de  Machado de Assis?

-- Resposta: retorna os os livros do autor
SELECT l.TITULO 
FROM LIVRO l 
	INNER JOIN AUTORLIVRO al ON l.CODLIVRO = al.CODLIVRO 
	INNER JOIN AUTOR a ON a.CODAUTOR = al.CODAUTOR  
WHERE a.NOME = 'Machado de Assis';

-- 4- Qual o menor e maior preço de livros da área de  Tecnologia?

-- Resposta: retorna o menor e maior preço dos livros de tecnologia
SELECT MIN(PRECO) AS MENOR_PREÇO, MAX(PRECO) AS MAIOR_PREÇO
FROM LIVRO  
WHERE AREA = 'Tecnologia';

-- 5- Modifique o preço do livro 'Dom Casmurro' para 180 reais.

-- Resposta: altera o preço do livro de 100 para 180
UPDATE LIVRO 
SET PRECO = 180 
WHERE CODLIVRO = 10;

-- 6- Remova  o cliente 4000.

-- Resposta: remove o cliente ID 4000
DELETE FROM CLIENTE 
WHERE IDCLIENTE = 4000;

-- 7- Quais os títulos dos livros da área de  Tecnologia?

-- Resposta
SELECT TITULO 
FROM LIVRO  
WHERE AREA = 'Tecnologia';

-- 8- Qual a média de preços dos livros da editora 'Koogan'?

-- Resposta, a função AVG vai retornar a média de preços dos livros da editora
SELECT AVG(PRECO) 
FROM LIVRO  
WHERE EDITORA = 'Koogan';

-- 9- Quantos livros de Tecnologia há?

-- Resposta:
SELECT l.AREA, COUNT(l.CODLIVRO) 
FROM LIVRO l 
WHERE l.AREA = 'Tecnologia' 
GROUP BY l.AREA ;

-- 10- Quais os nomes dos autores do livro Banco de Dados?

/*
 * Resposta: 
 * Faz o inner join de livro com autorlivro
 * depois o inner join de autorlivro com autor
 */
SELECT * 
FROM LIVRO l 
	INNER JOIN AUTORLIVRO al ON l.CODLIVRO = al.CODLIVRO 
	INNER JOIN AUTOR a ON al.CODAUTOR = a.CODAUTOR 
WHERE l.TITULO = 'Banco de Dados' ;

-- 11- Quais os nomes e endereços dos clientes de Xapuri?

-- Resposta
SELECT NOME FROM CLIENTE WHERE ENDERECO LIKE '%XAPURI%';

-- 12- Quais livros possuem mais de 2 vendas?

/**
 * Buscando pela quantidade de tuplas na tabela de vendas, maior que 2 vendas
 * também não há
 */
SELECT l.TITULO , COUNT(v.CODLIVRO) 
FROM LIVRO l
	INNER JOIN VENDA v ON l.CODLIVRO = v.CODLIVRO 
GROUP BY l.TITULO
HAVING COUNT(l.CODLIVRO) > 2;

/**
 * Filtrando pelo campo quantidade onde esta seria superior a 2 vendas
 * também não satisfaz a questão.
 */
SELECT l.TITULO , v.QUANTIDADE 
FROM LIVRO l
	INNER JOIN VENDA v ON l.CODLIVRO = v.CODLIVRO
WHERE v.QUANTIDADE > 2;

-- Resposta: não há livros com mais de duas vendas

-- 13- Quais livros nunca venderam?

-- Resposta:
SELECT l.* 
FROM LIVRO l 
WHERE NOT EXISTS (
	SELECT * FROM VENDA v WHERE l.CODLIVRO = v.CODLIVRO);

-- 14- Quanto o cliente 3000 gastou em compra de livros?

-- Resposta: utilizo a função sum pra retonrar o gasto em compra de livros
SELECT c.IDCLIENTE , c.NOME , SUM(v.VALORPAGO) as TOTAL_GASTO
FROM CLIENTE c 
	INNER JOIN VENDA v ON c.IDCLIENTE = v.CODCLIENTE 
WHERE c.IDCLIENTE = 3000;

-- 15- Quais os nomes dos clientes que estão sem endereço?

-- Resposta
SELECT c.NOME FROM CLIENTE c WHERE c.ENDERECO is NULL;
