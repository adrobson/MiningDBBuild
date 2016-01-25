CREATE TABLE [dbo].[Mine](
[MineId] [int] IDENTITY(1,1) NOT NULL,
[MineName] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_Mine] PRIMARY KEY CLUSTERED
(
[MineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 09/01/2016 09:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resource](
[ResourceId] [int] IDENTITY(1,1) NOT NULL,
[ResourceName] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED
(
[ResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sample]    Script Date: 09/01/2016 09:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sample](
[SampleId] [int] IDENTITY(1,1) NOT NULL,
[MineId] [int] NOT NULL,
[ResourceId] [int] NOT NULL,
[SampleDate] [datetime] NOT NULL,
[Value] [decimal](18, 6) NOT NULL,
[Measurement] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_Sample] PRIMARY KEY CLUSTERED
(
[SampleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SampleResults]    Script Date: 09/01/2016 09:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SampleResults]
AS
SELECT        dbo.Mine.MineName, dbo.Resource.ResourceName, dbo.Sample.SampleDate, dbo.Sample.Value, dbo.Sample.Measurement
FROM            dbo.Mine INNER JOIN
dbo.Sample ON dbo.Mine.MineId = dbo.Sample.MineId INNER JOIN
dbo.Resource ON dbo.Sample.ResourceId = dbo.Resource.ResourceId
GO
SET IDENTITY_INSERT [dbo].[Mine] ON
INSERT [dbo].[Mine] ([MineId], [MineName]) VALUES (1, N'South')
INSERT [dbo].[Mine] ([MineId], [MineName]) VALUES (2, N'North')
INSERT [dbo].[Mine] ([MineId], [MineName]) VALUES (3, N'East')
SET IDENTITY_INSERT [dbo].[Mine] OFF
SET IDENTITY_INSERT [dbo].[Resource] ON
INSERT [dbo].[Resource] ([ResourceId], [ResourceName]) VALUES (1, N'Gold')
INSERT [dbo].[Resource] ([ResourceId], [ResourceName]) VALUES (2, N'Silver')
INSERT [dbo].[Resource] ([ResourceId], [ResourceName]) VALUES (3, N'Platinum')
SET IDENTITY_INSERT [dbo].[Resource] OFF
SET IDENTITY_INSERT [dbo].[Sample] ON
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (1, 1, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.040000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (2, 2, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.050000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (3, 3, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.030000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (4, 1, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.020000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (5, 2, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.010000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (6, 3, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.090000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (7, 1, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.150000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (8, 2, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.001000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (9, 3, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.000300 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (10, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.020000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (11, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.025000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (12, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.015000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (13, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.010000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (14, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.005000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (15, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.045000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (16, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.075000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (17, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.000500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (18, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.000150 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (19, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.010000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (20, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.012500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (21, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.007500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (22, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.005000 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (23, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.002500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (24, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.022500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (25, 1, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.037500 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (26, 2, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.000250 AS Decimal(18, 6)), N'g/t')
INSERT [dbo].[Sample] ([SampleId], [MineId], [ResourceId], [SampleDate], [Value], [Measurement]) VALUES (27, 3, 2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(0.000075 AS Decimal(18, 6)), N'g/t')
