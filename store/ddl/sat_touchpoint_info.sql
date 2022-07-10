SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CORE].[SAT_TOUCHPOINT_INFO](
	[H_TOUCHPOINT_KEY] [varchar](100) NOT NULL,
	[LOAD_DATE] [timestamp] NOT NULL,
	[RECORD_SOURCE] [varchar](100) NOT NULL,
	[PLATFORM] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [CORE].[SAT_TOUCHPOINT_INFO] ADD  CONSTRAINT [SAT_TOUCHPOINT_INFO_PK] PRIMARY KEY CLUSTERED
(
	[H_TOUCHPOINT_KEY] ASC,
	[LOAD_DATE] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [CORE].[SAT_TOUCHPOINT_INFO]  WITH CHECK ADD  CONSTRAINT [SAT_TOUCHPOINT_INFO_FK] FOREIGN KEY([H_TOUCHPOINT_KEY])
REFERENCES [CORE].[HUB_TOUCHPOINT] ([H_TOUCHPOINT_KEY])
GO
ALTER TABLE [CORE].[SAT_TOUCHPOINT_INFO] CHECK CONSTRAINT [SAT_TOUCHPOINT_INFO_FK]
GO
