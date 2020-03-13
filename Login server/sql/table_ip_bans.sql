CREATE TABLE [dbo].[IP_BANS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[ip] [varchar](15) NOT NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[IP_BANS] ADD  CONSTRAINT [DF_IP_BANS_date]  DEFAULT (getdate()) FOR [date]
