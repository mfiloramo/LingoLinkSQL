CREATE PROCEDURE [dbo].[usp_Conversation_Select_UserId]
@user_id INT
AS
BEGIN
    -- Retrieve conversations based on user_id from Messages table
    SELECT DISTINCT c.conversation_id, c.name, MAX(m.timestamp) as latest_timestamp
    FROM Conversations c
             INNER JOIN Messages m ON c.conversation_id = m.conversation_id
    WHERE m.user_id = @user_id
    GROUP BY c.conversation_id, c.name
    ORDER BY latest_timestamp DESC;

    -- When you're ready to use Participants table, comment the above query
    -- and uncomment the following query:

    -- SELECT c.conversation_id, c.name, MAX(m.timestamp) as latest_timestamp
    -- FROM Conversations c
    -- INNER JOIN Participants p ON c.conversation_id = p.conversation_id
    -- INNER JOIN Messages m ON c.conversation_id = m.conversation_id
    -- WHERE p.user_id = @user_id
    -- GROUP BY c.conversation_id, c.name
    -- ORDER BY latest_timestamp DESC;
END;
GO