CREATE PROCEDURE [dbo].[usp_Conversation_Create]
@name NVARCHAR(255)
AS
BEGIN
    DECLARE @ConversationId INT;
    INSERT INTO Conversations (name)
    OUTPUT inserted.Conversation_id
    VALUES (@name)
    RETURN @ConversationId;
END;
GO