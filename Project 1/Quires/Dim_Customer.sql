-- Cleaned Dim_Customer Table --
SELECT 
  c.CustomerKey as CustomerKey --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.FirstName AS [FirstName] --,[MiddleName]
  , 
  c.lastname AS [LastName], 
  c.FirstName + ' ' + c.LastName AS [Full Name] --[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  Case c.Gender when 'M' then 'Male' when 'f' then 'Female' End As Gender --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  -- ,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  , 
  c.DateFirstPurchase AS [DateFirstPurchase] --,[CommuteDistance]
  , 
  g.city as [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey ASC
