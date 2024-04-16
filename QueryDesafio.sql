-- 1 Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2 Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- 3 Buscar pelo filme De Volta Para o Futuro, trazendo o nome, o ano e a dura��o
SELECT
	*
FROM Filmes
WHERE Nome = 'de volta para o futuro'

-- 4 Buscar filmes lan�ados em 1997
SELECT
	*
FROM Filmes
WHERE Ano = 1997

-- 5 Buscar os filmes lan�ados AP�S o ano de 2000
SELECT
	*
FROM Filmes
WHERE Ano > 2000

-- 6 Buscar os filmes com a dura��o maior que 100 e menor que 150, 
-- ordenando pela dura��o em ordem crescente
SELECT
	*
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao ASC

-- 7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, 
-- ordenando pela dura��o em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 Buscar os Atores do g�nero masculino, retornando PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

-- 9 Buscar os atores do g�nero feminino, retornando PrimeiroNome, UltimoNome
-- e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o g�nero
SELECT Filmes.Nome, Generos.Genero
FROM ((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Filmes.Nome, Generos.Genero
FROM ((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Genero = 'Mist�rio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ((ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id)
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id)