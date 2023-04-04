CREATE PROCEDURE [dbo].[usp_Conversation_Delete]
@conversation_id INT
AS
BEGIN
    DELETE FROM Conversations WHERE conversation_id = @conversation_id
END;
GO