CREATE TABLE [dbo].[Users](
    [user_id] [int] IDENTITY(1,1) NOT NULL,
    [username] [nvarchar](255) NOT NULL UNIQUE,
    [email] [nvarchar](255) NOT NULL UNIQUE,
    [password] [nvarchar](255) NOT NULL,
    PRIMARY KEY CLUSTERED ([user_id] ASC)
    ) ON [PRIMARY]
GO