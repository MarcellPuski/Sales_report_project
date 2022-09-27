--creating product data table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS Product_item_code, 
  p.[EnglishProductName] AS Product_name,
  s.[EnglishProductSubcategoryName] AS Product_sub_category,
  c.[EnglishProductCategoryName] AS Product_category,
  p.[StandardCost], 
  p.[Color] AS Product_color, 
  p.[ListPrice] AS Product_price, 
  p.[Size] AS Product_size, 
  p.[ProductLine] AS Product_Line, 
  p.[ModelName] AS Product_model_name, 
  p.[EnglishDescription] AS Product_description, 
  ISNULL (p.Status, 'Outdated') AS Product_status 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS s ON s.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS c ON c.ProductCategoryKey = s.ProductCategoryKey
 WHERE EnglishProductCategoryName IS NOT NULL 
 AND StandardCost IS NOT NULL -- selecting only values where product category and StandardCost is not NULL