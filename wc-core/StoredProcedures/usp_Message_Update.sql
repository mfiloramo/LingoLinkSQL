CREATE PROCEDURE [dbo].[usp_Message_Update]
    @message_id INT,
    @content NVARCHAR(MAX) = NULL,
    @source_language NVARCHAR(2),
    @timestamp DATETIME = NULL
AS
BEGIN
    UPDATE Messages
    SET content = COALESCE(@content, content),
        source_language = COALESCE(@source_language, source_language),
        timestamp = COALESCE(@timestamp, timestamp)
    WHERE message_id = @message_id
END;
GO