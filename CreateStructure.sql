IF OBJECT_ID('dbo.ProductCategory', 'U') IS NOT NULL
	DROP TABLE dbo.ProductCategory;
IF OBJECT_ID('dbo.Product', 'U') IS NOT NULL
	DROP TABLE dbo.Product;
IF OBJECT_ID('dbo.Category', 'U') IS NOT NULL
	DROP TABLE dbo.Category;
GO
CREATE TABLE dbo.Product
(
	id INT IDENTITY(1, 1)
		CONSTRAINT PK_Product PRIMARY KEY,
	name VARCHAR(30) NOT NULL
)
CREATE TABLE dbo.Category
(
	id INT IDENTITY(1, 1)
		CONSTRAINT PK_Category PRIMARY KEY,
	name VARCHAR(30) NOT NULL
)
CREATE TABLE dbo.ProductCategory
(
	id INT IDENTITY(1, 1)
		CONSTRAINT PK_ProductCategory PRIMARY KEY, 
	productId INT
		CONSTRAINT FK_ProductCategory_Product FOREIGN KEY
		REFERENCES dbo.Product(id),
	categoryId INT
		CONSTRAINT FK_ProductCategory_Category FOREIGN KEY
		REFERENCES dbo.Category(id)
)