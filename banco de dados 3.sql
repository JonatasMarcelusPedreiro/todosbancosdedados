SELECT * FROM pessoas;

INSERT INTO pessoas (id, nome, idade, cidade, sexo)
VALUES
    (1, 'João', 25, 'São Paulo', 'M'),
    (2, 'Maria', 30, 'Rio de Janeiro', 'F'),
    (3, 'Pedro', 22, 'São Paulo', 'M'),
    (4, 'Ana', 28, 'Belo Horizonte', 'F'),
    (5, 'Lucas', 35, 'Rio de Janeiro', 'M'),
    (6, 'Sofia', 29, 'São Paulo', 'F'),
    (7, 'Mateus', 24, 'Belo Horizonte', 'M'),
    (8, 'Julia', 31, 'Rio de Janeiro', 'F'),
    (9, 'Maria', 29, 'São Paulo', 'F'),
    (10, 'Julio', 40, 'Rio de Janeiro', 'M');
    
    SELECT * FROM pessoas;
   SELECT id FROM pessoas;
   
   -- NOT: nega a seleção (faz ao contário)
   SELECT * FROM pessoas WHERE NOT cidade = "Rio de Janeiro";
   SELECT * FROM pessoas WHERE cidade < "Rio de Janeiro";
   
   -- OR: ou um ou outro
   SELECT * FROM pessoas WHERE id = 3 OR id= 5;
   SELECT * FROM pessoas WHERE cidade = 'São Paulo' OR cidade = 'Belo Horizonte';

-- IN: que contém qualquer coisa ali dentro
SELECT * FROM pessoas WHERE id IN (4,5,8,9);
SELECT * FROM pessoas WHERE cidade IN ('São Paulo','Rio de Janeiro');

-- Situação onde apenas o OR funciona
SELECT * FROM pessoas WHERE idade <= 30 OR idade >= 40;
	   
   -- Junção do NOT e do IN  
   SELECT * FROM pessoas WHERE idade NOT IN (25,22,29);
   
   -- AND: precisa estabelecer as duas condições para funcionar
   SELECT * FROM PESSOAS WHERE cidade = 'Rio de Janeiro' AND sexo = 'F';
   SELECT * FROM pessoas WHERE idade > 30 AND sexo <> 'M';
   
 -- Junção do And e do OR
 
 SELECT * FROM pessoas WHERE sexo = 'M' AND (cidade = 'São Paulo' or cidade = 'Rio de Janeiro');
 
 SELECT * FROM pessoas WHERE idade > 30 AND idade < 40 OR idade = 25;
 
 -- selecionar masculino da cidade de são paulo e belo horizonte 
 SELECT * FROM pessoas WHERE sexo = 'M' AND cidade = 'São Paulo' OR cidade = 'Belo Horizonte';
 
 
 -- ORDER BY: ordem de exibição dos resultados.
 -- DEVE FICAR SEMPRE NO FINAL DA CONSULTA
 
 SELECT * FROM pessoas ORDER BY idade DESC;
 -- ORDER BY DESC(descrecente)
 -- ORDER BY ASC(crescente)
 
 -- COUNT: contagem de elentos
 SELECT COUNT(*)FROM pessoas; 
 
 -- LIKE: para consultas aproximadas
 -- CORINGAS: % qualquer coisa antes/depois e _ para cada caracter
 SELECT * FROM pessoas WHERE cidade LIKE 'Rio%';
 SELECT * FROM pessoas WHERE nome NOT LIKE '%o' AND nome NOT LIKE  '%a';
 SELECT * FROM pessoas WHERE nome LIKE 'Juli_';
 SELECT * FROM pessoas WHERE nome LIKE '_____';
 
 
 
 
 
 
 ALTER TABLE `05_estoque_completo`.`produtos` 
ADD CONSTRAINT `fk_produtos_fornecedores`
  FOREIGN KEY (`id_fornecedor`)
  REFERENCES `05_estoque_completo`.`fornecedores` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
