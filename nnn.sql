USE [18ip12]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[ID_car] [int] NOT NULL,
	[Tonnage] [float] NULL,
	[Nomber] [nchar](10) NULL,
	[ID_dri] [int] NULL,
	[Brand] [nvarchar](50) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[ID_car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dispetsher]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dispetsher](
	[ID_dis] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Call] [varchar](50) NULL,
	[Passvord] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dispetsher] PRIMARY KEY CLUSTERED 
(
	[ID_dis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[ID_dri] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Call] [varchar](50) NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[ID_dri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[ID_kli] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Call] [varchar](50) NULL,
 CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED 
(
	[ID_kli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statys]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statys](
	[ID_st] [int] NOT NULL,
	[text_st] [nvarchar](10) NULL,
 CONSTRAINT [PK_Statys] PRIMARY KEY CLUSTERED 
(
	[ID_st] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarif]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarif](
	[ID_tar] [int] NOT NULL,
	[Date_yst] [date] NULL,
	[Price_per_km] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazi]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Volume] [float] NULL,
	[ID_dis] [int] NULL,
	[ID_kli] [int] NULL,
	[ID_car] [int] NULL,
	[ID_dri] [int] NULL,
	[ID_zaya] [int] NULL,
	[ID_sta] [int] NULL,
	[Data_prin_zak] [datetime] NULL,
	[Sum] [float] NULL,
 CONSTRAINT [PK_Zakazi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zayavka]    Script Date: 02.03.2022 19:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zayavka](
	[ID_zaya] [int] NOT NULL,
	[Marchryt_t] [nvarchar](50) NULL,
	[Marshryt_o] [nvarchar](50) NULL,
	[Date_otp] [date] NULL,
	[Date_prib] [date] NULL,
	[Rasstoyanie] [int] NULL,
 CONSTRAINT [PK_Zayavka] PRIMARY KEY CLUSTERED 
(
	[ID_zaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Car] ([ID_car], [Tonnage], [Nomber], [ID_dri], [Brand]) VALUES (1, 1, N'а777рр76  ', 1, N'ISUZU')
INSERT [dbo].[Car] ([ID_car], [Tonnage], [Nomber], [ID_dri], [Brand]) VALUES (2, 2, N'к735кр76  ', 2, N'MAN')
INSERT [dbo].[Car] ([ID_car], [Tonnage], [Nomber], [ID_dri], [Brand]) VALUES (3, 3, N'в123тр76  ', 3, N'Газель')
INSERT [dbo].[Car] ([ID_car], [Tonnage], [Nomber], [ID_dri], [Brand]) VALUES (4, 4, N'а890лд76  ', 4, N'Mercedec')
INSERT [dbo].[Car] ([ID_car], [Tonnage], [Nomber], [ID_dri], [Brand]) VALUES (5, 5, N'г101нн76  ', 5, N'JAC')
GO
INSERT [dbo].[Dispetsher] ([ID_dis], [Name], [Surname], [Patronymic], [Call], [Passvord]) VALUES (1, N'Ксения', N'Шишкина', N'Вячеславовна', N'1212', N'111')
INSERT [dbo].[Dispetsher] ([ID_dis], [Name], [Surname], [Patronymic], [Call], [Passvord]) VALUES (2, N'Ирина', N'Зинченко', N'Львовна', N'2323', N'222')
INSERT [dbo].[Dispetsher] ([ID_dis], [Name], [Surname], [Patronymic], [Call], [Passvord]) VALUES (3, N'Наталья ', N'Смирнова', N'Александровна', N'3434', N'333')
INSERT [dbo].[Dispetsher] ([ID_dis], [Name], [Surname], [Patronymic], [Call], [Passvord]) VALUES (4, N'ш', N'ш', N'ш', N'9898', N'8')
GO
INSERT [dbo].[Driver] ([ID_dri], [Name], [Surname], [Patronymic], [Call]) VALUES (1, N'Кирилл', N'Наевич', N'Александрович', N'1111')
INSERT [dbo].[Driver] ([ID_dri], [Name], [Surname], [Patronymic], [Call]) VALUES (2, N'Олег', N'Котов', N'Петрович', N'2222')
INSERT [dbo].[Driver] ([ID_dri], [Name], [Surname], [Patronymic], [Call]) VALUES (3, N'Максим', N'Рогов', N'Игоревич', N'3333')
INSERT [dbo].[Driver] ([ID_dri], [Name], [Surname], [Patronymic], [Call]) VALUES (4, N'Иван', N'Шажников', N'Владимирович', N'4444')
INSERT [dbo].[Driver] ([ID_dri], [Name], [Surname], [Patronymic], [Call]) VALUES (5, N'Павел', N'Окопник', N'Романович', N'5555')
GO
INSERT [dbo].[Klient] ([ID_kli], [Name], [Surname], [Patronymic], [Call]) VALUES (1, N'Даниил', N'Строгов', N'Васильеич', N'1313')
INSERT [dbo].[Klient] ([ID_kli], [Name], [Surname], [Patronymic], [Call]) VALUES (2, N'Игорь', N'Губов', N'Кириллович', N'2121')
INSERT [dbo].[Klient] ([ID_kli], [Name], [Surname], [Patronymic], [Call]) VALUES (3, N'Рита', N'Чайкая', N'Даниловна', N'5656')
INSERT [dbo].[Klient] ([ID_kli], [Name], [Surname], [Patronymic], [Call]) VALUES (4, N'Владислава', N'Рейт', N'Эдуардовна', N'9898')
INSERT [dbo].[Klient] ([ID_kli], [Name], [Surname], [Patronymic], [Call]) VALUES (5, N'Николай', N'Кравец', N'Львович', N'8585')
GO
INSERT [dbo].[Statys] ([ID_st], [text_st]) VALUES (1, N'готов     ')
INSERT [dbo].[Statys] ([ID_st], [text_st]) VALUES (2, N'отменен   ')
INSERT [dbo].[Statys] ([ID_st], [text_st]) VALUES (3, N'в ожидании')
GO
INSERT [dbo].[Tarif] ([ID_tar], [Date_yst], [Price_per_km]) VALUES (1, CAST(N'2019-11-20' AS Date), 60)
GO
SET IDENTITY_INSERT [dbo].[Zakazi] ON 

INSERT [dbo].[Zakazi] ([ID], [Volume], [ID_dis], [ID_kli], [ID_car], [ID_dri], [ID_zaya], [ID_sta], [Data_prin_zak], [Sum]) VALUES (1, 0.5, 1, 1, 1, 1, 1, 1, CAST(N'2021-12-09T00:00:00.000' AS DateTime), 18000)
INSERT [dbo].[Zakazi] ([ID], [Volume], [ID_dis], [ID_kli], [ID_car], [ID_dri], [ID_zaya], [ID_sta], [Data_prin_zak], [Sum]) VALUES (2, 1.2, 2, 2, 2, 2, 2, 2, CAST(N'2021-11-05T00:00:00.000' AS DateTime), 28200)
INSERT [dbo].[Zakazi] ([ID], [Volume], [ID_dis], [ID_kli], [ID_car], [ID_dri], [ID_zaya], [ID_sta], [Data_prin_zak], [Sum]) VALUES (3, 3, 3, 3, 3, 3, 3, 1, CAST(N'2022-01-10T00:00:00.000' AS DateTime), 18000)
INSERT [dbo].[Zakazi] ([ID], [Volume], [ID_dis], [ID_kli], [ID_car], [ID_dri], [ID_zaya], [ID_sta], [Data_prin_zak], [Sum]) VALUES (4, 3.5, 1, 4, 4, 4, 4, 1, CAST(N'2022-01-15T00:00:00.000' AS DateTime), 21000)
SET IDENTITY_INSERT [dbo].[Zakazi] OFF
GO
INSERT [dbo].[Zayavka] ([ID_zaya], [Marchryt_t], [Marshryt_o], [Date_otp], [Date_prib], [Rasstoyanie]) VALUES (1, N'Ярославль', N'Москва', CAST(N'2021-12-12' AS Date), CAST(N'2021-12-12' AS Date), 300)
INSERT [dbo].[Zayavka] ([ID_zaya], [Marchryt_t], [Marshryt_o], [Date_otp], [Date_prib], [Rasstoyanie]) VALUES (2, N'Яославль', N'Тула', CAST(N'2021-11-10' AS Date), CAST(N'2021-11-10' AS Date), 470)
INSERT [dbo].[Zayavka] ([ID_zaya], [Marchryt_t], [Marshryt_o], [Date_otp], [Date_prib], [Rasstoyanie]) VALUES (3, N'Москва', N'Ярославль', CAST(N'2022-01-15' AS Date), CAST(N'2022-01-15' AS Date), 300)
INSERT [dbo].[Zayavka] ([ID_zaya], [Marchryt_t], [Marshryt_o], [Date_otp], [Date_prib], [Rasstoyanie]) VALUES (4, N'Подольск', N'Ярославль', CAST(N'2022-01-24' AS Date), CAST(N'2022-01-24' AS Date), 350)
INSERT [dbo].[Zayavka] ([ID_zaya], [Marchryt_t], [Marshryt_o], [Date_otp], [Date_prib], [Rasstoyanie]) VALUES (5, N'Ярославль', N'Подольск', CAST(N'2022-01-25' AS Date), CAST(N'2022-01-25' AS Date), 350)
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Car] FOREIGN KEY([ID_car])
REFERENCES [dbo].[Car] ([ID_car])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Car]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Dispetsher] FOREIGN KEY([ID_dis])
REFERENCES [dbo].[Dispetsher] ([ID_dis])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Dispetsher]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Driver] FOREIGN KEY([ID_dri])
REFERENCES [dbo].[Driver] ([ID_dri])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Driver]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Klient] FOREIGN KEY([ID_kli])
REFERENCES [dbo].[Klient] ([ID_kli])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Klient]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Statys1] FOREIGN KEY([ID_sta])
REFERENCES [dbo].[Statys] ([ID_st])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Statys1]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Zayavka] FOREIGN KEY([ID_zaya])
REFERENCES [dbo].[Zayavka] ([ID_zaya])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Zayavka]
GO
