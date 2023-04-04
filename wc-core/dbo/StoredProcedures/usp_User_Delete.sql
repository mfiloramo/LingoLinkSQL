CREATE PROCEDURE [dbo].[usp_User_Delete]
    @user_id INT
AS
BEGIN
    DELETE FROM Users WHERE user_id = @user_id
END;
GO
