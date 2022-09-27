-- creating customer data set with relevant variables
SELECT 
  c.CustomerKey, 
  c.GeographyKey, 
  c.FirstName AS First_name, 
  c.LastName AS Last_name, 
  c.FirstName + ' ' + LastName AS Full_name, 
  c.BirthDate AS Birth_date, 
  CASE c.MaritalStatus WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS Marital_status, 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.YearlyIncome AS Yearly_income, 
  c.TotalChildren, 
  c.EnglishEducation AS Education, 
  c.EnglishOccupation AS Occupation, 
  c.NumberCarsOwned AS Number_Cars_Owned, 
  c.DateFirstPurchase AS First_Purchase, 
  c.CommuteDistance AS Commute_Distance, 
  g.City AS Customer_city, -- from DimGeography data table
  g.EnglishCountryRegionName AS Country -- from DimGeography data table
FROM 
  AdventureWorksDW2019.dbo.DimCustomer AS c 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  GeographyKey ASC

