SELECT * FROM 03_atividades.carros;

INSERT INTO carros (id, marca, modelo, ano, cor, preco, novo)
VALUES
    (1, 'Toyota', 'Corolla', 2022, 'Prata', 45000.00, TRUE),
    (2, 'Honda', 'Civic', 2021, 'Preto', 40000.00, FALSE),
    (3, 'Ford', 'Focus', 2020, 'Branco', 35000.00, FALSE),
    (4, 'Chevrolet', 'Cruze', 2022, 'Vermelho', 42000.00, TRUE),
    (5, 'Volkswagen', 'Golf', 2019, 'Azul', 32000.00, FALSE),
    (6, 'Nissan', 'Sentra', 2021, 'Cinza', 38000.00, TRUE),
	(7, 'Hyundai', 'Elantra', 2021, 'Prata', 38000.00, TRUE),
    (8, 'Renault', 'Megane', 2020, 'Vermelho', 32000.00, FALSE),
    (9, 'Fiat', 'Uno', 2022, 'Branco', 25000.00, TRUE),
    (10, 'Peugeot', '208', 2021, 'Azul', 29000.00, FALSE),
    (11, 'Kia', 'Sorento', 2022, 'Preto', 55000.00, TRUE),
    (12, 'Mazda', 'CX-5', 2020, 'Cinza', 48000.00, FALSE),
    (13, 'Subaru', 'Impreza', 2019, 'Verde', 35000.00, FALSE),
    (14, 'Audi', 'A3', 2022, 'Branco', 52000.00, TRUE),
    (15, 'BMW', 'X5', 2021, 'Prata', 60000.00, TRUE),
    (16, 'Mercedes-Benz', 'C-Class', 2020, 'Preto', 54000.00, FALSE);
    
    SELECT * FROM carros;
    
    
    -- 1 => Mostre o modelo de todos os carros que são do ano de fabricação de 2022
    
    SELECT * FROM carros WHERE ano = 2022;
    
    
-- 2 => Selecione todos os carros cujo preço seja maior que 40000

    SELECT * FROM carros WHERE preco >= 40000;


-- 3 => Liste os carros ordenados pelo preço de forma crescente

SELECT * FROM carros ORDER BY preco ASC;


-- 4 => Selecione os carros que sejam novos e ordenados pelo ano de fabricação de forma decrescente

SELECT * FROM carros WHERE ano = 2022 ORDER BY ano DESC;


-- 5 => Conte quantos carros têm a cor "Branco"

 SELECT COUNT('branco')FROM carros; 
SELECT COUNT(*) AS 'branco' FROM carros;

-- 6 => Liste todos os carros da marca "Toyota" ou "Honda"

 SELECT * FROM carros WHERE marca = 'Toyota' OR marca = 'Honda';


-- 7 => Selecione os carros cujo modelo comece com a letra "S"

 SELECT * FROM carros WHERE modelo  LIKE 'S%';


-- 8 => Selecione os carros que não sejam da cor "Preto" nem da cor "Branco"

 SELECT * FROM carros WHERE cor NOT LIKE 'Preto' AND cor NOT LIKE 'Branco';


-- 9 => Selecione os carros cujo preço seja maior que 35000 e cuja cor seja "Preto"

SELECT * FROM carros WHERE preco > 4000 AND cor LIKE 'Preto';

-- 10 => Liste os carros que sejam novos ou tenham a cor "Vermelho"

SELECT * FROM carros WHERE novo =  true AND cor LIKE 'Vermelho';


-- 11 => Conte quantos carros não são da marca "Toyota" nem da marca "Honda"

SELECT COUNT(*)  FROM carros WHERE marca NOT IN ('Toyota' , 'Honda');


-- 12 => Selecione os carros que são usados e têm o preço menor que 40000

SELECT * FROM carros WHERE novo = false AND preco > 4000 ;

-- 13 => Liste os carros cujo ano seja 2020 e cuja cor não seja "Branco"

SELECT * FROM carros WHERE ano =  2020 AND cor NOT LIKE 'Branco';

-- 14 => Selecione os carros cujo modelo comece com a letra "C" e tenham o preço maior que 40000 ou sejam novos

 SELECT * FROM carros WHERE modelo  LIKE 'C%' AND preco > 40000 OR novo = true;



-- 15 => Encontre os carros que não sejam novos e nem tenham a cor "Preto"

SELECT * FROM carros WHERE novo NOT LIKE true AND cor NOT LIKE 'Preto';


-- 16 => Liste os carros que sejam da marca "Ford" e tenham o preço menor que 36000 ou que sejam novos

SELECT * FROM carros WHERE marca LIKE 'Ford' AND preco < 36000 OR novo LIKE true;



-- 17 => Selecione os carros que sejam da marca "Volkswagen" e cujo ano seja 2019 ou 2020

SELECT * FROM carros WHERE marca LIKE 'Volkswagen' AND ano LIKE 2019;



-- 18 => Conte quantos carros são novos e da cor "Prata" ou "Branco"

SELECT COUNT(*)  FROM carros WHERE novo = true AND marca  IN ('Preta' , 'Branco');


-- HARD MODE:
-- 1 => Selecione os carros que sejam novos e tenham o preço maior que 40000, ou os carros usados que tenham a cor "Vermelho" e o preço maior que 35000

SELECT * FROM carros WHERE novo = true AND preco > 4000 OR cor LIKE 'Vermelho' AND preco > 35000;


-- 2 => Liste os carros que sejam da marca "Toyota" ou "Honda", têm o preço maior que 35000, e o ano de fabricação seja entre 2019 e 2021, mas não inclua os carros novos

SELECT * FROM carros WHERE marca = 'Toyota' OR marca LIKE 'Honda' AND preco > 35000 AND ano LIKE 2019 || 2020 || 2021 AND novo NOT LIKE false;



-- 3 => Encontre os carros que não sejam novos e cujo ano seja maior que 2020, ou então os carros novos que tenham a cor "Preto" e o preço maior que 45000

SELECT * FROM carros WHERE novo = false AND ano > 2020  OR novo LIKE true AND cor LIKE 'Preto' AND preco >45000;


-- 4 => Selecione os carros cujo modelo comece com a letra "C" e tenham o preço entre 30000 e 45000, excluindo os carros novos e com cor "Vermelho"

SELECT * FROM carros WHERE modelo LIKE 'C%' AND preco LIKE 30000 || 45000 AND cor NOT LIKE  'Vermelho';

-- 5 => Liste os carros da marca "Ford" ou "Chevrolet" que não sejam novos e tenham o preço menor que 40000, ou então os carros novos que tenham a cor "Azul"

SELECT * FROM carros WHERE marca LIKE 'Ford' OR marca LIKE 'Chevrolet' AND novo NOT LIKE true AND preco < 40000 OR ( novo LIKE true AND cor LIKE 'Azul');
    