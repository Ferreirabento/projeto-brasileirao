-- para saber quais times estão na tabela --
select distinct Clube 
from dataset_campeonato_br_2007_2024_v2
where Campeao = 1
order by Clube asc;
