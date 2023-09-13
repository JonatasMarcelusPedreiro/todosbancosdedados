Select * from livros;

Select autor from livros where titulo = 'A Guerra dos Tronos';
SELECT * from livros where genero = 'Fantasia'; 
SELECT * from livros where ano_publicacao>1950;
SELECT * from livros where id = 1;

SET SQL_SAFE_UPDATES = 0; 

INSERT INTO livros (titulo, autor, ano_publicacao, genero) values ( ' A Guerra dos Tronos', 'George R. R. Martin', 1996, 'Fantasia');
INSERT INTO livros (titulo, autor, ano_publicacao, genero) values (' Dom Casmurro', ' Machado de Assis', 1899, 'Romance');
INSERT INTO livros (titulo, autor, ano_publicacao, genero) values (' O Senho dos Anéis', ' J.R.R Tolkein', 1954, 'Fantasia');
INSERT INTO livros (titulo, autor, ano_publicacao, genero) values (' O Pequeno Prícipe', ' Antoine de Saint-Exupéry  ', 1943, 'Fábula');
INSERT INTO livros (titulo, autor, ano_publicacao, genero) values (' Harry Potter', ' J.K Rowling ', 1997, 'Ficção');


UPDATE livros SET genero  = 'Drama' where id = 1;
UPDATE livros SET id = 18 where id = 5;

