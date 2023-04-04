CREATE PROCEDURE [dbo].[usp_Conversation_Select]
@conversation_id INT
AS
BEGIN
    SELECT * FROM Conversations WHERE conversation_id = @conversation_id
END;
GO