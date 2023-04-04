CREATE PROCEDURE [dbo].[usp_Conversation_Select_UserId]
@user_id INT
AS
BEGIN
    DECLARE @ConversationIds TABLE (conversation_id INT);

    INSERT INTO @ConversationIds (conversation_id)
    SELECT DISTINCT c.conversation_id
    FROM Conversations c
    -- INNER JOIN Participants p ON c.conversation_id = p.conversation_id
    -- WHERE p.user_id = @userId;

    SELECT c.conversation_id, c.name, m.content, m.timestamp
    FROM Conversations c
             INNER JOIN @ConversationIds ci ON c.conversation_id = ci.conversation_id
             LEFT JOIN (
        SELECT conversation_id, content, timestamp
        FROM Messages
        WHERE message_id IN (
            SELECT MAX(message_id)
            FROM Messages
            GROUP BY conversation_id
        )
    ) m ON c.conversation_id = m.conversation_id
    WHERE m.conversation_id IS NOT NULL;
END;
GO