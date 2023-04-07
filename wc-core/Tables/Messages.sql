CREATE TABLE [dbo].[Messages](
    [message_id] [int] IDENTITY(1,1) NOT NULL,
    [conversation_id] [int] NOT NULL,
    [user_id] [int] NOT NULL,
    [content] [nvarchar](max) NOT NULL,
    [source_language] [nvarchar](2) NOT NULL DEFAULT ('en'),
    [timestamp] [datetime] NOT NULL,
    PRIMARY KEY CLUSTERED ([message_id] ASC),
    FOREIGN KEY ([conversation_id]) REFERENCES [dbo].[Conversations] ([conversation_id]),
    FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO