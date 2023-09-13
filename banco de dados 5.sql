INSERT INTO fornecedores (nome, endereco, telefone, email) VALUES ('Conradito Store', 'Rua X', '111-222', 'contato@email.com');

INSERT INTO fornecedores (nome, endereco, telefone, email) VALUES ('jonatas Store', 'Rua X', '222-222', 'jonatas@email.com');

INSERT INTO fornecedores (nome, endereco, telefone, email) VALUES ('marcelus Store', 'Rua X', '122-222', 'marcelus@email.com');

SELECT * FROM fornecedores;


INSERT INTO produtos (id, id_fornecedor, nome, descricao, preco, quantidade) VALUES (2, 9, 'Xocolate', 'Gostoso', 5.50, 125);

INSERT INTO produtos (id, id_fornecedor, nome, descricao, preco, quantidade) VALUES (3, 10, 'Xocolate', 'Gostoso', 5.50, 125);

INSERT INTO produtos (id, id_fornecedor, nome, descricao, preco, quantidade) VALUES (4, 11, 'Bolacha', 'Não é biscoito', 4.50, 154);

SELECT * FROM fornecedores WHERE id = 205;

SELECT * FROM produtos;

SET SQL_SAFE_UPDATES = 0;




-- DELETE apaga dados
DELETE FROM produtos;
DELETE FROM fornecedores;







DELETE FROM fornecedores WHERE id = 9;
DELETE FROM produtos WHERE id = 2;


