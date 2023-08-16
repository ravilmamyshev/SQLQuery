SELECT 
	P.name AS Product,
	C.name AS Category	
FROM dbo.Product P
	LEFT OUTER JOIN		
		(dbo.ProductCategory AS PC
			INNER JOIN dbo.Category C
				ON C.id = PC.categoryId)
		ON P.id = PC.productId;