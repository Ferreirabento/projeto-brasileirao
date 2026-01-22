-- para saber quais times estão na tabela --
select distinct Clube 
from dataset_campeonato_br_2007_2024_v2
where Campeao = 1
order by Clube asc;


-- criação da tabela amostra para separar o que é importante --
CREATE TABLE amostra (
	ID INT primary KEY auto_increment,
    ano int,
    clube text,
    receita_anual text,
    qnt_jogadores int,
	media_idade text,
    estrangeiros int,
    campeao int
);
