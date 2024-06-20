CREATE OR REPLACE PROCEDURE `news-information-423715.trusted.sql_to_parquet`()
BEGIN   
  DECLARE filename STRING DEFAULT 'tb_news_trusted';
  DECLARE query STRING;        
  SET query = "CREATE TEMP TABLE temp_analytics as (SELECT * FROM news-information-423715.trusted.tb_news)";
  EXECUTE IMMEDIATE query;        

  EXPORT DATA
    OPTIONS (
      uri = 'gs://bh_trafego_trusted/tb_news/' || filename || '*.snappy.parquet',
      format = 'PARQUET',
      overwrite = true,
      compression = 'snappy'
    )
  AS (
    SELECT 
      *
    FROM temp_analytics
  );
END;