USE capstone_prs;
GO

----PRS product - vendor JOIN
--SELECT *
--	FROM Product;







-- Insert into the user table
INSERT INTO [User] (username, password, firstName, lastName, phoneNumber, email, reviewer, admin)
VALUES 
('bkeam', 'bk1234', 'Brendan', 'Keam', '917-624-6069', 'brdk1220@gmail.com', 1, 1),
('mdamon', 'md1234', 'Matt', 'Damon', '202-456-8975', 'mdamon@gmail.com', 0, 0),
('cbale', 'cb1234', 'Christian', 'Bale', '202-547-7783', 'cbale@gmail.com', 0, 0),
('baffleck', 'bf1234', 'Ben', 'Affleck', '917-554-8521', 'baffleck@gmail.com', 0, 0),
('Rmcadams', 'rm1234', 'Rachel', 'McAdams', '917-889-6325', 'rmcadams@gmail.com', 0, 0);



-- Insert into the vendor table
INSERT INTO Vendor (code, name, address, city, state, zip, phoneNumber, email)
VALUES 
('BF01', 'Baldor Specialty Foods', '55 Food Center Dr', 'Bronx', 'NY', '10474', '718-860-9000', 'info@baldorfood.com'),
('DA01', 'D¡¯Artagnan', '600 Green Ln', 'Union', 'NJ', '07083', '877-858-0099', 'orders@dartagnan.com'),
('CW01', 'The Chefs'' Warehouse', '240 Food Center Dr', 'Bronx', 'NY', '10474', '800-878-3247', 'chef@chefswarehouse.com'),
('GF01', 'Gourmet Foods International', '38 Fairfield Place', 'West Caldwell', 'NJ', '07006', '973-487-3980', 'info@gfifoods.com'),
('CP01', 'Cipriani', '376 West Broadway', 'New York', 'NY', '10012', '212-343-0999', 'downtown@cipriani.com'),
('MC01', 'Murray¡¯s Cheese', '254 Bleecker St', 'New York', 'NY', '10014', '212-243-3289', 'orders@murrayscheese.com');


-- Insert into the product table
INSERT INTO Product (vendorId, partNumber, name, price, unit, photoPath)
VALUES
(1, 'ME12B', 'Cavaillon Melons', 19.99, '10/cs', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/22723/image/me12b1.product-card.jpg?t=1713988210'),
(1, 'SPSPICE99V', 'Sel Rose Pink Curing Salt', 4.99, '4oz', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/14970/image/spspice99v.product-card.jpg?t=1713990356'),
(1, 'GRA92', 'Natural Thompson Grapes', 39.99, '12/2lb/cs', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/9317/image/gra9.product-card.jpg?t=1722945636'),
(2, 'FDUPA008', 'D''Artagnan Rohan Duck, Whole', 56.99, 'each', 'https://www.dartagnan.com/dw/image/v2/BJQL_PRD/on/demandware.static/-/Sites-dartagnan-live-catalog-en/default/dwa2bfad52/images/products/FDUPA006-1.jpg?sw=635&strip=false'),
(2, 'FDUFG002', 'Hudson Valley Grade-A Duck Foie Gras', 149.99, 'lobe', 'https://www.dartagnan.com/dw/image/v2/BJQL_PRD/on/demandware.static/-/Sites-dartagnan-live-catalog-en/default/dw1050a415/images/products/FoieGras_WholeLobe_PDP2.jpg?sw=635&strip=false'),
(2, 'GAMQUA007', 'Semi-Boneless Quail', 31.99, '4ea/cs', 'https://www.dartagnan.com/dw/image/v2/BJQL_PRD/on/demandware.static/-/Sites-dartagnan-live-catalog-en/default/dwec6300c6/images/products/FQUMA004-1_PDP1.jpg?sw=635&strip=false'),
(3, 'BB170', 'Grand Reserve / 80% Unsalted Butter Prints', 49.99, '36/1lb/cs', 'https://www.chefswarehouse.com/siteassets/pim-images/butter/bb170_0.jpg'),
(3, 'DM110', 'Cream-O-Land / Whole Milk Gallon', 49.99, '4/1gallon/cs', 'https://www.chefswarehouse.com/siteassets/pim-images/milk-cream/dm110_0.jpg'),
(3, 'DM116', 'Grand Reserve / 40% Heavy Cream', 3.99, '1qt', 'https://www.chefswarehouse.com/siteassets/pim-images/milk-cream/dm116_0.jpg'),
(4, '7290', 'Pure Saffron', 39.99, '1/1oz', 'https://www.gfifoods.com/media/catalog/product/cache/ea731b03951ff39bad0cb0d9b1c0aab7/s/a/saffron_beauty_2.jpg'),
(4, '10010', 'Madagascar Bourbon Vanilla Bean Paste Vegan Kosher', 29.99, '1/32oz', 'https://www.gfifoods.com/media/catalog/product/cache/ea731b03951ff39bad0cb0d9b1c0aab7/c/e/center20front_20210825_1519438_zizl3e7qqtykn6yg.jpg'),
(4, '614011', 'Espelette Pepper Powder PDO', 49.99, '1/1.58oz', 'https://www.gfifoods.com/media/catalog/product/cache/ea731b03951ff39bad0cb0d9b1c0aab7/6/1/6146120pic20espellette_jar_20210315_0942589_8dbjgufr9jylmifb.jpg'),
(5, '3053', 'Red Wine Vinegar', 15.50, '500ml', 'https://ciprianifood.com/media/catalog/product/cache/8101243140f76dbfe2f3e91f55026b96/c/i/ciprianifood_vinegar_1.jpg'),
(5, '3090', 'Cipriani Pomod''oro', 6.00, '340g', 'https://ciprianifood.com/media/catalog/product/cache/8101243140f76dbfe2f3e91f55026b96/c/i/ciprianifood_pomodoro_label_1_1.jpg'),
(5, '2436', 'Extra Virgin Olive Oil', 29.00, '500ml', 'https://ciprianifood.com/media/catalog/product/cache/8101243140f76dbfe2f3e91f55026b96/c/i/ciprianifood_evoil_1.jpg'),
(6, 'BUR1', 'Murray''s Burrata', 12.00, '2/4oz', 'https://murrayscheese.imgix.net/i2b4juvwgl8trbwcyyr1cffdiuu4?ixlib=rails-4.3.1&auto=format&fit=max&w=576&q=80'),
(6, 'FET1', 'Murray''s Feta Cup', 10.50, '1/7oz', 'https://murrayscheese.imgix.net/z7j3fg6ugpf98rtrrq7il7z6zxmv?ixlib=rails-4.3.1&auto=format&fit=max&w=576&q=80'),
(6, 'PEC4', 'Pecorino Calabrese', 21.00, '1lb', 'https://murrayscheese.imgix.net/o8z5yshbk6a3xw5e9482ffaq569b?ixlib=rails-4.3.1&auto=format&fit=max&w=576&q=80');


--INSERT INTO Request (userId, requestNumber, description, justification, dateNeeded, deliveryMode, status, total, submittedDate, reasonForRejection)
--VALUES



--INSERT INTO LineItem (requestId, productId, quantity)
--VALUES
