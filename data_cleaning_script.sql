USE pro_1;
GO

SELECT *
FROM sales_data_clean
;

SELECT COUNT(*)FROM sales_data_clean;

SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'sales_data_clean';

SELECT OrderID, UnitPrice
FROM sales_data_clean
WHERE UnitPrice = ' ';

SELECT
	ROUND(AVG(CAST(UnitPrice AS FLOAT)),2) AS AverageUnitePrice
FROM
	sales_data_clean
WHERE UnitPrice <> ' ';


UPDATE sales_data_clean

SET UnitPrice = '157.96'
WHERE UnitPrice = '';



SELECT DISTINCT OrderStatus
FROM sales_data_clean;


Update sales_data_clean
SET OrderStatus = 'Delivered'
WHERE OrderStatus = 'deliverd';

SELECT * 
FROM  sales_data_clean
WHERE CustomerName = '';

DELETE FROM sales_data_clean
WHERE  CustomerName = ' ';


SELECT COUNT(*)
FROM sales_data_clean
WHERE UnitPrice = '';