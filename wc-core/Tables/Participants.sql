CREATE TABLE [dbo].[Participants](
     [participant_id] [int] IDENTITY(1,1) NOT NULL,
     [user_id] [int] NULL,
     [conversation_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Participants] ADD PRIMARY KEY CLUSTERED
    (
     [participant_id] ASC
        )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Participants] ADD UNIQUE NONCLUSTERED
    (
     [user_id] ASC,
     [conversation_id] ASC
        )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD FOREIGN KEY([conversation_id])
    REFERENCES [dbo].[Conversations] ([conversation_id])
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD FOREIGN KEY([user_id])
    REFERENCES [dbo].[Users] ([user_id])
GO
