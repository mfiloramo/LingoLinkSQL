CREATE PROCEDURE [dbo].[usp_Participant_Delete]
    @user_id INT,
    @conversation_id INT
AS
BEGIN
    DELETE FROM Participants WHERE user_id = @user_id AND conversation_id = @conversation_id
END;
GO