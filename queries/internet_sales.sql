-- create internet sales data table
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- we only need data from the past two years
ORDER BY
	ProductKey