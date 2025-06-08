CREATE MASTER KEY ENCRYPTION BY PASSWORD ='Amey@#7121'


CREATE DATABASE SCOPED CREDENTIAL cred_amey
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
    LOCATION ='https://myawdatalakestorage.blob.core.windows.net/silver',
    CREDENTIAL = cred_amey
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION ='https://myawdatalakestorage.blob.core.windows.net/gold',
    CREDENTIAL = cred_amey
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION ='org.apache.hadoop.io.compress.SnappyCodec'
)


--------------------------------------
------CREATE EXTERNAL TABLE EXTSALES
--------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales



SELECT * from gold.sales