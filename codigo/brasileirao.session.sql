-- para saber quais times estão na tabela --
select distinct Clube 
from dataset_campeonato_br_2007_2024_v2
where Campeao = 1
order by Clube asc;


-- criação da tabela amostra para separar o que é importante --
CREATE TABLE amostra (
	ID INT primary KEY,
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
order by Clube; 


-- aqui quero tentar estatistica para estudar --
-- mas primeiro vamos definir as perguntas --
-- quais foram os times que mais ganharam ? --
SELECT 
FROM amostra
WHERE campeao = 1
ORDER BY clube;

SELECT clube, count(*) as mediana
FROM amostra
WHERE campeao = 1
GROUP BY clube;

-- em qual ano ganaram ? --
-- o que tinham em comun com os outros times que ganharam ? --
-- o que falto nos outros times que não ganharam --