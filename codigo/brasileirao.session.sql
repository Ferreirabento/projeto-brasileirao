-- para saber quais times estão na tabela --
select distinct Clube 
from dataset_campeonato_br_2007_2024_v2
where Campeao = 1
order by Clube asc;


-- criação da tabela amostra para separar o que é importante --
CREATE TABLE amostra (
	ID INT primary KEY auto_incremente,
    ano int,
    clube text,
    receita_anual text,
    qnt_jogadores int,
	media_idade text,
    estrangeiros int,
    campeao int
);


-- inserindo os dados (amostragem não probabilistica) dos dados da população -- 
insert into amostra (ano, clube, receita_anual, qnt_jogadores, media_idade, estrangeiros, campeao)
Select Ano, Clube, Receita_anual, Qtd_Jogadores, Idade_Media, Estrangeiros, Campeao 
from dataset_campeonato_br_2007_2024_v2
where Campeao = 1
order by Clube; 


-- mostrar o resultado já otimizado -- 
select * from amostra


-- aqui não deu cert mas quero tentar --
SELECT
    CASE
        WHEN Idade_Media BETWEEN 16 AND 21 THEN 'JUVENIO',
        WHEN Idade_Media BETWEEN 22 AND 29 THEN 'ADULTO',
        WHEN Idade_Media BETWEEN 30 AND 34 THEN 'VETERANO',
        ELSE 'FIM DE CARREIRA'
    END AS 'faixa etária'
from amostra
GROUP BY 1;