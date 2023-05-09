-- Cleansed DIM_Date Table --
SELECT 
  [DateKey],
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] as Day, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName] as Month,
  LEFT (EnglishMonthName, 3) as Monthshort,
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
  --[CalendarSemester], 
  --[FiscalQuarter], 
  --[FiscalYear], 
  --[FiscalSemester] 
from
[AdventureWorksDW2019].[dbo].[DimDate]
where CalendarYear >= 2019

