-- Consulta 1
SELECT 
Nome, Ano
FROM Filmes

-- Consulta 2
SELECT
Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC

-- Consulta 3
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Consulta 4
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

-- Consulta 5
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

-- Consulta 6
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Consulta 7
SELECT
Ano,
COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Consulta 8
SELECT
Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- Consulta 9
SELECT
Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Consulta 10
SELECT
Filmes.Nome, Generos.Genero
FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = FilmesGenero.IdFilme AND FilmesGenero.IdGenero = Generos.Id

-- Consulta 11
SELECT
Filmes.Nome, Generos.Genero
FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = FilmesGenero.IdFilme AND FilmesGenero.IdGenero = Generos.Id
AND Generos.Genero = 'Mistério'

-- Consulta 12
SELECT
Filmes.Nome,
Atores.PrimeiroNome, Atores.UltimoNome,
ElencoFilme.Papel
FROM Filmes, Atores, ElencoFilme
WHERE Filmes.Id = ElencoFilme.IdFilme AND ElencoFilme.IdAtor = Atores.Id

