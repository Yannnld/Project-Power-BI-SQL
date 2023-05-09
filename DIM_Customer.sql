-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey as [CustomerKey], 
  -- [GeographyKey], 
  -- [CustomerAlternateKey], 
  -- [Title], 
  c.firstname as [First Name], 
  -- [MiddleName], 
  c.lastname as [Last Name], 
  c.firstname + ' ' + lastname as [Full Name], 
  -- [NameStyle], 
  -- [BirthDate], 
  -- [MaritalStatus], 
  -- [Suffix], 
  Case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  -- [EmailAddress], 
  -- [YearlyIncome], 
  -- [TotalChildren], 
  -- [NumberChildrenAtHome], 
  -- [EnglishEducation], 
  -- [SpanishEducation], 
  -- [FrenchEducation], 
  -- [EnglishOccupation], 
  -- [SpanishOccupation], 
  -- [FrenchOccupation], 
  -- [HouseOwnerFlag], 
  -- [NumberCarsOwned], 
  -- [AddressLine1], 
  -- [AddressLine2], 
  -- [Phone], 
  c.datefirstpurchase as DateFirstPurchase, 
  -- [CommuteDistance] 
  g.city as [Customer City] -- Joined in Customer City from Geography Table
from 
 [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].dbo.dimgeography as g on g.geographykey = c.geographykey 
order by 
  CustomerKey ASC -- Ordered list by CustomerKey
