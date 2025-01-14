SELECT Region, SUM(Sales) AS Total_Sales
FROM [Superstore]
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT TOP 10 [Product Name], SUM(Sales) AS Total_Sales
FROM [BijeshTest].[dbo].[Superstore]
GROUP BY [Product Name]
ORDER BY Total_Sales DESC;

SELECT FORMAT([Order Date], 'yyyy-MM') AS Month, SUM(Sales) AS Monthly_Sales
FROM [BijeshTest].[dbo].[Superstore]
GROUP BY FORMAT([Order Date], 'yyyy-MM')
ORDER BY Month ASC;

SELECT [Category], [Sub-Category], SUM(Sales) AS Total_Sales
FROM [BijeshTest].[dbo].[Superstore]
GROUP BY [Category], [Sub-Category]
ORDER BY Total_Sales DESC;
