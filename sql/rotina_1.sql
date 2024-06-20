CREATE OR REPLACE PROCEDURE `news-information-423715.trusted.all_tables`()
begin


CREATE OR REPLACE TABLE `trusted.tb_news` as (

SELECT 
N_boletim AS id_boletim,	
PARSE_DATETIME('%d/%m/%Y %H:%M', data_hora_boletim)as data_hora_boletim,	
cast(seq_veic as int64) as seq_veic,	
cast(cod_categ as int64) as cod_categ,	
descricao_categoria,	
cast(cod_especie as int64) as cod_especie,	
descricao_especie,	
cast(cod_situacao as int64) as cod_situacao,	
desc_situacao,	
cast(tipo_socorro as int64) as tipo_socorro,	
desc_tipo_socorro
from `raw.tb_news`
);

end;