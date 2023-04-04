CREATE PROCEDURE [dbo].[usp_Conversation_Update]
    @conversation_id INT,
    @name NVARCHAR(255) = NULL
AS
BEGIN
    UPDATE Conversations
    SET name = COALESCE(@name, name)
    WHERE conversation_id = @conversation_id
END;
GO