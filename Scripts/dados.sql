-- INSERT  na tablea de cliente
INSERT INTO CLIENTE VALUES  (1000, 'Joao Oliveira', 'Projetada, 22, Rio Branco-AC');
INSERT INTO CLIENTE VALUES (2000, 'Maria da Paz', 'Rua do Maracatu, 23, Rio Branco-AC');
INSERT INTO CLIENTE VALUES (3000, 'Jose Bonifacio', 'Av. Conselheiro Aguiar,10, Xapuri-AC');
INSERT INTO CLIENTE VALUES (4000, 'Fabiana Martins', 'Rua do Forro, 49, Brasileia-AC');
INSERT INTO CLIENTE VALUES (5000, 'Francisco Dantas', NULL);

-- erro de chave primária duplicada ao inserir na tabela de clientes
INSERT INTO CLIENTE VALUES (2000, 'Maria da Paz', 'Rua do Maracatu, 23, Rio Branco-AC');
INSERT INTO CLIENTE VALUES (3000, 'Jose Bonifacio', 'Av. Conselheiro Aguiar,10, Xapuri-AC');
INSERT INTO CLIENTE VALUES (4000, 'Fabiana Martins' , 'Rua do Forro, 49, Brasileia-AC');
INSERT INTO CLIENTE VALUES (5000, 'Francisco Dantas', NULL);

-- INSERT na tabela de livro
INSERT INTO LIVRO VALUES  (10, 'Dom Casmurro',  2019, 'Principis', 'Romance', 100);
INSERT INTO LIVRO VALUES (20, 'Cem Anos de Solidao', 2018, 'Record', 'Romance', 120);
INSERT INTO LIVRO VALUES (30, 'Anna Karienina', 1877, 'Livro e Cia', 'Romance', 250);
INSERT INTO LIVRO VALUES (40, 'O Rei Leao', 1995, 'Livro e Cia', 'Infantil', 35);
INSERT INTO LIVRO VALUES (50, 'Data science', 2016, 'Atlas', 'Tecnologia', 135);
INSERT INTO LIVRO VALUES (60, 'BI', 2019, 'Atlas', 'Tecnologia', 138);
INSERT INTO LIVRO VALUES (70, 'Banco de Dados', 2010, 'Pearson', 'Tecnologia', 220);
INSERT INTO LIVRO VALUES (80, 'Fisiologia', 2016, 'Koogan', 'Medicina',  540);
INSERT INTO LIVRO VALUES (90, 'Anatomia', 2014, 'Koogan', 'Medicina', 500);
INSERT INTO LIVRO VALUES (100, 'Histologia Basica', 2015, 'Koogan', 'Medicina', 387);
INSERT INTO LIVRO VALUES (110, 'Enxaqueca', 2019, 'Koogan', 'Medicina', 57);

-- INSERT na tabela autor
INSERT INTO AUTOR VALUES (1, 'Machado de Assis');
INSERT INTO AUTOR VALUES (2, 'Gabriel G. Marquez');
INSERT INTO AUTOR VALUES (3, 'Leon Tostoi');
INSERT INTO AUTOR VALUES (4, 'Elizabeth Rudnick'); 
INSERT INTO AUTOR VALUES (5, 'Foster Provost');
INSERT INTO AUTOR VALUES (6, 'Tom Fawcett');
INSERT INTO AUTOR VALUES (7, 'Ramesh Sharda');
INSERT INTO AUTOR VALUES (8, 'Efraim Turban');
INSERT INTO AUTOR VALUES (9, 'Ramez Elmasri');
INSERT INTO AUTOR VALUES (10, 'Shamkant B. Navathe');
INSERT INTO AUTOR VALUES (11, 'John E. Hall');
 
-- INSERT na tabela AUTORLIVRO
INSERT INTO AUTORLIVRO  VALUES (1,10);
INSERT INTO AUTORLIVRO  VALUES (2,20);
INSERT INTO AUTORLIVRO  VALUES (3,30);
INSERT INTO AUTORLIVRO  VALUES (4,40);
INSERT INTO AUTORLIVRO  VALUES (5,50);
INSERT INTO AUTORLIVRO  VALUES (6,50);
INSERT INTO AUTORLIVRO  VALUES (7,60);
INSERT INTO AUTORLIVRO  VALUES (8,60);
INSERT INTO AUTORLIVRO  VALUES (9,70);
INSERT INTO AUTORLIVRO  VALUES (10, 70);
INSERT INTO AUTORLIVRO  VALUES (11,80);
INSERT INTO AUTORLIVRO  VALUES (11,90);
INSERT INTO AUTORLIVRO  VALUES (11,100);
INSERT INTO AUTORLIVRO  VALUES (11,110);
 
-- INSERT na tabela VENDA
INSERT INTO VENDA VALUES (1001, 1000, 10, '10/02/2021', 1, 150);
INSERT INTO VENDA VALUES (1002, 1000, 20, '08/04/2020', 2, 240);
INSERT INTO VENDA VALUES (1003, 2000, 30, '18/04/2019', 2, 500);
INSERT INTO VENDA VALUES (1004, 3000, 80, '12/02/2020', 1, 540);
INSERT INTO VENDA VALUES (1005, 3000, 90, '23/10/2019', 1, 500);

-- erro de chave primária duplicada ao inserir na tabela de venda
INSERT INTO VENDA VALUES (1005, 3000, 10, '23/10/2019', 1, 150);