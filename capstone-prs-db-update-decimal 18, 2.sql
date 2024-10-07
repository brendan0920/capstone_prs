--SELECT cast(total as decimal(18, 2))
--	FROM Request;

--SELECT cast(price as decimal(18, 2))
--	FROM Product;

ALTER TABLE Request
ALTER COLUMN total DECIMAL(18, 2);

ALTER TABLE Product
ALTER COLUMN price DECIMAL(18, 2);

UPDATE Request
SET total = CAST(total AS DECIMAL(18, 2));

UPDATE Product
SET price = CAST(price AS DECIMAL(18, 2));