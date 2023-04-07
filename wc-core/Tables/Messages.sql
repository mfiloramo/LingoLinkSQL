CREATE TABLE [dbo].[Messages](
     [message_id] [int] IDENTITY(1,1) NOT NULL,
     [conversation_id] [int] NULL,
     [user_id] [int] NULL,
     [content] [nvarchar](max) NOT NULL,
     [source_language] [nvarchar](2) NOT NULL,
     [timestamp] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Messages] ADD PRIMARY KEY CLUSTERED
    (
     [message_id] ASC
        )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DEFAULT_Messages_source_language]  DEFAULT ('en') FOR [source_language]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([conversation_id])
    REFERENCES [dbo].[Conversations] ([conversation_id])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([user_id])
    REFERENCES [dbo].[Users] ([user_id])
GO