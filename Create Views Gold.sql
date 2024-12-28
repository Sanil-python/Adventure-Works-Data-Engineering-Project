CREATE VIEW gold.calender
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Calender/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.customer
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Customer/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.product_categories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.product_sub_categories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Product_Sub_Categories/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.products
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) as query1



CREATE VIEW gold.returns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as query1


CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awstoragedatalakesanil.dfs.core.windows.net/transformed/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as query1
