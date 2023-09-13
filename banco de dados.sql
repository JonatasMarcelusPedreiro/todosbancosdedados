# - OPERAÇÕES BÁSICAS DO SQL

# -- Operações com SELECT (selecionar)

# - Selecionar tudo de uma tabela
SELECT * FROM fornecedores;
# - Selecionar apenas a cidade
SELECT cidade FROM fornecedores;

# -------- Operações com INSERT (inserir) -------
# - Segue um padrão para todos os casos

INSERT INTO fornecedores (nome) VALUES ('Marcelus'); 

INSERT INTO fornecedores (nome,cidade,estado) VALUES ('Jhow', 'São Carlos', 'SP');

# - Operação delete
# - NUNCA FAÇA DELETE SEM FROM
DELETE FROM fornecedores WHERE id = 1;

# LIMPEZA de dados nulos
DELETE FROM fornecedores WHERE cidade is NULL;

SET SQL_SAFE_UPDATES = 0;

# ----- Operação de UPDATE (alterar) ------
UPDATE fornecedores SET nome = 'Jhonatan'where id = 3
