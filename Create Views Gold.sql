-------------------------------------
-- CREATE VIEW: CALENDAR
-------------------------------------
DROP VIEW IF EXISTS gold.calendar;
GO
CREATE VIEW gold.calendar AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: CUSTOMERS
-------------------------------------
DROP VIEW IF EXISTS gold.Customers;
GO
CREATE VIEW gold.Customers AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: PRODUCT_CATEGORIES
-------------------------------------
DROP VIEW IF EXISTS gold.Product_Categories;
GO
CREATE VIEW gold.Product_Categories AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: PRODUCT_SUBCATEGORIES
-------------------------------------
DROP VIEW IF EXISTS gold.Product_Subcategories;
GO
CREATE VIEW gold.Product_Subcategories AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: PRODUCTS
-------------------------------------
DROP VIEW IF EXISTS gold.Products;
GO
CREATE VIEW gold.Products AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: RETURNS
-------------------------------------
DROP VIEW IF EXISTS gold.Returns;
GO
CREATE VIEW gold.Returns AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: SALES
-------------------------------------
DROP VIEW IF EXISTS gold.Sales;
GO
CREATE VIEW gold.Sales AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

-------------------------------------
-- CREATE VIEW: TERRITORIES
-------------------------------------
DROP VIEW IF EXISTS gold.Territories;
GO
CREATE VIEW gold.Territories AS
SELECT * FROM OPENROWSET 
(
    BULK 'https://awstoragedatalakess.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO
