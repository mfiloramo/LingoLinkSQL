CREATE PROCEDURE [dbo].[usp_Message_Select]
    @conversation_id INT,
    @limit INT = NULL,
    @offset INT = NULL
AS
BEGIN
    SELECT * FROM Messages
    WHERE conversation_id = @conversation_id
    ORDER BY timestamp
    OFFSET COALESCE(@offset, 0) ROWS
        FETCH NEXT COALESCE(@limit, 2147483647) ROWS ONLY
END;
GO