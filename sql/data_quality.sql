CREATE OR REPLACE PROCEDURE `news-information-423715.data_quality.all_tables`()
begin

DECLARE tables ARRAY<STRING>;

SET tables = (
  SELECT ARRAY(
    SELECT table_name
    FROM `raw.INFORMATION_SCHEMA.TABLES`
    WHERE table_schema = 'raw'
  )
);

FOR current_table IN (SELECT * FROM UNNEST(tables) AS table_name)
DO
  BEGIN
    
      EXECUTE IMMEDIATE FORMAT("""
        INSERT INTO data_quality.raw
        SELECT
          CURRENT_TIMESTAMP() AS datetime_now,   -- Captura a data e hora atual
          'raw' AS schema_name,             -- Nome do schema fixo como 'raw'
          '%s' AS table_name,                    -- Nome da tabela atual
          COUNT(*) AS count_de_linhas,           -- Contagem de linhas na tabela
        FROM `raw.%s`
      """, current_table.table_name, current_table.table_name);

  END;
END FOR;
END;