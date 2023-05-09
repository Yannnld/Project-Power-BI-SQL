-- Cleansed DIM_Products Table --
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
      -- ,[ProductSubcategoryKey]
      -- ,[WeightUnitMeasureCode]
      -- ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,ps.EnglishProductSubcategoryName as [Sub Category] -- Joined in from Sub Category Table
	  ,pc.EnglishProductCategoryName as [Product Category] -- Joined in from Category Table
      -- ,[SpanishProductName]
      -- ,[FrenchProductName]
      -- ,[StandardCost]
      -- ,[FinishedGoodsFlag]
      ,p.[Color] as [Product Color]
      -- ,[SafetyStockLevel]
      -- ,[ReorderPoint]
      -- ,[ListPrice]
      ,p.[Size] as [Product Size]
      -- ,[SizeRange]
      -- ,[Weight]
      -- ,[DaysToManufacture]
      ,p.[ProductLine] as [Product Line]
      -- ,[DealerPrice]
      -- ,[Class]
      -- ,[Style]
      ,p.[ModelName] as [Product Model Name]
      -- ,[LargePhoto]
      ,p.[EnglishDescription] as [Product Description],
      -- ,[FrenchDescription]
      -- ,[ChineseDescription]
      -- ,[ArabicDescription]
      -- ,[HebrewDescription]
      -- ,[ThaiDescription]
      -- ,[GermanDescription]
      -- ,[JapaneseDescription]
      -- ,[TurkishDescription]
      -- ,[StartDate]
      -- ,[EndDate]
isnull (p.Status, 'outdate') as [Product Status] -- if it's null -> outdate
FROM 
[dbo].[DimProduct] as p
left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by 
p.ProductKey asc; 