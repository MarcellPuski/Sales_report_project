-- creating calendar data set, with relevant variables
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS Week_number, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS Month_short, 
  [MonthNumberOfYear] AS Month_number, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE
	CalendarYear >= YEAR(GETDATE()) -2 -- we only need data from the past two years
