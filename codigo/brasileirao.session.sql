-- vamos pegar uma amostra e depois jogar no power BI --
CREATE TABLE amostra_palmeiras(
	id int primary key auto_increment,
    ano INT,
    clube TEXT,
    Vitorias INT,
    Empates INT,
    Derrotas INT,
    Gols_sofridos INT,
    Gols_feitos INT,
    Receita_anual TEXT
    
);

INSERT into amostra_palmeiras (ano, clube, Vitorias, Empates, Derrotas, Gols_sofridos, Gols_feitos, Receita_anual)
SELECT ano, clube, Vitorias, Empates, Derrotas, Gols_sofridos, Gols_feitos, Receita_anual
FROM dataset_campeonato_br_2007_2024_v2
WHERE clube = 'Palmeiras'
ORDER BY ano;

SELECT * from amostra_palmeiras;


-- aqui eu tenho as medias para depois fazer o desvio padrão 
SELECT 
    Clube, 
    AVG(Vitorias), 
    AVG(Empates), 
    AVG(Derrotas), 
    AVG(Gols_feitos), 
    AVG(Gols_sofridos), 
    AVG(Receita_anual)
FROM dataset_campeonato_br_2007_2024_v2
WHERE clube = 'Palmeiras' AND Campeao = 1
ORDER BY ano;


-- aqui eu tenho a moda dos clubes que ganharam -- 
SELECT 
    clube, 
    count(*) as moda
FROM dataset_campeonato_br_2007_2024_v2
WHERE campeao = 1
GROUP BY clube;


-- mediana para depois usar no quartil
SELECT AVG(Vitorias) as mediana
FROM (
    SELECT Vitorias,
        PERCENT_RANK() OVER(ORDER BY Vitorias) AS TESTE
    FROM dataset_campeonato_br_2007_2024_v2
    WHERE clube = 'Palmeiras'
) AS subquery
WHERE TESTE BETWEEN 0.45 AND 0.55;


-- quartil --
SELECT
    clube,
    Vitorias,
    NTILE(4) over (ORDER BY Vitorias) as quartil
FROM dataset_campeonato_br_2007_2024_v2
WHERE clube = 'Palmeiras' AND Campeao = 1;


-- aqui eu já tenho o desvio padrão --
SELECT 
    Clube, 
    STDDEV(Vitorias), 
    STDDEV(Empates), 
    STDDEV(Derrotas), 
    STDDEV(Gols_feitos), 
    STDDEV(Gols_sofridos), 
    STDDEV(Receita_anual)
from dataset_campeonato_br_2007_2024_v2
WHERE Clube = 'Palmeiras' and Campeao = 1;

