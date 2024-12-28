CREATE DATABASE SCOPED CREDENTIAL cred_sanil
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_transformed
WITH
(
    LOCATION = 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed',
    CREDENTIAL = cred_sanil
)


CREATE EXTERNAL DATA SOURCE source_serving
WITH
(
    LOCATION = 'https://awstoragedatalakesanil.dfs.core.windows.net/serving',
    CREDENTIAL = cred_sanil
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales


CREATE EXTERNAL TABLE gold.extcalender
WITH
(
    LOCATION = 'extcalender',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calender


CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customer


CREATE EXTERNAL TABLE gold.extprodcat
WITH
(
    LOCATION = 'extprodcat',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product_categories


CREATE EXTERNAL TABLE gold.extprodsubcat
WITH
(
    LOCATION = 'extprodsubcat',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product_sub_categories


CREATE EXTERNAL TABLE gold.extprod
WITH
(
    LOCATION = 'extprod',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products


CREATE EXTERNAL TABLE gold.extret
WITH
(
    LOCATION = 'extret',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns


CREATE EXTERNAL TABLE gold.extter
WITH
(
    LOCATION = 'extter',
    DATA_SOURCE = source_serving,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories
