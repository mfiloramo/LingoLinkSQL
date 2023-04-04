CREATE PROCEDURE [dbo].[usp_Participant_Select_UserId]
    @user_id INT
AS
BEGIN
    SELECT * FROM Participants WHERE user_id = @user_id
END;
GO