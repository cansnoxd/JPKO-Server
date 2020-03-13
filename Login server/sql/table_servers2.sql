CREATE TABLE [dbo].[SERVERS] (
	[id] [int] IDENTITY (1, 1) NOT NULL,
	[sName] [varchar] (64) NOT NULL,
	[sHost] [varchar] (64) NOT NULL,
	[players] [int] NOT NULL,
	[sPort] [int] NOT NULL DEFAULT 15001
) ON [PRIMARY]

