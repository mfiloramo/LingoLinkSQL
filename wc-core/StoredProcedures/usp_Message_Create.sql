CREATE PROCEDURE [dbo].[usp_Message_Create]
    @conversation_id INT,
    @user_id INT,
    @content NVARCHAR(MAX),
    @source_language NVARCHAR(2),
    @timestamp DATETIME
AS
BEGIN
    INSERT INTO Messages (conversation_id, user_id, content, source_language, timestamp)
    VALUES (@conversation_id, @user_id, @content, @source_language, @timestamp)
END;
GO