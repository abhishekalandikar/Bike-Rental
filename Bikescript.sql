USE [BIKE_Rental]
GO
/****** Object:  Table [dbo].[bike]    Script Date: 05-03-2025 16:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bike](
	[id] [int] NOT NULL,
	[model] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[price_per_hour] [decimal](18, 0) NULL,
	[price_per_day] [decimal](18, 0) NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05-03-2025 16:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[name] [varchar](30) NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[membership]    Script Date: 05-03-2025 16:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[membership](
	[id] [int] NOT NULL,
	[membership_type_id] [int] NULL,
	[customer_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[total_paid] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[membership_type]    Script Date: 05-03-2025 16:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[membership_type](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](500) NULL,
	[price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rental]    Script Date: 05-03-2025 16:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental](
	[id] [int] NOT NULL,
	[customer_id] [int] NULL,
	[bike_id] [int] NULL,
	[start_timestamp] [date] NULL,
	[duration] [int] NULL,
	[total_paid] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (1, N'Mountain Bike 1', N'mountain bike', CAST(10 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), N'available')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (2, N'Road Bike 1', N'road bike', CAST(12 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), N'available')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (3, N'Hybrid Bike 1', N'hybrid', CAST(8 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), N'rented')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (4, N'Electric Bike 1', N'electric', CAST(15 AS Decimal(18, 0)), CAST(75 AS Decimal(18, 0)), N'available')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (5, N'Mountain Bike 2', N'mountain bike', CAST(10 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), N'out of service')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (6, N'Road Bike 2', N'road bike', CAST(12 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), N'available')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (7, N'Hybrid Bike 2', N'hybrid', CAST(8 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), N'out of service')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (8, N'Electric Bike 2', N'electric', CAST(15 AS Decimal(18, 0)), CAST(75 AS Decimal(18, 0)), N'available')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (9, N'Mountain Bike 3', N'mountain bike', CAST(10 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), N'rented')
INSERT [dbo].[bike] ([id], [model], [category], [price_per_hour], [price_per_day], [status]) VALUES (10, N'Road Bike 3', N'road bike', CAST(12 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), N'available')
GO
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (1, N'John Doe', N'john.doe@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (2, N'Alice Smith', N'alice.smith@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (3, N'Bob Johnson', N'bob.johnson@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (4, N'Eva Brown', N'eva.brown@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (5, N'Michael Lee', N'michael.lee@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (6, N'Sarah White', N'sarah.white@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (7, N'David Wilson', N'david.wilson@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (8, N'Emily Davis', N'emily.davis@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (9, N'Daniel Miller', N'daniel.miller@example.com')
INSERT [dbo].[Customer] ([id], [name], [email]) VALUES (10, N'Olivia Taylor', N'olivia.taylor@example.com')
GO
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (1, 2, 3, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (2, 1, 2, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (3, 3, 4, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (4, 1, 1, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-30' AS Date), CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (5, 2, 2, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-30' AS Date), CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (6, 3, 3, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-30' AS Date), CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (7, 1, 4, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-31' AS Date), CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (8, 2, 5, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-31' AS Date), CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (9, 3, 3, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-31' AS Date), CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (10, 3, 1, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date), CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (11, 2, 5, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date), CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[membership] ([id], [membership_type_id], [customer_id], [start_date], [end_date], [total_paid]) VALUES (12, 1, 2, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date), CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[membership_type] ([id], [name], [description], [price]) VALUES (1, N'Basic Monthly', N'Unlimited rides with non-electric bikes. Renews monthly.', CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[membership_type] ([id], [name], [description], [price]) VALUES (2, N'Basic Annual', N'Unlimited rides with non-electric bikes. Renews annually.', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[membership_type] ([id], [name], [description], [price]) VALUES (3, N'Premium Monthly', N'Unlimited rides with all bikes. Renews monthly.', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (1, 1, 1, CAST(N'2022-11-01' AS Date), 240, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (2, 1, 1, CAST(N'2022-11-02' AS Date), 245, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (3, 1, 1, CAST(N'2022-11-03' AS Date), 250, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (4, 1, 1, CAST(N'2022-11-04' AS Date), 235, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (5, 1, 1, CAST(N'2022-12-05' AS Date), 155, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (6, 2, 2, CAST(N'2022-12-08' AS Date), 250, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (7, 3, 3, CAST(N'2022-12-13' AS Date), 245, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (8, 1, 1, CAST(N'2023-01-05' AS Date), 240, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (9, 2, 2, CAST(N'2023-01-08' AS Date), 235, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (10, 3, 3, CAST(N'2023-02-13' AS Date), 245, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (11, 1, 1, CAST(N'2023-03-05' AS Date), 250, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (12, 2, 2, CAST(N'2023-03-08' AS Date), 355, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (13, 3, 3, CAST(N'2023-04-13' AS Date), 240, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (14, 1, 1, CAST(N'2023-04-01' AS Date), 235, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (15, 1, 6, CAST(N'2023-05-01' AS Date), 245, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (16, 1, 2, CAST(N'2023-05-01' AS Date), 250, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (17, 1, 3, CAST(N'2023-06-01' AS Date), 235, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (18, 1, 4, CAST(N'2023-06-01' AS Date), 255, CAST(75 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (19, 1, 5, CAST(N'2023-07-01' AS Date), 240, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (20, 2, 2, CAST(N'2023-07-02' AS Date), 445, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (21, 3, 3, CAST(N'2023-07-03' AS Date), 250, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (22, 4, 4, CAST(N'2023-08-04' AS Date), 235, CAST(75 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (23, 5, 5, CAST(N'2023-08-05' AS Date), 555, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (24, 6, 6, CAST(N'2023-09-06' AS Date), 240, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (25, 7, 7, CAST(N'2023-09-07' AS Date), 245, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (26, 8, 8, CAST(N'2023-09-08' AS Date), 250, CAST(75 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (27, 9, 9, CAST(N'2023-10-09' AS Date), 335, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (28, 10, 10, CAST(N'2023-10-10' AS Date), 255, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (29, 10, 1, CAST(N'2023-10-10' AS Date), 240, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (30, 10, 2, CAST(N'2023-10-10' AS Date), 245, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (31, 10, 3, CAST(N'2023-10-10' AS Date), 250, CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[rental] ([id], [customer_id], [bike_id], [start_timestamp], [duration], [total_paid]) VALUES (32, 10, 4, CAST(N'2023-10-10' AS Date), 235, CAST(75 AS Decimal(18, 0)))
GO
ALTER TABLE [dbo].[membership]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[membership]  WITH CHECK ADD FOREIGN KEY([membership_type_id])
REFERENCES [dbo].[membership_type] ([id])
GO
ALTER TABLE [dbo].[rental]  WITH CHECK ADD FOREIGN KEY([bike_id])
REFERENCES [dbo].[bike] ([id])
GO
ALTER TABLE [dbo].[rental]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
