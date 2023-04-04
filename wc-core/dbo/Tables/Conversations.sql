CREATE TABLE [dbo].[Conversations](
      [conversation_id] [int] IDENTITY(1,1) NOT NULL,
      [name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Conversations] ADD PRIMARY KEY CLUSTERED
    (
     [conversation_id] ASC
        )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO