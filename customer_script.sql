SELECT 
  C.[CustomerKey] AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  C.[FirstName] AS FirstName, 
  -- ,[MiddleName]
  C.[LastName] AS LastName, 
  C.FirstName + ' ' + LastName AS [FullName], 
  -- ,[NameStyle]
  --,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  CASE C.[Gender] when 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  -- ,[EmailAddress]
  --  ,[YearlyIncome]
  --  ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  --  ,[EnglishEducation]
  --  ,[SpanishEducation]
  --  ,[FrenchEducation]
  --   ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  --   ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --  ,[NumberCarsOwned]
  --  ,[AddressLine1]
  --  ,[AddressLine2]
  --  ,[Phone]
  C.[DateFirstPurchase] AS DateFirstPurchase, 
  g.City AS CustomerCity --joined in Customer City from geography table
  -- ,[CommuteDistance]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS C 
  left join dbo.DimGeography AS g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc
SELECT  C.[CustomerKey] AS CustomerKey,
      --,[GeographyKey]
     --,[CustomerAlternateKey]
     --,[Title]
     C.[FirstName] AS FirstName,
     -- ,[MiddleName]
      C.[LastName] AS LastName,
	  C.FirstName + ' ' + LastName AS [FullName],
     -- ,[NameStyle]
      --,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
     CASE  C.[Gender] when 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
     -- ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
   --   ,[EnglishOccupation]
     -- ,[SpanishOccupation]
   --   ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
    --  ,[Phone]
      C.[DateFirstPurchase] AS DateFirstPurchase,
	  g.City AS CustomerCity --joined in Customer City from geography table
     -- ,[CommuteDistance]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
 left join dbo.DimGeography AS g on g.GeographyKey = c.GeographyKey
  order by
  CustomerKey asc 
