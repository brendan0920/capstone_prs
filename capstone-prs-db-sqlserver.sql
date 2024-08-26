USE MASTER;
GO

DROP DATABASE IF EXISTS capstone_prs;
GO

CREATE DATABASE capstone_prs;
GO

USE capstone_prs;
GO

CREATE TABLE [User] (
	id				int				PRIMARY KEY IDENTITY(1,1),
	username		varchar(20)		NOT NULL,
	password		varchar(10)		NOT NULL,
	firstName		varchar(20)		NOT NULL,
	lastName		varchar(20)		NOT NULL,
	phoneNumber		varchar(12)		NOT NULL,
	email			varchar(75)		NOT NULL,
	reviewer		bit				NOT NULL DEFAULT 0,
	admin			bit				NOT NULL DEFAULT 0,
	CONSTRAINT UQ_User_username UNIQUE(username),
	CONSTRAINT UQ_User_fn_ln_phone UNIQUE(firstName, lastName, phoneNumber),
	CONSTRAINT UQ_User_email UNIQUE(email)
);


CREATE TABLE Vendor (
	id				int				PRIMARY KEY IDENTITY(1,1),
	code			varchar(10)		NOT NULL,
	name			varchar(255)	NOT NULL,
	address			varchar(255)	NOT NULL,
	city			varchar(255)	NOT NULL,
	state			varchar(2)		NOT NULL,
	zip				varchar(10)		NOT NULL,
	phoneNumber		varchar(12)		NOT NULL,
	email			varchar(100)	NOT NULL,
	CONSTRAINT UQ_Vendor_code UNIQUE(code)	
);


CREATE TABLE Product (
	id				int				PRIMARY KEY IDENTITY(1,1),
	vendorId		int				NOT NULL,
	partNumber		varchar(50)		NOT NULL,
	name			varchar(150)	NOT NULL,
	price			float			NOT NULL,
	unit			varchar(255)	NULL,
	photoPath		varchar(255)	NULL,
	FOREIGN KEY (vendorId) REFERENCES Vendor(id),
	CONSTRAINT UQ_Product_vendor_part UNIQUE(vendorId, partNumber)
);


CREATE TABLE Request (
	id					int				PRIMARY KEY IDENTITY(1,1),
	userId				int				NOT NULL,
	description			varchar(100)	NOT NULL,
	justification		varchar(225)	NOT NULL,
	dateNeeded			date			NULL,
	deliveryMode		varchar(25)		NOT NULL,
	status				varchar(20)		NOT NULL DEFAULT 'New',
	total				float			NOT NULL,
	submittedDate		datetime		NOT NULL DEFAULT current_timestamp,
	reasonForRejection	varchar(100)	NULL,
	FOREIGN KEY (userId) REFERENCES [User](id)	
);


CREATE TABLE LineItem(
	id			int		PRIMARY KEY IDENTITY(1,1),
	requestId	int		NOT NULL,
	productId	int		NOT NULL,
	quantity	int		NOT NULL,
	FOREIGN KEY (requestId) REFERENCES Request(id),
	FOREIGN KEY (productId) REFERENCES Product(id),
	CONSTRAINT UQ_LineItem_reqId_prodId UNIQUE(requestId, productId)
);


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
