CREATE PROCEDURE [dbo].[usp_User_Update]
    @user_id INT,
    @username NVARCHAR(255) = NULL,
    @email NVARCHAR(255) = NULL,
    @password NVARCHAR(255) = NULL
AS
BEGIN
    UPDATE Users
    SET username = COALESCE(@username, username),
        email = COALESCE(@email, email),
        password = COALESCE(@password, password)
    WHERE user_id = @user_id
END;
GO
