DECLARE @Path NVARCHAR(200) = (SELECT TOP(1) [physical_name] FROM [sys].[database_files])
SELECT SUBSTRING(@Path, 1, LEN(@Path) - CHARINDEX(N'\', REVERSE(@Path))) + N'\' + N'default' + N'_filestream'
GO
--for example
--c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\default_filestreams