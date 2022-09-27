select Nome, Ano from Filmes

select Nome, Ano from Filmes
	order by Ano

select Nome, Ano, Duracao from Filmes
	where Nome = 'De volta para o Futuro'

select * from Filmes
	where Ano = 1997

select * from Filmes
	where Ano >= 2000

select * from Filmes
	where Duracao > 100 and Duracao < 150
order by Duracao

select Ano, count( * ) Quantidade from Filmes
	group by Ano 
	order by Quantidade desc

select * from Atores
	where Genero = 'M'

select * from Atores
	where Genero = 'F'
	order by PrimeiroNome

select f.Nome, g.Genero from Filmes f
	 join FilmesGenero fg on fg.IdFilme = f.Id
	 join Generos g	      on g.Id = fg.IdGenero


select f.Nome, g.Genero from Filmes f
	 join FilmesGenero fg on fg.IdFilme = f.Id
	 join Generos g	      on g.Id = fg.IdGenero
	 where g.Genero = 'Mistério'

select * from Atores

select * from ElencoFilme

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
	join ElencoFilme ef on ef.IdFilme = f.Id
	join Atores      a  on a.Id       = ef.IdAtor