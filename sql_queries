ALTER TABLE [BijeshTest].[dbo].[Superstore]
ALTER COLUMN [Row ID] int NOT NULL; --Altering tables to match the config


CREATE FUNCTION dbo.IsValidDate (@date NVARCHAR(50)) --Creating function to check for valid or invalid dates
RETURNS BIT
AS
BEGIN
    RETURN CASE
        WHEN TRY_CONVERT(DATE, @date) IS NOT NULL THEN 1 -- Valid date
        WHEN @date LIKE '%-00%' THEN 0                  -- Invalid if contains 00
        ELSE 1
    END;
END;
GO

SELECT *
FROM [BijeshTest].[dbo].[Superstore]
WHERE dbo.IsValidDate([Ship Date]) = 0;


DECLARE @sql NVARCHAR(MAX); --Checking if any rows are NULL

SELECT @sql = STRING_AGG('[' + COLUMN_NAME + '] IS NULL', ' OR ')
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Superstore' AND TABLE_SCHEMA = 'dbo';

SET @sql = 'SELECT * FROM [BijeshTest].[dbo].[Superstore] WHERE ' + @sql;

EXEC sp_executesql @sql; --11 rows in potalCode are  
