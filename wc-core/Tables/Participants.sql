CREATE TABLE [dbo].[Participants](
    [participant_id] [int] IDENTITY(1,1) NOT NULL,
    [user_id] [int] NOT NULL,
    [conversation_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([participant_id] ASC),
    UNIQUE NONCLUSTERED ([user_id] ASC, [conversation_id] ASC),
    FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id]),
    FOREIGN KEY ([conversation_id]) REFERENCES [dbo].[Conversations] ([conversation_id])
) ON [PRIMARY]
GO