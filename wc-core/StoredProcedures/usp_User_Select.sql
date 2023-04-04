CREATE PROCEDURE [dbo].[usp_User_Select]
@user_id INT
AS
BEGIN
    SELECT * FROM Users WHERE user_id = @user_id
END;
GO
