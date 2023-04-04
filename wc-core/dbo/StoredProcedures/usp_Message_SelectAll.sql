CREATE PROCEDURE [dbo].[usp_Message_SelectAll]
AS
BEGIN
    SELECT * FROM Messages
    ORDER BY timestamp
END;
GO