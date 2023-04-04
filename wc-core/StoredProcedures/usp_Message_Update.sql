CREATE PROCEDURE [dbo].[usp_Message_Update]
    @message_id INT,
    @content NVARCHAR(MAX) = NULL,
    @timestamp DATETIME = NULL
AS
BEGIN
    UPDATE Messages
    SET content = COALESCE(@content, content),
        timestamp = COALESCE(@timestamp, timestamp)
    WHERE message_id = @message_id
END;
GO