CREATE PROCEDURE [dbo].[usp_Participant_Select_ConId]
    @conversation_id INT
AS
BEGIN
    SELECT * FROM Participants WHERE conversation_id = @conversation_id
END;
GO