USE capstone_prs;
GO


-- Insert into the user table
INSERT INTO [User] (username, firstName, lastName, phoneNumber, email, reviewer, admin)
VALUES 
('bkeam', 'Brendan', 'Keam', '917-624-6069', 'brdk1220@gmail.com', 1, 1),
('mdamon', 'Matt', 'Damon', '202-456-8975', 'mdamon@gmail.com', 0, 0),
('cbale', 'Christian', 'Bale', '202-547-7783', 'cbale@gmail.com', 0, 0),
('baffleck', 'Ben', 'Affleck', '917-554-8521', 'baffleck@gmail.com', 0, 0),
('Rmcadams', 'Rachel', 'McAdams', '917-889-6325', 'rmcadams@gmail.com', 0, 0);



-- Insert into the vendor table
INSERT INTO Vendor (code, name, address, city, state, zip, phoneNumber, email)
VALUES 
('P001', 'Baldor Specialty Foods', '55 Food Center Dr', 'Bronx', 'NY', '10474', '718-860-9000', 'info@baldorfood.com'),
('P002', 'D¡¯Artagnan', '600 Green Ln', 'Union', 'NJ', '07083', '877-858-0099', 'orders@dartagnan.com'),
('P003', 'The Chefs'' Warehouse', '240 Food Center Dr', 'Bronx', 'NY', '10474', '800-878-3247', 'chef@chefswarehouse.com'),
('P004', 'Niman Ranch', '1765 W 121st Ave', 'Westminster', 'CO', '80302', '866-866-9432', 'customer_service@nimanranch.com'),
('P005', 'La Brea Bakery', '6701 Center Drive Suite 850', 'Los Angeles', 'CA', '90045', '844-992-7747', 'info@labreabakery.com'),
('P006', 'Murray¡¯s Cheese', '254 Bleecker St', 'New York', 'NY', '10014', '212-243-3289', 'orders@murrayscheese.com');


-- Insert into the product table
INSERT INTO Product (vendorId, partNumber, name, price, unit, photoPath)
VALUES
('P001', 'ME12B', 'Cavaillon Melons', 19.99, 'each', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/22723/image/me12b1.product-card.jpg?t=1713988210'),
('P001', 'SPSPICE99V', 'Sel Rose Pink Curing Salt', 4.99, 'each', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/14970/image/spspice99v.product-card.jpg?t=1713990356'),
('P001', 'GRA9', 'Champagne Grapes', 39.99, 'case', 'https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/9317/image/gra9.product-card.jpg?t=1722945636'),
('P003', 'BB170', 'Grand Reserve / 80% Unsalted Butter Prints', 49.99, 'case', 'https://www.chefswarehouse.com/siteassets/pim-images/butter/bb170_0.jpg'),
('P003', 'DM110', 'Cream-O-Land / Whole Milk Gallon', 49.99, 'case', 'https://www.chefswarehouse.com/siteassets/pim-images/milk-cream/dm110_0.jpg'),
('P003', 'DM116', 'Grand Reserve / 40% Heavy Cream', 39.99, 'case', 'https://www.chefswarehouse.com/siteassets/pim-images/milk-cream/dm116_0.jpg'),





INSERT INTO Request (userId, description, justification, dateNeeded, deliveryMode, status, total, submittedDate, reasonForRejection)
VALUES



INSERT INTO LineItem (requestId, productId, quantity)
VALUES
