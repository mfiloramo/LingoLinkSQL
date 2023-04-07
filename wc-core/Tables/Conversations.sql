CREATE TABLE [dbo].[Conversations](
    [conversation_id] [int] IDENTITY(1,1) NOT NULL,
    [name] [nvarchar](255) NULL,
    PRIMARY KEY CLUSTERED ([conversation_id] ASC)
) ON [PRIMARY]
GO