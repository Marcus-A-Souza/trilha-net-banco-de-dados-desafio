select * from Filmes	
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
SELECT Nome FROM Filmes WHERE Ano = 1997;
SELECT Nome FROM Filmes WHERE Ano > 2000;
SELECT Nome, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Ano DESC;
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;
SELECT F.Nome AS Nome_Filme, G.Nome AS Genero FROM Filmes F JOIN FilmesGenero FG ON F.ID = FG.FilmeID JOIN Generos G ON FG.GeneroID = G.ID;
SELECT F.Nome AS Nome_Filme, G.Nome AS Genero FROM Filmes F JOIN FilmesGenero FG ON F.ID = FG.FilmeID JOIN Generos G ON FG.GeneroID = G.ID WHERE G.Nome = 'Mistério';
SELECT F.Nome AS Nome_Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F JOIN ElencoFilme EF ON F.ID = EF.FilmeID JOIN Atores A ON EF.AtorID = A.ID;

