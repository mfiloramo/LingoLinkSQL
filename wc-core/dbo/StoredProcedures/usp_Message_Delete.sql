CREATE PROCEDURE [dbo].[usp_Message_Delete]
    @message_id INT
AS
BEGIN
    DELETE FROM Messages WHERE message_id = @message_id
END;
GO