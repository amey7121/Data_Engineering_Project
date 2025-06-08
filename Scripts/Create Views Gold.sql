-----------------------------------
----- CREATE VIEW CALENDAR
-----------------------------------
CREATE VIEW gold.calendar
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'Parquet'
        ) as QUER1


-----------------------------------
----- CREATE VIEW CUSTOMERS
-----------------------------------
CREATE VIEW gold.customer
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'Parquet'
        ) as QUER1


-----------------------------------
----- CREATE VIEW Products
-----------------------------------

CREATE VIEW gold.Products
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'Parquet'
        ) as QUER1

-----------------------------------
----- CREATE VIEW Returns
-----------------------------------

CREATE VIEW gold.Returns
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'Parquet'
        ) as QUER1

-----------------------------------
----- CREATE VIEW Sales
-----------------------------------

CREATE VIEW gold.Sales
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'Parquet'
        ) as QUER1

-----------------------------------
----- CREATE VIEW Territories
-----------------------------------

CREATE VIEW gold.Territories
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'Parquet'
        ) as QUER1
        
-----------------------------------
----- CREATE VIEW Product_Subcategories
-----------------------------------

CREATE VIEW gold.Product_Subcategories
AS
SELECT
    *
FROM
    OPENROWSET
    (
        BULK 'https://myawdatalakestorage.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'Parquet'
        ) as QUER1

