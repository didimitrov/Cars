USE [master]
GO
/****** Object:  Database [`CarsDb]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE DATABASE [`CarsDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'`CarsDb', FILENAME = N'C:\Users\MY\`CarsDb.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'`CarsDb_log', FILENAME = N'C:\Users\MY\`CarsDb_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [`CarsDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [`CarsDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [`CarsDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [`CarsDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [`CarsDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [`CarsDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [`CarsDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [`CarsDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [`CarsDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [`CarsDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [`CarsDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [`CarsDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [`CarsDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [`CarsDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [`CarsDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [`CarsDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [`CarsDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [`CarsDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [`CarsDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [`CarsDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [`CarsDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [`CarsDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [`CarsDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [`CarsDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [`CarsDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [`CarsDb] SET  MULTI_USER 
GO
ALTER DATABASE [`CarsDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [`CarsDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [`CarsDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [`CarsDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [`CarsDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Power] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ShipperId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Shippers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201511220749422_AutomaticMigration', N'Cars.Data.Migrations.Configuration', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10F494045EB72F99C1C468EFC2E34B62647CC1B467913C196C89DD1646A27A25CA6363B15F96877C527E21A44449BC4A54B75A2D4F8205166E913C2C160FC962A94AF39F7FFD7BFAD34B143ACF304983189DBA87FB07AE039117FB015A9EBA195EFCF0C1FDE9C7DFFF6E7AE9472FCECF65BD635A8FB444E9A9FB84F1EA643249BD271881743F0ABC244EE305DEF7E26802FC78727470F097C9E1E1041208976039CEF473867010C1FC07F9791E230FAE7006C29BD88761CA9E9392598EEADC8208A62BE0C153F71C24E9FE05C0C075CEC200100166305CB80E4028C60013F14EBEA4708693182D672BF200840FAF2B48EA2D40984226F6495DDD76040747740493BA6109E565298EA38E8087C74C2513B9F95A8A752B9511A55D12E5E2573AEA5C71B9CE5C47EEE7E43C4C681DA6D242F3FBE4EF3D877BB0574D3AE106FD8F946621CE12788A60861310EE39F7D93C0CBCBFC3D787F82B44A7280B435E1E221129131E9047F749BC82097EFD0C174CCA6BDF752662BB89DCB06AC6B52906718DF0F191EBDC92CEC13C84D57473039EE138817F8508260043FF1E600C13443160AE30A577A9AF8F0940557784606489B8CE0D78F904D1123F9DBAEFC89AB80A5EA05F3E60127C41015950A40D4E32A891B0B9D77F423A79CD636C46B88FBFC10D212E60EA25C1AAA0A75101E4CF6D6860F614ACC8EFF6A996606EC173B0CC675E0FE83A9F619897A7E441B18FECB3B247BA04C8609238FA1C87759BFCF9E3034896101371624DE12CCE124F92663AA9D764E34AAD44B35BADACFAFF57ACBE2FFAFF1EF86ACBAB8233EB92AAE48D965425E3D62255A92E8ADBC4AC9BEA84394B57B710EF970DF70BC8AB84C07D8B93AFFB3CE29E63DDAEA6E6912D358F0FE78BE30FEFDE03FFF8FD9FE1F1BBE169AA21CEE1D1876D6C742D743D7AF7BE975E8DFC25769381C0FC7C3FB26A358DD55285CC9A2ABD509A42F54FEB1275FCD4A692AAF4D656A5035A6725945D0CBD1A4A79B7DBAF35E3CE562B327939B5A8466C4F68A9D9DB3CA9879BF4CB0804610F7BA0452FE4D2B908920856A3FC1813C601D4DDBE06694AB600FF6F207DEADFDA906D57E8650961E60C8368B5F5DEEE9F62046FB3685E5F2086E8ABB7A979F8165F018F18919788B6DA18EF53EC7D8D337C89FC0B62907EC15E09487F3E04913D402FE29C791E4CD32B4266E89FC719C29BDDF2E806B56B1BE43C0441A43742A4ADF4B1AC5A1B22FA1A8A3162A8A633489A44FD142F0364276A59D52C6A51A3555456ADABA814CC4E5256D32C685EA155CEA2566F265E3E43FDDB7839ECF88DBCB15FB3776521E6D3473BDDFAD994F7F43308B3BEBB5A6B35E49B40FFAB21871DFF6AC8C5248F9F039F5A2516379FB23281B7AAAFBF54B5AF3949B2A1978330CCA13B1F660F302D97B3348DBD205F05A223B570B9899213EBCD69F2BF1523E0FC76641C84D7013DE148DF6428AECCA13B74014388A173E6156F80CE41EA015FD51A91DFB792A67231D7D2E46F714449FEA47440580C13BA5E01BDE0A464150608AB940F9017AC40D8A007A98DE5C1448758A1CB2517700511DD4C1A066CD32DF74240EDBDEA44527C9B62A6138E44CDDCD278C34C73DAE41AAB675674D00E42B606879C46B0DACDB615FE99B534000BCD9AB0E95CEF551B8888861B9169CEDBAE47F5BC2BCEAE4138D9722F33F092DD0DB642CC668D0D40CE6695D80860F410EF82A0EC1E6C4B00F9523C36824AB771034199B93E0841458DED80A0A24ADE1C410BF787EDFC4BBE90B1D15374C20C7FAC37AA6B07DC14F431326A16F71AD20693163051E97931A785F0056B2EFE444E76F74FD9354AA608059F412C042AD45729FE8231696ECA6C6F5DF3EAB6D402C15C8C4A7BD10A6E019129DC0458D3BC0594BDD9568094E5DC41B8D24BDD281DB3613AC0961EE5465876F248B01C03957965212A5C155D088BBC1C5A6ED4D53878FA286BAAE522CC811432CA1BA3382C8B21EB821AD481B75DF66CAF7B9CFC8CAF0D1A68B89D71389A35B0B1524C2F5954C5D85C3EBA5C3FB881B1C9685050CB55C1A0A47230BD6BA95C8DED5AD259C05D6CE08DB424D9AB062D9583E95D4B8CA3ED4AD258611DECB08D5424DA4C3D2DB6D26D591DEF55D9745244B8B307D38921147E7A0356AB002DB9D078F6C499B1B8F81F66DD23C7A30263E209DA968D91AA271C276009A552D23591F42A48524CC3F2E7803A6DCFFD48A9A635660C275ED92567AFA873589E7C6565FA77DD204F12C86D1AD5D4632DAEC870226A2FE62FC0C413466DE5D07404108244F3AAED3C0EB30899AD56736B1655CE03B047F618458C380F513CB1476031E23C047B648F210489F34842813D1EE7E6E5D11ABCBF74014953AB58EE0A6D94FB9548412B825666CD7A242D2DE7EE4435B6DC0E598BE810BE7DF1643413613A396C6641B87F749F8AE6E6FFA3F3A19E9A9BCD4D75955B7F7ECC10262D976E005ECF26D78019A57C53C0A398DE1EEC6CBE4C171C9B39926FC9DDA7A815613BAB88059DF200EC51470C2E6E5101E3CA3A1CCB4268A9703A0B251D0E55317E543858C5A20E52F251A282907CC15A78068DEA6BD8F7A0C685F2E86AA93DB226429487D614AF81AD91592EB347D50491F2C09A627BEC3AA254DE3B477C4E191D195D0FAAC2ABB7D94965C0D8CE46D8CF41C785E5F140DCE38E582CF04E0163CF474922A39FA72B890A1FEE6624326098F719218E4DDC661A83EFCC9842709AB0953705E799F1BA5175AB8450BC3B7295AAF7CACB237973A6CCB362F1F503D9D55254719D528DE4187F4D318CD8C5F297F03C0C20DDB4CB0A3700050B98E22220D33D3A383C92BEA4309EAF1A4CD2D40F359E29E9D306E2540D10521D5085B6064D778CA0143E2F809E41E23DE5017FE2070636F87A402EF526DF0E580740F3E580726C7F88C0CB1F37FF1A402E95F24AF41AF9F0E5D4FD356F75E25CFFE3B16AB8E7DC2564219C3807CE6F7D65076AFD306F968A8571D6325B3D04B3ABD7F02154A65D5B7978720F6A6AA7221D34FD2B7FBCE75CA75F50F04B460A1E88422923E574AB7E18DAECFE1869B6B1BD56C9022F9A8AAB7BC3191673903B495334DD409AB53393DFEE8212B27FB5A8D282583FD9771EAC71186A127D3B6C8F9AB34C97CCBB11A22661B72FBC5E54684AC85D07CB988CEB939F384FC6ED36587D72EE3AA2191373D731A1E4B45CFB6DA86CB9C3A346E3BF78B366D1B8CE2625FB71A385AE66386ED3F0333825BECB04C0DE4E474D7E5F6FD8BBA4F67692FA7698C8770EC4DEB79EB8374430B53E90E6BB49CE1B4B3E5E1DABBCDB34BC2133EF1A5EEA7F570977234811D1049DEF3EAD6E68AE99DECB8D3C37A95BF2DCC8C8C65211769F223734D94CEFEF464EB64E897023E3DAAECECF1D33CDFA08DD795A9B1A302E4FAB92AF664A572BDE7F9EBAFE3C26535EDC31B4F941326675255070AB121DB62981C998AC55F04DE9442CD6F5547C7D479F6A60EAAC26B8B1C3BA8AB953738E83DCB1B2D8957E951ACDDD761B2B33521A07CBEA34776BC80C6AEA9B9D598D7DB33ACD7D1BF26D0648D3D3A5E63566CB700BB1CA93187D229E368D47970FDA72A034C512BFA5C43B61242DA9AD6D9787C6A8B5B79467D78B52842DC11085F576D2EA7A51499F4BA7431A9D1A50458C18EE1F9D2186541A2C6B08FA4FD020E809E64B55E71A2DE2D28A92242AAB48EED41B88814F6C9BB304070BE061524C5F08E5DF44CB9DECF4B5E41CFAD7E82EC3AB0C9321C3681E0ADE696A8D35F59FE70A8A324FEFF2409BB48F21103103FA22ED0E7DCC82D0AFE4BED238700D10D4CC63AF5FE85C62FA1A66F95A21DDC6C81288A9AFB24E1F60B40A09587A8766E019AE231BA1DF27B804DE6BEDAE3781B44F84A8F6E94500960988528651B7273F0987FDE8E5C7FF027B128A627B690000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [Brand], [Year], [Power], [Description], [ShipperId]) VALUES (1, N'Volksvagen', 2010, 100, N'Volkswagen Group is the largest carmaker in Europe', 3)
INSERT [dbo].[Cars] ([Id], [Brand], [Year], [Power], [Description], [ShipperId]) VALUES (2, N'BMW', 2015, 250, N'Bavarian Motor Works is a German luxury automobile manufacturing company', 3)
INSERT [dbo].[Cars] ([Id], [Brand], [Year], [Power], [Description], [ShipperId]) VALUES (3, N'Fiat', 2000, 95, N'The definition of a fiat is an order or decree, or any arbitrary order', 1)
INSERT [dbo].[Cars] ([Id], [Brand], [Year], [Power], [Description], [ShipperId]) VALUES (4, N'Tesla', 2014, 260, N'Tesla''s advanced electric powertrain delivers exhilarating performance', 2)
INSERT [dbo].[Cars] ([Id], [Brand], [Year], [Power], [Description], [ShipperId]) VALUES (5, N'Dacia', 2001, 99, N'The best ambassador of Romania''s economy', 1)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Shippers] ON 

INSERT [dbo].[Shippers] ([Id], [Name]) VALUES (1, N'Happy Cars')
INSERT [dbo].[Shippers] ([Id], [Name]) VALUES (2, N'Funky Vehicles')
INSERT [dbo].[Shippers] ([Id], [Name]) VALUES (3, N'Geman Automotion')
SET IDENTITY_INSERT [dbo].[Shippers] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShipperId]    Script Date: 22.11.2015 г. 11:04:46 ч. ******/
CREATE NONCLUSTERED INDEX [IX_ShipperId] ON [dbo].[Cars]
(
	[ShipperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cars_dbo.Shippers_ShipperId] FOREIGN KEY([ShipperId])
REFERENCES [dbo].[Shippers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_dbo.Cars_dbo.Shippers_ShipperId]
GO
USE [master]
GO
ALTER DATABASE [`CarsDb] SET  READ_WRITE 
GO
