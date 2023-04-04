CREATE PROCEDURE [dbo].[usp_Message_Create]
    @conversation_id INT,
    @user_id INT,
    @content NVARCHAR(MAX),
    @timestamp DATETIME
AS
BEGIN
    INSERT INTO Messages (conversation_id, user_id, content, timestamp)
    VALUES (@conversation_id, @user_id, @content, @timestamp)
END;
GO