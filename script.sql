USE [webnangcao]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Categorys]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_CreateDate]
GO
ALTER TABLE [dbo].[questionandanswer] DROP CONSTRAINT [DF_questionandanswer_CreateDate]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_PromotionPrice]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Tophot]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_CreateDate]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Status]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Quantity]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Price]
GO
ALTER TABLE [dbo].[OurChefs] DROP CONSTRAINT [DF_OurChefs_CreateDate]
GO
ALTER TABLE [dbo].[OderDetail] DROP CONSTRAINT [DF_OderDetail_Quantity]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [DF_FeedBack_CreateDate]
GO
ALTER TABLE [dbo].[Email] DROP CONSTRAINT [DF_Email_CreateDate]
GO
ALTER TABLE [dbo].[Detail] DROP CONSTRAINT [DF_Detail_CreateDate]
GO
ALTER TABLE [dbo].[Content] DROP CONSTRAINT [DF_Content_CreateDate]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_ShowOnHome]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_Status]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_CreateDate]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_DisplayOrder]
GO
ALTER TABLE [dbo].[CategoryDetail] DROP CONSTRAINT [DF_CategoryDetail_Status]
GO
ALTER TABLE [dbo].[CategoryDetail] DROP CONSTRAINT [DF_CategoryDetail_CreateDate]
GO
ALTER TABLE [dbo].[About] DROP CONSTRAINT [DF_About_CreateDate]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Slidebar]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Slidebar]') AND type in (N'U'))
DROP TABLE [dbo].[Slidebar]
GO
/****** Object:  Table [dbo].[questionandanswer]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[questionandanswer]') AND type in (N'U'))
DROP TABLE [dbo].[questionandanswer]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OurChefs]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OurChefs]') AND type in (N'U'))
DROP TABLE [dbo].[OurChefs]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OderDetail]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuType]') AND type in (N'U'))
DROP TABLE [dbo].[MenuType]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type in (N'U'))
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Footer]') AND type in (N'U'))
DROP TABLE [dbo].[Footer]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedBack]') AND type in (N'U'))
DROP TABLE [dbo].[FeedBack]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
DROP TABLE [dbo].[Email]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Detail]') AND type in (N'U'))
DROP TABLE [dbo].[Detail]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentTag]') AND type in (N'U'))
DROP TABLE [dbo].[ContentTag]
GO
/****** Object:  Table [dbo].[ContentDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentDetail]') AND type in (N'U'))
DROP TABLE [dbo].[ContentDetail]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Content]') AND type in (N'U'))
DROP TABLE [dbo].[Content]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorys]') AND type in (N'U'))
DROP TABLE [dbo].[Categorys]
GO
/****** Object:  Table [dbo].[CategoryDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryDetail]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryDetail]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blog]') AND type in (N'U'))
DROP TABLE [dbo].[Blog]
GO
/****** Object:  Table [dbo].[About]    Script Date: 03/04/2021 4:17:58 SA ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[About]') AND type in (N'U'))
DROP TABLE [dbo].[About]
GO
/****** Object:  Table [dbo].[About]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[DesCription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Detail] [text] NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[bl_id] [int] IDENTITY(1,1) NOT NULL,
	[bl_name] [nvarchar](50) NULL,
	[bl_title] [nvarchar](50) NULL,
	[bl_desc1] [text] NULL,
	[bl_desc2] [text] NULL,
	[bl_desc3] [nvarchar](50) NULL,
	[bl_create] [datetime] NULL,
	[bl_image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[bl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MetaTitle] [nvarchar](50) NULL,
	[DetailID] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
	[DesCription] [nvarchar](max) NULL,
	[Question] [nvarchar](50) NULL,
	[answer] [nvarchar](250) NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_CategoryDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NOT NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [char](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [ntext] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[DesCription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Detail] [text] NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentDetail](
	[Id] [int] NULL,
	[Description] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] IDENTITY(1,1) NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email1] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Content] [nvarchar](250) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [ntext] NULL,
	[Link] [nvarchar](50) NULL,
	[DisPlayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Price_total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMoblie] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OurChefs]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurChefs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LinkFb] [nvarchar](250) NULL,
	[LinkInstagam] [nvarchar](250) NULL,
	[LinkSwithter] [nvarchar](250) NULL,
	[office] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Phone] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Descripton] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurChefs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DesCription] [nvarchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[MetaTitle] [varchar](50) NULL,
	[Detail] [text] NULL,
	[Code] [varchar](20) NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [char](250) NULL,
	[Tophot] [datetime] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionandanswer]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionandanswer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Subject] [nchar](10) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_questionandanswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slidebar]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slidebar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[stastus] [bit] NULL,
 CONSTRAINT [PK_Slidebar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/04/2021 4:17:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [Name], [Quantity], [DesCription], [CreateDate], [Detail], [Images]) VALUES (3, N'1', NULL, NULL, CAST(N'2021-03-31T15:45:36.423' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([bl_id], [bl_name], [bl_title], [bl_desc1], [bl_desc2], [bl_desc3], [bl_create], [bl_image]) VALUES (2, N'có con cặc', N'như cứt', NULL, NULL, NULL, CAST(N'2021-04-02T18:16:22.777' AS DateTime), N'dishes3.jpg')
INSERT [dbo].[Blog] ([bl_id], [bl_name], [bl_title], [bl_desc1], [bl_desc2], [bl_desc3], [bl_create], [bl_image]) VALUES (3, N'bài viết 1', N'như cứt', NULL, NULL, NULL, CAST(N'2021-04-02T20:09:39.903' AS DateTime), N'dishes4.jpg')
INSERT [dbo].[Blog] ([bl_id], [bl_name], [bl_title], [bl_desc1], [bl_desc2], [bl_desc3], [bl_create], [bl_image]) VALUES (4, N'bài viết 1', N'như cứt', NULL, NULL, NULL, CAST(N'2021-04-02T18:17:11.947' AS DateTime), N'menu3.jpg')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryDetail] ON 

INSERT [dbo].[CategoryDetail] ([ID], [Name], [MetaTitle], [DetailID], [CreateBy], [CreateDate], [Status], [DesCription], [Question], [answer], [Images]) VALUES (1, N'Fresh Food Services', N'qualiity service', 1, N'admin', CAST(N'2020-12-08T21:34:43.817' AS DateTime), 1, N'Lorem ipsum dolor sit amet, consectetLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', N'Which material types can you work with? ', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. incididunt ut labore et dolore magna aliqua.', N'services-details.jpg')
SET IDENTITY_INSERT [dbo].[CategoryDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Bánh pizza', N'như cứt', 1, NULL, NULL, CAST(N'2021-04-02T13:29:43.737' AS DateTime), NULL, NULL, N'1', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10002, N'Salad', N'như cứt', 2, NULL, NULL, CAST(N'2021-04-02T13:27:53.100' AS DateTime), N'admin', NULL, N'2', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20003, N' Mì ống Ý', N'như cứt', 4, 0, NULL, CAST(N'2021-04-02T13:29:06.270' AS DateTime), N'admin', NULL, N'3', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20004, N'Tráng miệng', N'như cứt', 5, 0, NULL, CAST(N'2021-04-02T13:29:28.343' AS DateTime), N'admin', NULL, N'4', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20005, N'Đồ uống', N'như cứt', 6, 0, NULL, CAST(N'2021-04-02T13:28:47.420' AS DateTime), N'admin', NULL, N'5', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20006, N' Các món ăn khác', N'như cứt', 7, 0, NULL, CAST(N'2021-04-02T13:28:34.993' AS DateTime), N'admin', NULL, N'6', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20007, N'Các phụ kiện pizza', N'như cứt', 8, 0, NULL, CAST(N'2021-04-02T13:28:10.533' AS DateTime), N'admin', NULL, N'7', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20008, N'Combo pizza', N'như cứt ', 9, 0, NULL, CAST(N'2021-04-02T13:27:34.930' AS DateTime), N'admin', NULL, N'8', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (1, N'<p>Company: Tập đoàn Tuấn Tâm Group</p>Email: tamcb2708@gmail.com</p>Phone: 0355978258</p>', 1)
INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (2, N'<p>Phone: 0355978258</p>', NULL)
INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (3, N'<p>Email: tamcb2708@gmail.com</p>', NULL)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [Quantity], [DesCription], [CreateDate], [Detail], [Images]) VALUES (1, N'content1', 1, N'xxxxxx', CAST(N'2020-12-16T13:22:34.477' AS DateTime), N'1', N'dishes1.jpg')
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[Detail] ON 

INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (1, N'
                                            Quality Service
                                            ', CAST(N'2020-12-09T12:50:49.517' AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (2, N'
                                            Free Home Delivery
                                            ', CAST(N'2020-12-09T12:51:04.993' AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (3, N'
                                            Discount Voucher
                                            ', CAST(N'2020-12-13T12:52:54.880' AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (4, N'
                                            Party Center
                                            ', CAST(N'2020-12-13T12:53:15.390' AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (5, N'
                                            Conference Convention
                                            ', CAST(N'2020-12-13T12:53:33.337' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Email] ON 

INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (1, N'tamcb2708@gmail.co', CAST(N'2020-12-22T17:53:12.177' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (2, N'tamcb2707@gmail.com', CAST(N'2020-12-22T17:53:20.983' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (3, N'tamcb@gmail.com', CAST(N'2020-12-22T17:53:26.823' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (4, N'tamcb11@gmail.com', CAST(N'2020-12-22T17:53:31.900' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (5, N'tamcb061201@gmail.com', CAST(N'2020-12-22T17:53:40.567' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (6, N'tamcbbka@gmail.com', CAST(N'2020-12-22T17:53:57.913' AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (7, N'tamcb2708@gmail.com', CAST(N'2021-04-02T16:27:10.943' AS DateTime))
SET IDENTITY_INSERT [dbo].[Email] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Address], [CreateDate], [Content]) VALUES (1, N'tuan tam', 982374911, N'tmacb2708@gmail.com', N'đàadsfads', CAST(N'2020-12-12T15:36:18.257' AS DateTime), N'xxxxxxxxxx')
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/about', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Đội ngũ', N'/team', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Thực đơn', N'/menu', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Bài Viết', N'/blog', 6, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Liên hệ', N'/contact', 7, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (8, N'Giới thiệu về công ty', N'/about-company', 1, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (10, N'thực đơn', N'/shop', 3, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (11, N'Các câu hỏi', N'/faq', 4, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (12, N'Tin tức', N'/blog', 5, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (13, N'Sưu tâp', N'/gallery', 6, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (16, N'Các câu hỏi', N'/faq', 8, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (17, N'Theo dõi đơn hàng', N'/check_order', 9, N'_self', 1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu Chinh')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu Top')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (3, N'Menu Footer')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20002, 21, 3, CAST(19 AS Decimal(18, 0)), N'Cheese & Chicken', N'dishes4.jpg', CAST(57 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20002, 22, 4, CAST(19 AS Decimal(18, 0)), N'Cheese & Chicken', N'dishes4.jpg', CAST(76 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20002, 23, 4, CAST(19 AS Decimal(18, 0)), N'Cheese & Chicken', N'dishes4.jpg', CAST(76 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20004, 20, 1, CAST(17 AS Decimal(18, 0)), N'Capricciosa', N'dishes6.jpg', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20004, 21, 4, CAST(17 AS Decimal(18, 0)), N'Capricciosa', N'dishes6.jpg', CAST(68 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20004, 22, 1, CAST(17 AS Decimal(18, 0)), N'Capricciosa', N'dishes6.jpg', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20004, 23, 1, CAST(17 AS Decimal(18, 0)), N'Capricciosa', N'dishes6.jpg', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20004, 24, 5, CAST(17 AS Decimal(18, 0)), N'Capricciosa', N'dishes6.jpg', CAST(85 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20007, 24, 4, CAST(20 AS Decimal(18, 0)), N'Peppy Paneer', N'dishes7.jpg', CAST(80 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20032, 22, 1, CAST(20 AS Decimal(18, 0)), N'Tomato Pizza', N'blog3.jpg', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20032, 23, 1, CAST(20 AS Decimal(18, 0)), N'Tomato Pizza', N'blog3.jpg', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20034, 24, 5, CAST(12 AS Decimal(18, 0)), N'Egg Tarts', N'blog2.jpg', CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20053, 25, 1, CAST(300000 AS Decimal(18, 0)), N'pizza hai san', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20053, 26, 1, CAST(300000 AS Decimal(18, 0)), N'pizza hai san', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20055, 28, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20055, 29, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20055, 30, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20055, 31, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20056, 27, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price], [Name], [Image], [Price_total]) VALUES (20056, 32, 1, CAST(300000 AS Decimal(18, 0)), N'Dessert ', N'products3.jpg', CAST(300000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status], [Total]) VALUES (24, CAST(N'2021-04-01T22:20:02.023' AS DateTime), NULL, N'duy ton', N'0982374911', N'ha noi', NULL, 1, CAST(225 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status], [Total]) VALUES (31, CAST(N'2021-04-03T03:23:29.540' AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', NULL, 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status], [Total]) VALUES (32, CAST(N'2021-04-03T04:01:26.960' AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', NULL, 1, CAST(300000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OurChefs] ON 

INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (1, N'Justin Roberto', NULL, NULL, NULL, N'Assistant Chef', CAST(N'2020-12-10T18:07:37.130' AS DateTime), 982374911, N'team1.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (2, N'Jamie Oliver', NULL, NULL, NULL, N'Assistant Chef', CAST(N'2020-12-10T18:07:40.417' AS DateTime), NULL, N'team2.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (3, N'Wolfgang Puck', NULL, NULL, NULL, N'Assistant Chef', CAST(N'2020-12-10T18:07:42.910' AS DateTime), NULL, N'team3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (4, N'Nicolas Appert', NULL, NULL, NULL, N'Sous Chef', CAST(N'2020-12-10T18:25:14.223' AS DateTime), NULL, N'client1.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (5, N'Grant Achatz', NULL, NULL, NULL, N'Kitchen Manager', CAST(N'2020-12-10T18:25:23.160' AS DateTime), NULL, N'client2.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (6, N'James Beard', NULL, NULL, NULL, N'NULLAssistant Manager', CAST(N'2020-12-10T18:25:34.347' AS DateTime), NULL, N'client3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (7, N'James Ramsay
', NULL, NULL, NULL, N'Founder & CEO', CAST(N'2020-12-10T18:25:53.387' AS DateTime), NULL, N'team3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (8, N'Jamie Oliver', NULL, NULL, NULL, N'Head Of Chef', CAST(N'2020-12-10T18:26:05.437' AS DateTime), NULL, N'team4.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (9, N'James Ramsay
', NULL, NULL, NULL, N'Assistant Chef', CAST(N'2020-12-10T18:26:12.530' AS DateTime), NULL, N'team5.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (10, N'Wolfgang Puck', NULL, NULL, NULL, N'Assistant Chef', CAST(N'2020-12-10T18:26:20.030' AS DateTime), NULL, N'team6.jpg', NULL, NULL, N'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (11, N'Jamie Oliver
', NULL, NULL, NULL, N'Founder & CEO', CAST(N'2020-12-10T18:26:26.517' AS DateTime), NULL, N'team7.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (12, N'John Martin
', NULL, NULL, NULL, N'Head Of Chef', CAST(N'2020-12-10T18:26:34.920' AS DateTime), 355978258, N'team8.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ipsume ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem Ipsum is simply dummy printing and typesetting industry.')
SET IDENTITY_INSERT [dbo].[OurChefs] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20053, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20054, N'Dessert', N'ádasdsad', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:54:43.577' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20055, N'Dessert ', N'dsadasd', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:54:58.423' AS DateTime), N'tuan tam', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20056, N'Dessert ', N'sadsadsad', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, NULL, 1, CAST(N'2021-04-02T14:54:50.993' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20057, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:25.853' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20058, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:28.310' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20059, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:29.920' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20060, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:31.140' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20061, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:32.347' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20062, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:35.753' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20063, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:37.760' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20064, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:48.970' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20065, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:51.653' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20066, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20067, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20068, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20069, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20070, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20071, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20072, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20073, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20074, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20075, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20076, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20077, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20078, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20079, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20080, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20081, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20082, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20083, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20084, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20085, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20086, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20087, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20088, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 2, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20089, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20090, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20091, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20092, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20093, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20094, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20095, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20096, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20097, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20098, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20099, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20100, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20101, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20102, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20103, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20104, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20105, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20106, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20107, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20108, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20109, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 10002, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20110, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20111, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20112, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20113, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20114, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20115, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20116, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20117, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20118, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20119, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20120, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20121, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20122, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20123, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20124, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20125, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20126, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20127, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20128, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20129, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20130, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20003, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20131, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20132, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20133, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20134, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20135, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20136, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20137, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20138, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20139, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20140, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20141, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20142, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20143, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20144, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20145, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20004, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20146, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20147, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20148, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20149, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20150, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20151, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20152, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20153, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20154, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20155, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20156, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20157, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20158, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20159, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20160, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20161, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20162, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20163, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20164, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20165, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20166, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20005, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20167, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20168, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20169, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20170, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20171, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20172, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20173, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20174, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20175, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20176, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20177, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20178, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20179, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20180, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20181, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20182, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20183, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20184, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20185, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20006, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20186, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20187, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20188, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20189, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20190, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20191, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20192, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20193, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20194, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20195, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20196, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20197, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20198, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20199, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20200, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20201, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20202, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20203, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20007, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20204, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20205, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20206, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20207, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20208, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20209, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20210, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20211, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20212, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20213, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20214, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20215, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20216, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20217, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20218, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20219, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20220, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20221, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20222, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20223, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20224, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20225, N'pizza hai san', N'như cứt ý', N'products3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), 0, 20008, NULL, NULL, NULL, NULL, 0, CAST(N'2021-04-02T14:50:56.693' AS DateTime), N'tuan tam', NULL, NULL, NULL, CAST(N'2021-04-02T14:55:53.447' AS DateTime), CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[questionandanswer] ON 

INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (1, N' Expenses as material breeding insisted building to', N' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(N'2020-12-15T19:29:14.800' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (2, N'What Access Do I Have On The Free Plan ?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(N'2020-12-15T19:31:52.063' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (3, N'Can I get support from the Author?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(N'2020-12-15T19:33:09.520' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (4, N'Why Choose Our Services In Your Business?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(N'2020-12-15T19:33:41.703' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (5, N'It surprise informed mr advanced do outweigh.', N' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(N'2020-12-15T19:33:54.093' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (6, N' Expenses as material breeding insisted building to', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(N'2020-12-15T19:34:33.950' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (7, N'sssssssssss', NULL, CAST(N'2020-12-15T20:46:15.097' AS DateTime), N'tam nguyen', N'tmacb2708@gmail.com', 982374911, N'ssssssssss', 0)
SET IDENTITY_INSERT [dbo].[questionandanswer] OFF
GO
SET IDENTITY_INSERT [dbo].[Slidebar] ON 

INSERT [dbo].[Slidebar] ([ID], [image], [title], [stastus]) VALUES (1, N'main-banner-bg3.jpg', N'It’s About Good Food & Fresh Ingredients', 1)
INSERT [dbo].[Slidebar] ([ID], [image], [title], [stastus]) VALUES (2, N'yummy-bg.jpg', N'It’s redients', 1)
SET IDENTITY_INSERT [dbo].[Slidebar] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (4, N'18810340547', N'202cb962ac59075b964b07152d234b70', N'tam nguyen', N'adadsa', N'tmacb270800@gmail.com', N'0982374911', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10005, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', N'Tam nnguyen', N'asawa', N'tamcb2708@gmail.com', N'0355978258', CAST(N'2020-12-09T15:42:16.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10006, NULL, N'123456', N'tam nguyen', N'adadsa', N'tmacb2708@gmail.com', N'0982374911', CAST(N'2020-12-12T17:03:20.573' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10007, NULL, N'123456', N'tam nguyen', N'adadsa', N'tmacb27081@gmail.com', N'0982374911', CAST(N'2020-12-12T17:06:17.637' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10008, N'1881051', N'123456', N'tam nguyen', N'adadsa', N'tmacb2708001@gmail.com', N'0982374911', CAST(N'2020-12-12T17:11:16.990' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10009, N'tai', N'123456', N'tam nguyen', N'adadsa', N't708@gmail.com', N'0982374911', CAST(N'2020-12-12T17:33:07.503' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10010, N'tai1', N'123456', N'tam nguyen', N'adadsa', N't2708@gmail.com', N'0982374911', CAST(N'2020-12-12T17:39:31.837' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CategoryDetail] ADD  CONSTRAINT [DF_CategoryDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CategoryDetail] ADD  CONSTRAINT [DF_CategoryDetail_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Detail] ADD  CONSTRAINT [DF_Detail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Email] ADD  CONSTRAINT [DF_Email_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OderDetail] ADD  CONSTRAINT [DF_OderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OurChefs] ADD  CONSTRAINT [DF_OurChefs_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Tophot]  DEFAULT (getdate()) FOR [Tophot]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_PromotionPrice]  DEFAULT ((0)) FOR [PromotionPrice]
GO
ALTER TABLE [dbo].[questionandanswer] ADD  CONSTRAINT [DF_questionandanswer_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categorys] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categorys] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Categorys]
GO
