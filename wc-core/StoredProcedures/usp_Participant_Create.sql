CREATE PROCEDURE [dbo].[usp_Participant_Create]
    @user_id INT,
    @conversation_id INT
AS
BEGIN
    INSERT INTO Participants (user_id, conversation_id)
    VALUES (@user_id, @conversation_id)
END;
GO