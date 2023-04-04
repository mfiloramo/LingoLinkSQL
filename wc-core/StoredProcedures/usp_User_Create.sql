CREATE PROCEDURE [dbo].[usp_User_Create]
    @username NVARCHAR(255),
    @email NVARCHAR(255),
    @password NVARCHAR(255)
AS
BEGIN
    INSERT INTO Users (username, email, password)
    VALUES (@username, @email, @password)
END;
GO
