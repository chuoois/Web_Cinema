create database [Assgn_PRJ_WEB_T_Xem_Phim]
USE [Assgn_PRJ_WEB_T_Xem_Phim]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryCode] [nchar](3) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[FilmID] [int] IDENTITY(1,1) NOT NULL,
	[GenreID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CountryCode] [nchar](3) NOT NULL,
	[img] [ntext] NULL,
	[premiere] [date] NULL,
	[actor] [nvarchar](300) NULL,
	[author] [nvarchar](100) NULL,
	[time] [int] NULL,
	[images_slide] [ntext] NULL,
	[description] [nvarchar](3000) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[slotId] [int] NOT NULL,
	[Time] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[slotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/5/2024 06:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[address] [nvarchar](100) NULL,
	[role] [int] NULL,
	[DOB] [date] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ABW', N'Aruba')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AFG', N'Afghanistan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AGO', N'Angola')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AIA', N'Anguilla')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ALB', N'Albania')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AND', N'Andorra')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ANT', N'Netherlands Antilles')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ARE', N'United Arab Emirates')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ARG', N'Argentina')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ARM', N'Armenia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ASM', N'American Samoa')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ATA', N'Antarctica')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ATG', N'Antigua and Barbuda')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AUS', N'Australia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AUT', N'Austria')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'AZE', N'Azerbaijan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BDI', N'Burundi')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BEL', N'Belgium')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BEN', N'Benin')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BFA', N'Burkina Faso')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BGD', N'Bangladesh')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BGR', N'Bulgaria')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BHR', N'Bahrain')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BHS', N'Bahamas')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BIH', N'Bosnia and Herzegovina')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BLM', N'Saint Barthelemy')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BLR', N'Belarus')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BLZ', N'Belize')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BMU', N'Bermuda')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BOL', N'Bolivia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BRA', N'Brazil')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BRB', N'Barbados')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BRN', N'Brunei')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BTN', N'Bhutan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'BWA', N'Botswana')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CAF', N'Central African Republic')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CAN', N'Canada')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CCK', N'Cocos (Keeling) Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CHE', N'Switzerland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CHL', N'Chile')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CHN', N'China')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CIV', N'Ivory Coast')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CMR', N'Cameroon')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'COD', N'Democratic Republic of the Congo')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'COG', N'Republic of the Congo')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'COK', N'Cook Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'COL', N'Colombia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'COM', N'Comoros')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CPV', N'Cape Verde')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CRC', N'Costa Rica')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CUB', N'Cuba')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CXR', N'Christmas Island')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CYM', N'Cayman Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CYP', N'Cyprus')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'CZE', N'Czech Republic')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DEU', N'Germany')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DJI', N'Djibouti')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DMA', N'Dominica')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DNK', N'Denmark')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DOM', N'Dominican Republic')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'DZA', N'Algeria')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ECU', N'Ecuador')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'EGY', N'Egypt')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ERI', N'Eritrea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ESH', N'Western Sahara')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ESP', N'Spain')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'EST', N'Estonia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ETH', N'Ethiopia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FIN', N'Finland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FJI', N'Fiji')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FLK', N'Falkland Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FRA', N'France')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FRO', N'Faroe Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'FSM', N'Micronesia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GAB', N'Gabon')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GBR', N'United Kingdom')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GEO', N'Georgia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GHA', N'Ghana')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GIB', N'Gibraltar')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GIN', N'Guinea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GMB', N'Gambia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GNB', N'Guinea-Bissau')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GNQ', N'Equatorial Guinea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GRC', N'Greece')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GRD', N'Grenada')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GRL', N'Greenland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GTM', N'Guatemala')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GUM', N'Guam')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'GUY', N'Guyana')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'HKG', N'Hong Kong')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'HND', N'Honduras')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'HRV', N'Croatia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'HTI', N'Haiti')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'HUN', N'Hungary')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IDN', N'Indonesia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IMN', N'Isle of Man')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IND', N'India')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IOT', N'British Indian Ocean Territory')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IRL', N'Ireland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IRN', N'Iran')
GO
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'IRQ', N'Iraq')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ISR', N'Israel')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ITA', N'Italy')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'JAM', N'Jamaica')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'JEY', N'Jersey')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'JOR', N'Jordan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'JPN', N'Japan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KAZ', N'Kazakhstan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KEN', N'Kenya')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KGZ', N'Kyrgyzstan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KHM', N'Cambodia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KIR', N'Kiribati')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KNA', N'Saint Kitts and Nevis')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KOR', N'South Korea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'KWT', N'Kuwait')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LAO', N'Laos')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LBN', N'Lebanon')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LBR', N'Liberia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LBY', N'Libya')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LCA', N'Saint Lucia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LIE', N'Liechtenstein')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LKA', N'Sri Lanka')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LSO', N'Lesotho')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LTU', N'Lithuania')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LUX', N'Luxembourg')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'LVA', N'Latvia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MAC', N'Macau')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MAF', N'Saint Martin')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MAR', N'Morocco')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MCO', N'Monaco')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MDA', N'Moldova')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MDG', N'Madagascar')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MDV', N'Maldives')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MEX', N'Mexico')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MHL', N'Marshall Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MKD', N'Macedonia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MLI', N'Mali')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MLT', N'Malta')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MMR', N'Burma (Myanmar)')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MNE', N'Montenegro')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MNG', N'Mongolia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MNP', N'Northern Mariana Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MOZ', N'Mozambique')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MRT', N'Mauritania')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MSR', N'Montserrat')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MUS', N'Mauritius')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MWI', N'Malawi')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MYS', N'Malaysia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'MYT', N'Mayotte')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NAM', N'Namibia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NCL', N'New Caledonia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NER', N'Niger')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NFK', N'Norfolk Island')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NGA', N'Nigeria')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NIC', N'Nicaragua')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NIU', N'Niue')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NLD', N'Netherlands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NOR', N'Norway')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NPL', N'Nepal')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NRU', N'Nauru')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'NZL', N'New Zealand')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'OMN', N'Oman')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PAK', N'Pakistan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PAN', N'Panama')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PCN', N'Pitcairn Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PER', N'Peru')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PHL', N'Philippines')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PLW', N'Palau')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PNG', N'Papua New Guinea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'POL', N'Poland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PRI', N'Puerto Rico')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PRK', N'North Korea')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PRT', N'Portugal')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PRY', N'Paraguay')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'PYF', N'French Polynesia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'QAT', N'Qatar')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ROU', N'Romania')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'RUS', N'Russia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'RWA', N'Rwanda')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SAU', N'Saudi Arabia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SDN', N'Sudan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SEN', N'Senegal')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SGP', N'Singapore')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SHN', N'Saint Helena')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SJM', N'Svalbard')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SLB', N'Solomon Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SLE', N'Sierra Leone')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SLV', N'El Salvador')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SMR', N'San Marino')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SOM', N'Somalia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SPM', N'Saint Pierre and Miquelon')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SRB', N'Serbia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'STP', N'Sao Tome and Principe')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SUR', N'Suriname')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SVK', N'Slovakia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SVN', N'Slovenia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SWE', N'Sweden')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SWZ', N'Swaziland')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SYC', N'Seychelles')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'SYR', N'Syria')
GO
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TCA', N'Turks and Caicos Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TCD', N'Chad')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TGO', N'Togo')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'THA', N'Thailand')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TJK', N'Tajikistan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TKL', N'Tokelau')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TKM', N'Turkmenistan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TLS', N'Timor-Leste')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TON', N'Tonga')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TTO', N'Trinidad and Tobago')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TUN', N'Tunisia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TUR', N'Turkey')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TUV', N'Tuvalu')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TWN', N'Taiwan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'TZA', N'Tanzania')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'UGA', N'Uganda')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'UKR', N'Ukraine')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'URY', N'Uruguay')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'USA', N'United States')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'UZB', N'Uzbekistan')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VAT', N'Holy See (Vatican City)')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VCT', N'Saint Vincent and the Grenadines')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VEN', N'Venezuela')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VGB', N'British Virgin Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VIR', N'US Virgin Islands')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VNM', N'Vietnam')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'VUT', N'Vanuatu')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'WLF', N'Wallis and Futuna')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'WSM', N'Samoa')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'YEM', N'Yemen')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ZAF', N'South Africa')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ZMB', N'Zambia')
INSERT [dbo].[Countries] ([CountryCode], [CountryName]) VALUES (N'ZWE', N'Zimbabwe')
GO
SET IDENTITY_INSERT [dbo].[Films] ON 

INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (1, 4, N' Minions the rise of gru', N'USA', N'onesheet.jpg', CAST(N'2020-11-01' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 112, N'download.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp 
incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec 
condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet 
interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (2, 1, N'Thor: Love and Thunder', N'USA', N'bigsalad_genavailposter_pay1_presunrise_v3_lg.jpg', CAST(N'2022-05-10' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'Thor_Love_And_Thunder_logo.jpeg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (3, 9, N'Paws of Fury: The Legend of Hank', N'USA', N'MV5BMzkxMDI1ZGEtYmJmNS00NDhlLWEzMjEtYzNmNWQ2Njg2YTI4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', CAST(N'2021-06-06' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'maxresdefault.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (4, 1, N'God father II                                                                                       ', N'USA', N'71Tn5ZErDiL._RI_.jpg', CAST(N'2022-08-09' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, N'download (1).jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (7, 3, N'The Scraw', N'USA', N'The Scraw.jpg', CAST(N'2022-11-11' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (9, 4, N'Dragon ball', N'USA', N'Dragon ball.jpg', CAST(N'2022-01-23' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (10, 1, N'Avatar', N'USA', N'Avatar.jpg', CAST(N'2022-08-15' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (11, 4, N'Pororo and friend', N'USA', N'data:image/jpeg;base64,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', CAST(N'2022-12-12' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (12, 9, N'Top Gun Maverick', N'ESP', N'Top Gun Maverick.jpg', CAST(N'2022-09-12' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (13, 1, N'Black Adam', N'ESP', N'Black Adam.jpg', CAST(N'2022-08-23' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (15, 4, N'Connan', N'ESP', N'Connan.jpg', CAST(N'2022-09-10' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (17, 9, N'Mogadishu', N'ESP', N'Mogadishu.jpg', CAST(N'2022-09-30' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (23, 4, N'Bullet train', N'USA', N'Bullet train.jpeg', CAST(N'2022-10-11' AS Date), N'Julie Andrews, Alan Arkin, Lucy Lawless, Dolph Lundgren', N'Steve Carell', 120, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', 1)
INSERT [dbo].[Films] ([FilmID], [GenreID], [Title], [CountryCode], [img], [premiere], [actor], [author], [time], [images_slide], [description], [status]) VALUES (36, 2, N'ab', N'AGO', N'161-1616544_popcorn-icon-cinema-flat-icon-png.png', CAST(N'2023-07-09' AS Date), N'dsf', N'sad', 149, N'abc', N'4_Keeping-Up-with-the-Cinema-Cleanliness.png', 0)
SET IDENTITY_INSERT [dbo].[Films] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (1, N'Action')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (2, N'Adventure')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (3, N'Business ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (4, N'Children''s/Family  ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (5, N'Comedy ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (6, N'Comedy Drama ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (7, N'Crime    ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (8, N'Culture & Socienty    ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (9, N'Drama   ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (10, N'Education   ')
INSERT [dbo].[Genres] ([GenreID], [Name]) VALUES (13, N'Historical Film ')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [Name]) VALUES (1, N'Theatre A                                                                                           ')
INSERT [dbo].[Rooms] ([RoomID], [Name]) VALUES (2, N'Theatre B                                                                                           ')
INSERT [dbo].[Rooms] ([RoomID], [Name]) VALUES (3, N'Theatre C                                                                                           ')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (1, N'7:00 AM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (2, N'9:00 AM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (3, N'11:00 AM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (4, N'13:00 PM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (5, N'15:00 PM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (6, N'17:00 PM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (7, N'19: 00 PM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (8, N'21:00 PM')
INSERT [dbo].[Slot] ([slotId], [Time]) VALUES (9, N'23:00 PM')
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (1, N'dinh quoc tung', N'tungdqhe160456@fpt.edu.vn', N'202cb962ac59075b964b07152d234b70', 0, N'123456009  ', N'....', 1, CAST(N'2002-08-03' AS Date))
INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (2, N'admin', N'admin@gmail.com', N'202cb962ac59075b964b07152d234b70', 1, N'0378387199 ', N'hong cho anh oi', 0, CAST(N'2001-08-08' AS Date))
INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (3, N'Nguyen Kiem Thong', N'test1@gmail.com', N'202cb962ac59075b964b07152d234b70', 0, N'0886969888 ', N'ko cho 123', 1, CAST(N'2001-08-14' AS Date))
INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (4, N'thong', N'thong2001', N'202cb962ac59075b964b07152d234b70', 1, N'0886969888 ', N'VietNam', 1, CAST(N'2001-08-08' AS Date))
INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (5, N'khanh manh', N'Manhnkhe153424@fpt.edu.vn', N'c4ca4238a0b923820dcc509a6f75849b', 0, N'0375801453 ', N'lâm thao-phú totô', 1, CAST(N'2023-06-29' AS Date))
INSERT [dbo].[user] ([user_id], [fullname], [email], [password], [gender], [phone], [address], [role], [DOB]) VALUES (6, N'abc', N'user@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', 0, N'0375801453 ', N'lâm thao-phú tho', 1, CAST(N'2023-07-07' AS Date))
SET IDENTITY_INSERT [dbo].[user] OFF
GO
