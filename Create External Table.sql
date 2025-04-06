-- Create scoped credential
CREATE DATABASE SCOPED CREDENTIAL cred_ss
WITH IDENTITY = 'Managed Identity';
GO

-- Create external data sources
CREATE EXTERNAL DATA SOURCE source_silver
WITH ( 
    LOCATION = 'https://awstoragedatalakess.blob.core.windows.net/silver',
    CREDENTIAL = cred_ss
);
GO

CREATE EXTERNAL DATA SOURCE source_gold
WITH ( 
    LOCATION = 'https://awstoragedatalakess.blob.core.windows.net/gold',
    CREDENTIAL = cred_ss
);
GO

-- Create external file format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
GO

-- Create external table with schema defined (not AS SELECT)
CREATE EXTERNAL TABLE gold.extsales

WITH (
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Sales;

select * from gold.extsales


SELECT name, type_desc 
FROM sys.database_principals 
WHERE type IN ('S', 'U'); 

