USE [master]
GO
/****** Object:  Database [HMAFleet]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE DATABASE [HMAFleet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HMAFleet', FILENAME = N'E:\SQLData\HMAFleet.mdf' , SIZE = 18471232KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HMAFleet_log', FILENAME = N'F:\SQL Logs\HMAFleet_log.ldf' , SIZE = 11616384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HMAFleet] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HMAFleet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HMAFleet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HMAFleet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HMAFleet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HMAFleet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HMAFleet] SET ARITHABORT OFF 
GO
ALTER DATABASE [HMAFleet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HMAFleet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HMAFleet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HMAFleet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HMAFleet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HMAFleet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HMAFleet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HMAFleet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HMAFleet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HMAFleet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HMAFleet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HMAFleet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HMAFleet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HMAFleet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HMAFleet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HMAFleet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HMAFleet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HMAFleet] SET RECOVERY FULL 
GO
ALTER DATABASE [HMAFleet] SET  MULTI_USER 
GO
ALTER DATABASE [HMAFleet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HMAFleet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HMAFleet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HMAFleet] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HMAFleet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HMAFleet] SET QUERY_STORE = OFF
GO
USE [HMAFleet]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HMAFleet]
GO
/****** Object:  User [VWalode_HIS61785]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [VWalode_HIS61785] FOR LOGIN [VWalode_HIS61785] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Swapnil_HIS64104]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Swapnil_HIS64104] FOR LOGIN [Swapnil_HIS64104] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svc_web_services]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [svc_web_services] FOR LOGIN [svc_web_services] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svc_linkserver_incentive]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [svc_linkserver_incentive] FOR LOGIN [svc_linkserver_incentive] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SVC_DLP_DBSCAN]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [SVC_DLP_DBSCAN] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ssharma]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [ssharma] FOR LOGIN [ssharma] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_hmafleet_new]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [srv_hmafleet_new] FOR LOGIN [srv_hmafleet_new] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_hmafleet]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [srv_hmafleet] FOR LOGIN [srv_hmafleet] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_genesis]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [srv_genesis] FOR LOGIN [srv_genesis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Sohini_HIS61541]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Sohini_HIS61541] FOR LOGIN [Sohini_HIS61541] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_web_services]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Service_web_services] FOR LOGIN [Service_web_services] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_reports]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Service_reports] FOR LOGIN [Service_reports] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_datawarehouse]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Service_datawarehouse] FOR LOGIN [Service_datawarehouse] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Rohit_HIS61273]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Rohit_HIS61273] FOR LOGIN [Rohit_HIS61273] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Rajesh_HIS62647]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Rajesh_HIS62647] FOR LOGIN [Rajesh_HIS62647] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mvillar_HIS94466]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [mvillar_HIS94466] FOR LOGIN [mvillar_HIS94466] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [merik]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [merik] FOR LOGIN [merik] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kswamy_HIS61784]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Kswamy_HIS61784] FOR LOGIN [Kswamy_HIS61784] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HYUNDAICORPWEB\nnguyen]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [HYUNDAICORPWEB\nnguyen] FOR LOGIN [HYUNDAICORPWEB\nnguyen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HIS62797_Komal]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [HIS62797_Komal] FOR LOGIN [HIS62797_Komal] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Erik_HIS62546]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Erik_HIS62546] FOR LOGIN [Erik_HIS62546] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bradpark_HIS10296]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Bradpark_HIS10296] FOR LOGIN [Bradpark_HIS10296] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BradPark_10296]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [BradPark_10296] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bharadwaj_HIS61575]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Bharadwaj_HIS61575] FOR LOGIN [Bharadwaj_HIS61575] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bhagyashree_HIS64103]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Bhagyashree_HIS64103] FOR LOGIN [Bhagyashree_HIS64103] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Ayisha_HIS62584]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Ayisha_HIS62584] FOR LOGIN [Ayisha_HIS62584] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Anjali_HIS62565]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Anjali_HIS62565] FOR LOGIN [Anjali_HIS62565] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Andrew_SA_Login]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE USER [Andrew_SA_Login] FOR LOGIN [Andrew_SA_Login] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [grp_HmaFleet_support]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE ROLE [grp_HmaFleet_support]
GO
/****** Object:  DatabaseRole [grp_execute]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE ROLE [grp_execute]
GO
ALTER ROLE [db_datareader] ADD MEMBER [VWalode_HIS61785]
GO
ALTER ROLE [grp_HmaFleet_support] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [db_owner] ADD MEMBER [svc_web_services]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svc_linkserver_incentive]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SVC_DLP_DBSCAN]
GO
ALTER ROLE [grp_execute] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_owner] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_hmafleet]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_genesis]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Service_datawarehouse]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Service_datawarehouse]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Rajesh_HIS62647]
GO
ALTER ROLE [db_owner] ADD MEMBER [mvillar_HIS94466]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mvillar_HIS94466]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mvillar_HIS94466]
GO
ALTER ROLE [grp_execute] ADD MEMBER [merik]
GO
ALTER ROLE [db_datareader] ADD MEMBER [merik]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [merik]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Kswamy_HIS61784]
GO
ALTER ROLE [db_datareader] ADD MEMBER [HIS62797_Komal]
GO
ALTER ROLE [grp_HmaFleet_support] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [db_owner] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [grp_execute] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bharadwaj_HIS61575]
GO
ALTER ROLE [grp_HmaFleet_support] ADD MEMBER [Bhagyashree_HIS64103]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bhagyashree_HIS64103]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Ayisha_HIS62584]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Anjali_HIS62565]
GO
ALTER ROLE [db_owner] ADD MEMBER [Andrew_SA_Login]
GO
/****** Object:  Schema [DWH]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE SCHEMA [DWH]
GO
/****** Object:  Schema [mig]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE SCHEMA [mig]
GO
/****** Object:  UserDefinedFunction [dbo].[CSD]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Convert Date Value to String 
-- =================================================================
CREATE FUNCTION [dbo].[CSD] 
(	
	@value datetime
)
RETURNS varchar(1000)
AS
BEGIN
	RETURN '''' + CONVERT ( varchar , @value , 101) + '''';
END
GO
/****** Object:  UserDefinedFunction [dbo].[CSD2]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Convert Date Value to String 
-- =================================================================
CREATE FUNCTION [dbo].[CSD2] 
(	
	@value datetime
)
RETURNS varchar(8000)
AS
BEGIN
	RETURN ''''+ CONVERT( varchar , @value , 101) + ' 23:59:59.999''';
END
GO
/****** Object:  UserDefinedFunction [dbo].[CSP]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Safe String Value for Pattern Search 
-- =================================================================
CREATE FUNCTION [dbo].[CSP]
(	
	@value varchar(8000)
)
RETURNS varchar(8000)
AS
BEGIN
	RETURN replace(replace(@value, '''', ''''''), '[', '[[]');
END
GO
/****** Object:  UserDefinedFunction [dbo].[CSS]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Safe String Value for Search 
-- =================================================================
CREATE FUNCTION [dbo].[CSS] 
(	
	@value varchar(8000)
)
RETURNS varchar(8000)
AS
BEGIN
	RETURN replace(@value, '''', '''''');
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_StripCharacters]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fn_StripCharacters]
(
    @String NVARCHAR(MAX), 
    @MatchExpression VARCHAR(255)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    SET @MatchExpression =  '%['+@MatchExpression+']%'

    WHILE PatIndex(@MatchExpression, @String) > 0
        SET @String = Stuff(@String, PatIndex(@MatchExpression, @String), 1, '')

    RETURN @String

END
GO
/****** Object:  UserDefinedFunction [dbo].[fnPubSplit]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop function [dbo].[fnPubSplit]
-- =============================================
-- Date: 9/6/2016
-- Author: Eric, MV
-- Description: Get records from splitted string 
-- Return Values: 
--     Return Value = String    : Table Type
-- EXAMPLE: 
-- select * from fnPubSplit ('a,b,c,d,d2', ',')
-- select * from [dbo].[fnPubSplit] ('CA IL NY TX', ' ')
-- =============================================
create FUNCTION [dbo].[fnPubSplit] (@text VARCHAR(MAX), @delimiter VARCHAR(20) = ',')
	RETURNS @Strings TABLE (
		Position INT IDENTITY PRIMARY KEY
		, Value VARCHAR(8000)
	)
AS BEGIN
	DECLARE @index int
	SET @index = -1

	WHILE (LEN(@text) > 0) BEGIN
		SET @index = CHARINDEX(@delimiter , @text)
		IF (@index = 0) AND (LEN(@text) > 0) BEGIN  
			INSERT INTO @Strings VALUES (@text)
			BREAK 
		END 
		IF (@index > 1) BEGIN
			INSERT INTO @Strings VALUES (LEFT(@text, @index - 1))
			SET @text = RIGHT(@text, (LEN(@text) - @index))
		END
		ELSE SET @text = RIGHT(@text, (LEN(@text) - @index))
	END
	RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnToProperCase]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fnToProperCase](@string VARCHAR(255)) RETURNS NVARCHAR(255)
AS
BEGIN
/***=============================================
-- Author:    Alan Porter
-- Create date:  1-2019
-- Parameter: string to convert
-- Description:  HYUNDAI AND GENESIS
-- converts to proper case for consistent display of data
--
-- =============================================***/
  DECLARE @i INT           -- index
  DECLARE @len INT           -- input length
  DECLARE @ckchar NCHAR(1)      -- current char
  DECLARE @isfirstletter INT           -- first letter flag (1/0)
  DECLARE @return NVARCHAR(255)  -- output string
  DECLARE @white NVARCHAR(100)   -- characters considered as white space
  --- 2.0L 4-cyl
  SET @white = '[' + CHAR(13) + CHAR(10) + CHAR(9) + CHAR(160) + ' ' + '-.-0123456789' + ']'
  SET @i = 1
  SET @len = LEN(@string)
  SET @isfirstletter = 1
  SET @return = ''

  WHILE @i <= @len
  BEGIN
    SET @ckchar = SUBSTRING(@string, @i, 1)
    IF @isfirstletter = 1 
		BEGIN
		 SET @return = @return + UPPER(@ckchar)
		 SET @isfirstletter = 0
		END
    ELSE
		BEGIN
		 SET @return = @return + LOWER(@ckchar)
		END

    IF @ckchar LIKE @white SET @isfirstletter = 1

    SET @i = @i + 1
  END

  RETURN @return
END


GO
/****** Object:  UserDefinedFunction [dbo].[IsMatchingPIOBykOrderDT]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 7/28/2014
-- Description:	check to make sure the PIO list from dbo.tbOrderStatus2ForImport matched
-- SELECT dbo.IsMatchingPIOBykOrderDT('LK','37836')
-- =============================================
CREATE  FUNCTION [dbo].[IsMatchingPIOBykOrderDT]
(
	-- Add the parameters for the function here
	@PIO_List varchar(100)
	,@kOrderID int
)
RETURNS bit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RetValue bit=1

	-- Add the T-SQL statements to compute the return value here
	DECLARE @CheckValue as int
	
	IF EXISTS( SELECT	1	  FROM 
						  (SELECT cPIO FROM [dbo].[tbOrderPIO](nolock) WHERE kOrderDT=@kOrderID) P  
						  FULL JOIN dbo.udf_Util_Split(@PIO_List,',') S
						  ON S.Value=P.cPIO
						 WHERE (S.Value is null OR P.cPIO IS NULL)
						 and S.Value<>''
			  )
				AND @PIO_List<>''
			SET @RetValue=0
	-- Return the result of the function
	RETURN @RetValue

END
GO
/****** Object:  UserDefinedFunction [dbo].[SplitAndSelect]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,GEORGE>
-- Create date: <Create Date, 4/1/2014>
-- Description:	<Description,,Testing this function I copied it from StackOverFlow>
-- =============================================
CREATE FUNCTION [dbo].[SplitAndSelect] (
      @InputString                  VARCHAR(8000),
      @Delimiter                    VARCHAR(50)
)

RETURNS @Items TABLE (
      Item                          VARCHAR(8000)
)

AS
BEGIN
      IF @Delimiter = ' '
      BEGIN
            SET @Delimiter = ','
            SET @InputString = REPLACE(@InputString, ' ', @Delimiter)
      END

      IF (@Delimiter IS NULL OR @Delimiter = '')
            SET @Delimiter = ','

--INSERT INTO @Items VALUES (@Delimiter) -- Diagnostic
--INSERT INTO @Items VALUES (@InputString) -- Diagnostic

      DECLARE @Item                 VARCHAR(8000)
      DECLARE @ItemList       VARCHAR(8000)
      DECLARE @DelimIndex     INT

      SET @ItemList = @InputString
      SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      WHILE (@DelimIndex != 0)
      BEGIN
            SET @Item = SUBSTRING(@ItemList, 0, @DelimIndex)
            INSERT INTO @Items VALUES (@Item)

            -- Set @ItemList = @ItemList minus one less item
            SET @ItemList = SUBSTRING(@ItemList, @DelimIndex+1, LEN(@ItemList)-@DelimIndex)
            SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      END -- End WHILE

      IF @Item IS NOT NULL -- At least one delimiter was encountered in @InputString
      BEGIN
            SET @Item = @ItemList
            INSERT INTO @Items VALUES (@Item)
      END

      -- No delimiters were encountered in @InputString, so just return @InputString
      ELSE INSERT INTO @Items VALUES (@InputString)

      RETURN

END -- End Function
GO
/****** Object:  UserDefinedFunction [dbo].[udf_Util_Split]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[udf_Util_Split]
(
	@List varchar(5000),
	@SplitOn varchar(5)
)  
RETURNS @RtnValue table 
(
		
	Id int identity(1,1),
	Value varchar(100)
) 
AS  
BEGIN

While (Charindex(@SplitOn,@List)>0)
 Begin 
  Insert Into @RtnValue (value)
  Select 
    Value = ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1))) 
  Set @List = Substring(@List,Charindex(@SplitOn,@List)+len(@SplitOn),len(@List))
 End 

Insert Into @RtnValue (Value)
    Select Value = ltrim(rtrim(@List))

    Return
END






GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [varchar](60) NULL,
	[sHPwd] [varchar](40) NOT NULL,
	[cType] [varchar](1) NOT NULL,
	[sDisplayName] [varchar](100) NULL,
	[cGroupCode] [varchar](3) NULL,
	[sSecurityQuestion] [nvarchar](100) NULL,
	[sHSecurityAnswer] [varchar](40) NULL,
	[nOrder] [int] NULL,
	[sDeletedLogin] [varchar](50) NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NULL,
	[sConfirmationEmail] [varchar](60) NULL,
	[sFirstName] [varchar](100) NULL,
	[sLastName] [varchar](100) NULL,
	[dtSubuserActivated] [datetime] NULL,
 CONSTRAINT [PK_tbUserNew] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCompany](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cSAP] [varchar](8) NULL,
	[cStatus] [varchar](1) NOT NULL,
	[cDealer] [varchar](20) NULL,
	[sNameFirst] [nvarchar](50) NULL,
	[sNameLast] [nvarchar](50) NULL,
	[sPhone] [varchar](10) NULL,
	[sPhoneExt] [varchar](5) NULL,
	[sFax] [varchar](10) NULL,
	[cCompType] [varchar](3) NULL,
	[sCompName] [varchar](60) NULL,
	[sCompStreet] [varchar](50) NULL,
	[sCompStreet2] [varchar](50) NULL,
	[sCompCity] [varchar](50) NULL,
	[cCompState] [varchar](2) NULL,
	[sCompZip] [varchar](10) NULL,
	[sCompURL] [varchar](100) NULL,
	[sGenFleetType] [varchar](50) NULL,
	[sGenSizeOfFleet] [varchar](50) NULL,
	[sGenVmSedan] [varchar](50) NULL,
	[sGenVmSUV] [varchar](50) NULL,
	[sGenVmOther] [varchar](50) NULL,
	[sGenHmPeriod] [varchar](50) NULL,
	[sGenHmMiles] [varchar](50) NULL,
	[kCreate] [int] NULL,
	[dtCreate] [datetime] NULL,
	[kModify] [int] NULL,
	[dtModify] [datetime] NULL,
	[sConfirmEmail] [varchar](60) NULL,
 CONSTRAINT [PK_tbCompany] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserCompany](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kUser] [int] NOT NULL,
	[kCompany] [int] NOT NULL,
	[nDefault] [bit] NULL,
 CONSTRAINT [PK_tbUserCompany] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserLink](
	[kUser] [int] NOT NULL,
	[kGroup] [int] NOT NULL,
 CONSTRAINT [PK_tbUserLink_1] PRIMARY KEY CLUSTERED 
(
	[kUser] ASC,
	[kGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY],
 CONSTRAINT [IX_tbUserLink_UserGroup] UNIQUE NONCLUSTERED 
(
	[kGroup] ASC,
	[kUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserSTMLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserSTMLink](
	[kUser] [int] NOT NULL,
	[kUserSTM] [int] NOT NULL,
	[nSecVal] [int] NOT NULL,
 CONSTRAINT [PK_tbUserSTMLink] PRIMARY KEY CLUSTERED 
(
	[kUser] ASC,
	[kUserSTM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserSTM]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserSTM](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sKey] [varchar](30) NOT NULL,
	[sDescription] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbUserProfile_1] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY],
 CONSTRAINT [IX_tbUserProfile_sKey] UNIQUE NONCLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_usercompany_info]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_usercompany_info]
AS
SELECT     dbo.tbUser.iRec AS UserId, dbo.tbUser.sLogin, dbo.tbUser.cType, dbo.tbUser.sDisplayName, dbo.tbUser.cGroupCode, dbo.tbUser.nOrder, 
                      dbo.tbCompany.iRec AS CompanyID, dbo.tbCompany.cSAP, dbo.tbCompany.cStatus, dbo.tbCompany.sNameFirst AS CompanyNameFirst, 
                      dbo.tbCompany.sNameLast AS CompanyNameLast, dbo.tbCompany.cDealer, dbo.tbCompany.sCompName, dbo.tbCompany.cCompType, 
                      dbo.tbCompany.sGenFleetType
FROM         dbo.tbCompany INNER JOIN
                      dbo.tbUser ON dbo.tbCompany.iRec = dbo.tbUser.iRec INNER JOIN
                      dbo.tbUserCompany ON dbo.tbCompany.iRec = dbo.tbUserCompany.kCompany AND dbo.tbUser.iRec = dbo.tbUserCompany.kUser INNER JOIN
                      dbo.tbUserLink ON dbo.tbUserCompany.kUser = dbo.tbUserLink.kUser LEFT OUTER JOIN
                      dbo.tbUserSTM ON dbo.tbCompany.iRec = dbo.tbUserSTM.iRec LEFT OUTER JOIN
                      dbo.tbUserSTMLink ON dbo.tbUser.iRec = dbo.tbUserSTMLink.kUser AND dbo.tbUserSTM.iRec = dbo.tbUserSTMLink.kUserSTM
GO
/****** Object:  Table [dbo].[tbVehicleTrim]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehicleTrim](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sName] [varchar](100) NOT NULL,
	[cCode] [varchar](20) NOT NULL,
	[nYear] [int] NOT NULL,
	[sModelName] [varchar](50) NOT NULL,
	[cModelCode] [varchar](20) NOT NULL,
	[cStatus] [varchar](1) NOT NULL,
	[dtModify] [datetime] NOT NULL,
	[cModelGroupCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbVehicleTrim] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY],
 CONSTRAINT [IX_tbVehicleTrim_cCode] UNIQUE NONCLUSTERED 
(
	[cCode] ASC,
	[nYear] ASC,
	[sName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrder](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kFMCCompany] [int] NOT NULL,
	[cFMCDealer] [varchar](20) NULL,
	[cFMCCode] [varchar](20) NULL,
	[sFMCName] [varchar](100) NOT NULL,
	[sFMCStreet] [varchar](50) NOT NULL,
	[sFMCStreet2] [varchar](50) NULL,
	[sFMCCity] [varchar](40) NOT NULL,
	[cFMCState] [varchar](2) NOT NULL,
	[sFMCZip] [varchar](10) NOT NULL,
	[sFMCPhone] [varchar](30) NULL,
	[sFMCFax] [varchar](30) NULL,
	[sFMCContact] [varchar](100) NULL,
	[sFMCEmail] [varchar](60) NOT NULL,
	[kENUCompany] [int] NOT NULL,
	[cENUDealer] [varchar](20) NULL,
	[cENUCode] [varchar](20) NULL,
	[sENUName] [varchar](100) NOT NULL,
	[sENUStreet] [varchar](50) NOT NULL,
	[sENUStreet2] [varchar](50) NULL,
	[sENUCity] [varchar](40) NOT NULL,
	[cENUState] [varchar](2) NOT NULL,
	[cENUZip] [varchar](10) NOT NULL,
	[sENUPhone] [varchar](30) NULL,
	[sENUFax] [varchar](30) NULL,
	[sENUContact] [varchar](200) NULL,
	[sENUEmail] [varchar](60) NULL,
	[sPONo] [varchar](30) NOT NULL,
	[cSalesType] [varchar](1) NOT NULL,
	[cStatus] [varchar](2) NOT NULL,
	[kOrderUser] [int] NOT NULL,
	[dtOrder] [datetime] NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NULL,
	[kAllocateCompany] [int] NOT NULL,
	[cAllocateDealer] [varchar](20) NULL,
	[batchOrderId] [int] NULL,
 CONSTRAINT [PK_tbOrder] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVehicleTrimEquivalent]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehicleTrimEquivalent](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kVehicleTrim] [int] NOT NULL,
	[cCode] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbVehicleTrimEquivalent] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderDT]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderDT](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrderDS] [int] NOT NULL,
	[kVehicleTrim] [int] NOT NULL,
	[cAccy] [varchar](2) NOT NULL,
	[cColorExt] [varchar](3) NOT NULL,
	[cColorInt] [varchar](100) NULL,
	[cPortPDI] [varchar](1) NOT NULL,
	[nQty] [int] NOT NULL,
	[dtReqDelivery] [datetime] NULL,
	[kImport] [int] NULL,
	[sHmaOrderNo] [varchar](20) NULL,
 CONSTRAINT [PK_tbOrderDT] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderDS]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderDS](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrder] [int] NOT NULL,
	[kDropship] [int] NOT NULL,
	[sName] [varchar](50) NOT NULL,
	[sStreet] [varchar](50) NOT NULL,
	[sStreet2] [varchar](50) NULL,
	[sCity] [varchar](40) NOT NULL,
	[cState] [varchar](2) NOT NULL,
	[sZip] [varchar](10) NOT NULL,
	[sPhone] [varchar](30) NULL,
	[sContact] [varchar](50) NULL,
	[sEmail] [varchar](60) NULL,
 CONSTRAINT [PK_tbOrderDropship] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDropship](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cStatus] [varchar](1) NOT NULL,
	[kUser] [int] NOT NULL,
	[cCode] [varchar](20) NULL,
	[sCompanyName] [nvarchar](50) NOT NULL,
	[sContactName] [nvarchar](50) NULL,
	[sCompStreet] [varchar](50) NULL,
	[sCompStreet2] [varchar](50) NULL,
	[sCompCity] [varchar](50) NULL,
	[cCompState] [varchar](2) NULL,
	[sCompZip] [varchar](10) NULL,
	[sPhone] [varchar](20) NULL,
	[sPhone2] [varchar](20) NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NULL,
	[DealerInd] [int] NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[courtesyDealerFlag] [nvarchar](5) NULL,
	[specialInstructions] [varchar](30) NULL,
	[afterHoursDelivery] [varchar](1) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK__tbReqCod__8DBBEBF805D8E0BE] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_VehicleOrderInfo]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* =============================================
 Author:		Nick Nguyen
 Create date: 7/25/2014
 Description:	Return OrderID and vehicleInfo
 SELECT * FROM dbo.vw_VehicleOrderInfo
 Modified: Daniel Lee, 10/18/2017, Add sHmaOrderNo
 =============================================*/
CREATE VIEW [dbo].[vw_VehicleOrderInfo]
AS
SELECT        DS.kOrder AS OrderID, DT.kOrderDS AS DSOrderID, DT.iRec AS DTOrderID, x1.sPONo AS sCustomerPO, x1.cFMCCode, x1.cENUCode, DSM.cCode AS cDropship, 
                         DT.cColorExt AS ExteriorColorCode, REPLACE(SUBSTRING(DT.cColorInt, CHARINDEX('(', DT.cColorInt) + 1, 4), ')', '') AS InteriorColorCode, DT.cAccy, 
                         VT.cModelCode AS VehicleCode, VT.cCode AS Main_ModelCode, VTE.cCode AS ModelCode, VT.nYear AS ModelYear, DT.nQty AS OrderQuantity, 
                         DT.dtReqDelivery AS dtDeliveryWindowFrom, DT.sHmaOrderNo as sHmaOrderNo
FROM            dbo.tbOrder AS x1 WITH (NOLOCK) INNER JOIN
                         dbo.tbOrderDS AS DS WITH (NOLOCK) ON x1.iRec = DS.kOrder INNER JOIN
                         dbo.tbDropship AS DSM WITH (NOLOCK) ON DS.kDropship = DSM.iRec INNER JOIN
                         dbo.tbOrderDT AS DT WITH (NOLOCK) ON DS.iRec = DT.kOrderDS INNER JOIN
                         dbo.tbVehicleTrim AS VT ON VT.iRec = DT.kVehicleTrim INNER JOIN
                         dbo.tbVehicleTrimEquivalent AS VTE ON VT.iRec = VTE.kVehicleTrim AND x1.cStatus NOT IN ('OP', 'CM')


GO
/****** Object:  Table [DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE](
	[ACCESSORY_AVAILABILITY_RULE_ID] [int] NOT NULL,
	[ACCESSORY_CD] [nvarchar](30) NULL,
	[ACCESSORY_GROUP_CD] [nvarchar](30) NULL,
	[ACCESSORY_TYPE_CD] [nvarchar](30) NULL,
	[EFF_FROM_DATE] [datetime] NOT NULL,
	[EFF_TO_DATE] [datetime] NULL,
	[EXTERIOR_COLOR_CD] [nvarchar](30) NULL,
	[INTERIOR_COLOR_CD] [nvarchar](30) NULL,
	[IS_AVAILABLE_FOR_ALLOCATION] [int] NULL,
	[MODEL_CD] [nvarchar](30) NOT NULL,
	[MODEL_YEAR] [int] NOT NULL,
	[REC_CREATE_DATE] [datetime] NULL,
	[REC_UPDATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_ACCESSORY_AVAILABILITY_RULE_ID_FILTER]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[vw_ACCESSORY_AVAILABILITY_RULE_ID_FILTER]
AS 
SELECT [ACCESSORY_AVAILABILITY_RULE_ID]
      ,[ACCESSORY_CD]
      ,[ACCESSORY_GROUP_CD]
      ,[ACCESSORY_TYPE_CD]
      ,[EFF_FROM_DATE]
      ,[EFF_TO_DATE]
      ,[EXTERIOR_COLOR_CD]
      ,[INTERIOR_COLOR_CD]
      ,[IS_AVAILABLE_FOR_ALLOCATION]
      ,[MODEL_CD]
      ,[MODEL_YEAR]
      ,[REC_CREATE_DATE]
      ,[REC_UPDATE_DATE]
  FROM [HMAFleet].[DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE]
  WHERE [ACCESSORY_TYPE_CD] NOT IN('PIO','FIO')
  AND IS_AVAILABLE_FOR_ALLOCATION=1
GO
/****** Object:  UserDefinedFunction [dbo].[RemoveSpecialChars]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Removes special characters from a string value.
-- All characters except 0-9, a-z and A-Z are removed and
-- the remaining characters are returned.
-- Author: Phillip Vu - 02212018
-- Updated: 10/14/2021 Added ascii character to remove period.
create function [dbo].[RemoveSpecialChars] (@s varchar(256)) returns varchar(256)
   with schemabinding
begin
   if @s is null
      return null
   declare @s2 varchar(256)
   set @s2 = ''
   declare @l int
   set @l = len(@s)
   declare @p int
   set @p = 1
   while @p <= @l begin
      declare @c int
      set @c = ascii(substring(@s, @p, 1))
      if @c between 31 and 39 or @c between 43 and 45 or @c between 47 and 57 or @c between 65 and 90 or @c between 97 and 122 
         set @s2 = @s2 + char(@c)
      set @p = @p + 1
      end
   if len(@s2) = 0
      return null
   return @s2
   end
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[SplitString] 
    (
        @str nvarchar(4000), 
        @separator char(1)
    )
    returns table
    AS
    return (
        with tokens(p, a, b) AS (
            select 
                1, 
                1, 
                charindex(@separator, @str)
            union all
            select
                p + 1, 
                b + 1, 
                charindex(@separator, @str, b + 1)
            from tokens
            where b > 0
        )
        select
            p-1 idx,
            substring(
                @str, 
                a, 
                case when b > 0 then b-a ELSE 4000 end) 
            AS s
        from tokens
      )
GO
/****** Object:  Table [dbo].[_ORDER]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ORDER](
	[Region] [nvarchar](255) NULL,
	[FMC FIN] [nvarchar](255) NULL,
	[Company Name] [nvarchar](255) NULL,
	[End User] [nvarchar](255) NULL,
	[End User Name] [nvarchar](255) NULL,
	[Dealer] [nvarchar](255) NULL,
	[Dealer Name] [nvarchar](255) NULL,
	[CS Sale type] [nvarchar](255) NULL,
	[Model Year] [float] NULL,
	[Series] [float] NULL,
	[Model Code] [nvarchar](255) NULL,
	[Acc#Code] [nvarchar](255) NULL,
	[ExClr] [nvarchar](255) NULL,
	[InClr] [nvarchar](255) NULL,
	[PIOs] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[Dropship] [nvarchar](255) NULL,
	[Order No] [nvarchar](255) NULL,
	[Customer PO No#] [nvarchar](255) NULL,
	[Deliver From] [datetime] NULL,
	[Order Date] [datetime] NULL,
	[CAP1] [nvarchar](255) NULL,
	[CAP2] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Order Qty] [float] NULL,
	[Vehicle Allocated] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP](
	[ACCESSORY_AVAILABILITY_RULE_ID] [int] NOT NULL,
	[ACCESSORY_CD] [nvarchar](30) NULL,
	[ACCESSORY_GROUP_CD] [nvarchar](30) NULL,
	[ACCESSORY_TYPE_CD] [nvarchar](30) NULL,
	[EFF_FROM_DATE] [datetime] NOT NULL,
	[EFF_TO_DATE] [datetime] NULL,
	[EXTERIOR_COLOR_CD] [nvarchar](30) NULL,
	[INTERIOR_COLOR_CD] [nvarchar](30) NULL,
	[IS_AVAILABLE_FOR_ALLOCATION] [int] NULL,
	[MODEL_CD] [nvarchar](30) NOT NULL,
	[MODEL_YEAR] [int] NOT NULL,
	[REC_CREATE_DATE] [datetime] NULL,
	[REC_UPDATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelColorDescInvAvailFromEDW]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelColorDescInvAvailFromEDW](
	[ModelColorDescriptionId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Series] [varchar](1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[ModelCode] [varchar](10) NOT NULL,
	[InteriorColorCode] [varchar](5) NOT NULL,
	[ExteriorColorCode] [varchar](5) NOT NULL,
	[InteriorColorShortDesc] [varchar](10) NULL,
	[ExteriorColorShortDesc] [varchar](10) NULL,
	[InteriorColorLongDesc] [varchar](40) NULL,
	[ExteriorColorLongDesc] [varchar](40) NULL,
	[SeatColorDesc] [varchar](60) NULL,
	[ISINVENTORYAVAILABLE] [bit] NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[LastTransferredDate] [datetime] NULL,
 CONSTRAINT [PK_ModelColorDesc] PRIMARY KEY CLUSTERED 
(
	[ModelColorDescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Manual]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Manual](
	[Hyundai FIN Code] [nvarchar](255) NULL,
	[ Dealer Code] [nvarchar](255) NULL,
	[End User FIN] [nvarchar](255) NULL,
	[End User's Purchase  Order #] [nvarchar](255) NULL,
	[AGENCY / COMPANY] [nvarchar](255) NULL,
	[Port PDI Y/N] [nvarchar](255) NULL,
	[Model Year(YYYY)] [float] NULL,
	[Model Code (8 Bytes)] [nvarchar](255) NULL,
	[Accy Code (2Bytes)] [nvarchar](255) NULL,
	[Ext Color Code] [nvarchar](255) NULL,
	[Int Color Code] [nvarchar](255) NULL,
	[PIO 1] [nvarchar](255) NULL,
	[PIO 2] [nvarchar](255) NULL,
	[PIO 3] [nvarchar](255) NULL,
	[PIO 4] [nvarchar](255) NULL,
	[Volume] [float] NULL,
	[Drop Ship Code] [nvarchar](255) NULL,
	[From (YYYYMMDD) 1st or 16th] [nvarchar](255) NULL,
	[To (YYYYMMDD) 15th or last day of the month] [nvarchar](255) NULL,
	[Sales Type] [nvarchar](255) NULL,
	[Additional PIO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PIO_ExclusiveRules_newupdateadData]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIO_ExclusiveRules_newupdateadData](
	[Company Code] [nvarchar](255) NULL,
	[Model Year] [nvarchar](255) NULL,
	[Series] [nvarchar](255) NULL,
	[Model Code] [nvarchar](255) NULL,
	[Accessory Group] [nvarchar](255) NULL,
	[Accessory code] [nvarchar](255) NULL,
	[Exclusive Accessory Code] [nvarchar](255) NULL,
	[CreatedName] [nvarchar](255) NULL,
	[CreatedDateOnly] [datetime] NULL,
	[CreatedTimeOnly] [datetime] NULL,
	[ModifiedName] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[Customer PO No#] [nvarchar](255) NULL,
	[Order No] [nvarchar](255) NULL,
	[Fleet Account No#] [nvarchar](255) NULL,
	[End User] [nvarchar](255) NULL,
	[Model Year] [nvarchar](255) NULL,
	[Model Code] [nvarchar](255) NULL,
	[Ship-to] [nvarchar](255) NULL,
	[Accessory Group] [nvarchar](255) NULL,
	[Emission] [nvarchar](255) NULL,
	[Fleet Deal No#] [nvarchar](255) NULL,
	[PO Item No#] [float] NULL,
	[Customer] [nvarchar](255) NULL,
	[PO Date] [datetime] NULL,
	[Deliver From] [datetime] NULL,
	[Delivery To] [datetime] NULL,
	[PIO] [nvarchar](255) NULL,
	[PIO1] [nvarchar](255) NULL,
	[PIO2] [nvarchar](255) NULL,
	[PIO3] [nvarchar](255) NULL,
	[PIO4] [nvarchar](255) NULL,
	[Ext#Col] [nvarchar](255) NULL,
	[Quantity 1] [float] NULL,
	[Ext#Col1] [nvarchar](255) NULL,
	[Quantity 2] [float] NULL,
	[Ext#Col2] [nvarchar](255) NULL,
	[Quantity 3] [float] NULL,
	[Ext#Col3] [nvarchar](255) NULL,
	[Quantity 4] [float] NULL,
	[Ext#Col4] [nvarchar](255) NULL,
	[Quantity 5] [float] NULL,
	[Order Quantity] [float] NULL,
	[Commit Quantity] [float] NULL,
	[St] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[PO Process Status] [nvarchar](255) NULL,
	[Fleet Flag] [nvarchar](255) NULL,
	[BUn] [nvarchar](255) NULL,
	[PIO5] [nvarchar](255) NULL,
	[PIO6] [nvarchar](255) NULL,
	[PIO7] [nvarchar](255) NULL,
	[PIO8] [nvarchar](255) NULL,
	[PIO9] [nvarchar](255) NULL,
	[PIO10] [nvarchar](255) NULL,
	[PIO11] [nvarchar](255) NULL,
	[PIO12] [nvarchar](255) NULL,
	[PIO13] [nvarchar](255) NULL,
	[PIO14] [nvarchar](255) NULL,
	[PIO15] [nvarchar](255) NULL,
	[PIO16] [nvarchar](255) NULL,
	[PIO17] [nvarchar](255) NULL,
	[PIO18] [nvarchar](255) NULL,
	[PIO19] [nvarchar](255) NULL,
	[PIO20] [nvarchar](255) NULL,
	[PIO21] [nvarchar](255) NULL,
	[PIO22] [nvarchar](255) NULL,
	[PIO23] [nvarchar](255) NULL,
	[PIO24] [nvarchar](255) NULL,
	[PIO25] [nvarchar](255) NULL,
	[PIO26] [nvarchar](255) NULL,
	[PIO27] [nvarchar](255) NULL,
	[PIO28] [nvarchar](255) NULL,
	[PIO29] [nvarchar](255) NULL,
	[Int#Col] [nvarchar](255) NULL,
	[Int#Col1] [nvarchar](255) NULL,
	[Int#Col2] [nvarchar](255) NULL,
	[Int#Col3] [nvarchar](255) NULL,
	[Int#Col4] [nvarchar](255) NULL,
	[End Cust#] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Custom Deal Number] [nvarchar](255) NULL,
	[Custom Deal Number1] [nvarchar](255) NULL,
	[CS Sale type] [nvarchar](255) NULL,
	[X : Qualifiers] [nvarchar](255) NULL,
	[CS Order status] [nvarchar](255) NULL,
	[Order Bank Document No#] [nvarchar](255) NULL,
	[Created by] [nvarchar](255) NULL,
	[Created on] [datetime] NULL,
	[Time] [datetime] NULL,
	[Changed by] [nvarchar](255) NULL,
	[Chngd on] [datetime] NULL,
	[TimeOfChng] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCompanyDropshipLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCompanyDropshipLink](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kCompany] [int] NOT NULL,
	[kDropship] [int] NOT NULL,
	[cStatus] [varchar](1) NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NOT NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NOT NULL,
 CONSTRAINT [PK_tbCompanyDropshipLink] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCompanyFmcEnuLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCompanyFmcEnuLink](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kCompanyFMC] [int] NOT NULL,
	[kCompanyENU] [int] NOT NULL,
	[sLoginENU] [varchar](60) NULL,
	[cStatus] [varchar](1) NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NOT NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NOT NULL,
 CONSTRAINT [PK_tbCompanyFmcEnuLink] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbContactUs]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbContactUs](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cFinCode] [varchar](20) NULL,
	[sFirstName] [nvarchar](50) NOT NULL,
	[sLastName] [nvarchar](50) NOT NULL,
	[sPhone] [varchar](10) NOT NULL,
	[sEmailAddress] [varchar](100) NOT NULL,
	[sMessage] [nvarchar](4000) NULL,
	[kCreate] [int] NULL,
	[dtCreate] [datetime] NULL,
 CONSTRAINT [PK__tbContac__8DBBEBF86FE99F9F] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbContent]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbContent](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sDesc] [nvarchar](1000) NULL,
	[sUrl] [varchar](300) NULL,
	[sLink] [varchar](500) NULL,
	[nOrder] [int] NOT NULL,
 CONSTRAINT [PK_tbContent] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDatafile]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDatafile](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sFilename] [nvarchar](500) NOT NULL,
	[sContentType] [varchar](100) NOT NULL,
	[tsRec] [datetime] NOT NULL,
	[kUser] [int] NOT NULL,
	[nSize] [bigint] NOT NULL,
	[sMD5] [varchar](40) NULL,
 CONSTRAINT [PK_tbDatafile] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDatafileLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDatafileLink](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kDatafile] [int] NOT NULL,
	[cTable] [varchar](20) NOT NULL,
	[kLink] [int] NOT NULL,
	[nOrder] [int] NOT NULL,
	[nPrimary] [tinyint] NOT NULL,
	[tsRec] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDelConfirm]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDelConfirm](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kUser] [int] NULL,
	[cDealer] [varchar](20) NULL,
	[sDealerName] [varchar](100) NULL,
	[sStreet] [varchar](50) NULL,
	[sStreet2] [varchar](50) NULL,
	[sCity] [varchar](50) NULL,
	[cState] [varchar](2) NULL,
	[sZip] [varchar](10) NULL,
	[sContact] [nvarchar](100) NULL,
	[sPhone] [varchar](10) NULL,
	[sPhoneExt] [varchar](5) NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
 CONSTRAINT [PK_tbDelConfirm] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDelConfirmItem]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDelConfirmItem](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kDelConfirm] [int] NOT NULL,
	[nYear] [int] NOT NULL,
	[cModel] [varchar](1) NOT NULL,
	[sVIN] [varchar](17) NOT NULL,
	[dtDelDate] [datetime] NULL,
	[nMileage] [int] NOT NULL,
 CONSTRAINT [PK_tbDelConfirmItem] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDropshipWorkingHour]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDropshipWorkingHour](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kDropship] [int] NOT NULL,
	[dayOfWeek] [int] NOT NULL,
	[openTime] [varchar](10) NULL,
	[closeTime] [varchar](10) NULL,
 CONSTRAINT [PK_tbDropshipWorkingHour] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEmailQueue]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEmailQueue](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cTable] [varchar](20) NOT NULL,
	[kLink] [int] NULL,
	[cType] [varchar](2) NULL,
	[cStatus] [varchar](2) NULL,
	[dtStatus] [datetime] NULL,
	[kCreate] [int] NULL,
	[dtCreate] [datetime] NULL,
 CONSTRAINT [PK_tbEmailQueue] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbExceptionPackage]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbExceptionPackage](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kVehicleTrim] [int] NULL,
	[cExtClr] [varchar](20) NULL,
	[cIntClr] [varchar](20) NULL,
	[sAvailablePackages] [varchar](100) NOT NULL,
	[sMessage] [varchar](500) NULL,
 CONSTRAINT [PK_tbExceptionPackage] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFlag]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFlag](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cType] [varchar](1) NOT NULL,
	[cTable] [varchar](20) NOT NULL,
	[kLink] [int] NOT NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
 CONSTRAINT [PK_tbFlag] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbImportHistory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbImportHistory](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kUser] [int] NOT NULL,
	[cType] [varchar](20) NULL,
	[tsRec] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[ErrorMsg] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbImportHistory] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbIncentive]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbIncentive](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cModelCode] [varchar](1) NOT NULL,
	[nModelYear] [int] NOT NULL,
	[cStatus] [varchar](1) NOT NULL,
	[cAdminOrderStatus] [varchar](1) NULL,
	[cyIncentive] [decimal](10, 4) NULL,
	[dtSOP] [datetime] NULL,
	[dtFinalOrder] [datetime] NULL,
	[kCreate] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
	[kModify] [int] NOT NULL,
	[dtModify] [datetime] NULL,
	[cModelName] [varchar](50) NOT NULL,
	[cMasterStatusOverride] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tbIncentive] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderDTBatch]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderDTBatch](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[poNo] [varchar](30) NULL,
	[salesType] [varchar](1) NULL,
	[fmcUser] [varchar](20) NULL,
	[enuUser] [varchar](20) NULL,
	[dropshipCode] [varchar](20) NULL,
	[modelYear] [int] NULL,
	[modelCode] [varchar](20) NULL,
	[packageCode] [varchar](2) NULL,
	[exteriorColorCode] [varchar](3) NULL,
	[interiorColorCode] [varchar](20) NULL,
	[portPDI] [varchar](1) NULL,
	[quantity] [int] NULL,
	[requestDeliveryDate] [datetime] NULL,
	[pio1] [varchar](10) NULL,
	[pio2] [varchar](10) NULL,
	[pio3] [varchar](10) NULL,
	[pio4] [varchar](10) NULL,
	[pio5] [varchar](10) NULL,
	[pio6] [varchar](10) NULL,
	[pio7] [varchar](10) NULL,
	[pio8] [varchar](10) NULL,
	[pio9] [varchar](10) NULL,
	[pio10] [varchar](10) NULL,
	[kDataFile] [int] NOT NULL,
	[errorFlag] [bit] NOT NULL,
	[errorMessage] [varchar](200) NULL,
	[errorColumn] [varchar](50) NULL,
	[createDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderItemDeleted]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderItemDeleted](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrder] [int] NOT NULL,
	[cStatus] [varchar](1) NULL,
	[cFMCCode] [varchar](20) NOT NULL,
	[sFMCName] [varchar](100) NULL,
	[cFMCDealer] [varchar](20) NOT NULL,
	[cENUCode] [varchar](20) NOT NULL,
	[sENUName] [varchar](100) NULL,
	[sPONo] [varchar](30) NOT NULL,
	[cSalesType] [varchar](1) NOT NULL,
	[cDropship] [varchar](20) NOT NULL,
	[nModelYear] [int] NOT NULL,
	[sHmaOrderNo] [varchar](20) NOT NULL,
	[sVehicle] [varchar](100) NULL,
	[cVehiceTrim] [varchar](20) NOT NULL,
	[cPortPDI] [varchar](1) NOT NULL,
	[cPackage] [varchar](20) NOT NULL,
	[cExterior] [varchar](20) NOT NULL,
	[cInterior] [varchar](20) NOT NULL,
	[sPIOs] [varchar](100) NULL,
	[nQty] [int] NOT NULL,
	[dtReqDeliveryFrom] [datetime] NOT NULL,
	[dtReqDeliveryTo] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderPIO]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderPIO](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrderDT] [int] NOT NULL,
	[cPIO] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbOrderPIO] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderStatus1]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderStatus1](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kImportHistory] [int] NOT NULL,
	[cFMCCode] [varchar](10) NULL,
	[cENUCode] [varchar](10) NULL,
	[sVIN] [varchar](30) NULL,
	[nVehYear] [int] NULL,
	[sVehDesc] [varchar](250) NULL,
	[sTrimDesc] [varchar](250) NULL,
	[sVehCode] [varchar](30) NULL,
	[cAccy] [varchar](5) NULL,
	[cExtClr] [varchar](5) NULL,
	[cIntClr] [varchar](5) NULL,
	[cStatus] [varchar](10) NULL,
	[sStatusDesc] [varchar](500) NULL,
	[cPrimaryStatus] [varchar](10) NULL,
	[cPrimaryStatusDesc] [varchar](500) NULL,
	[cSecondaryStatus] [varchar](10) NULL,
	[cSecondaryStatusDesc] [varchar](500) NULL,
	[cRegion] [varchar](10) NULL,
	[sRegionDesc] [varchar](250) NULL,
	[cCustomer] [varchar](30) NULL,
	[cDropship] [varchar](10) NULL,
	[cPort] [varchar](10) NULL,
	[sPortDesc] [varchar](250) NULL,
	[sEngine] [varchar](30) NULL,
	[sKeynoDoor] [varchar](30) NULL,
	[sKeynoIngition] [varchar](30) NULL,
	[sKeynoTrunk] [varchar](30) NULL,
	[cEsnRadio] [varchar](30) NULL,
	[dtProduction] [datetime] NULL,
	[dtBodyLine] [datetime] NULL,
	[dtPaintLine] [datetime] NULL,
	[dtTrimLine] [datetime] NULL,
	[dtEstimateBody] [datetime] NULL,
	[dtCursoryInspection] [datetime] NULL,
	[dtUnderbodyCoating] [datetime] NULL,
	[dtAccptanceInspection] [datetime] NULL,
	[dtFinalInspection] [datetime] NULL,
	[dtManfestReceive] [datetime] NULL,
	[dtUrgency] [datetime] NULL,
	[dtShipping] [datetime] NULL,
	[dtETA] [datetime] NULL,
	[sInternalVIN] [varchar](30) NULL,
 CONSTRAINT [PK_tbOrderRawStatus1] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderStatus1ForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderStatus1ForImport](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kImportHistory] [int] NOT NULL,
	[cFMCCode] [varchar](10) NULL,
	[cENUCode] [varchar](10) NULL,
	[sVIN] [varchar](30) NULL,
	[nVehYear] [int] NULL,
	[sVehCode] [varchar](30) NULL,
	[sVehDesc] [varchar](250) NULL,
	[sTrimDesc] [varchar](250) NULL,
	[cAccy] [varchar](5) NULL,
	[cExtClr] [varchar](5) NULL,
	[cIntClr] [varchar](5) NULL,
	[cStatus] [varchar](10) NULL,
	[sStatusDesc] [varchar](500) NULL,
	[cPrimaryStatus] [varchar](10) NULL,
	[cPrimaryStatusDesc] [varchar](500) NULL,
	[cSecondaryStatus] [varchar](10) NULL,
	[cSecondaryStatusDesc] [varchar](500) NULL,
	[cRegion] [varchar](10) NULL,
	[sRegionDesc] [varchar](250) NULL,
	[cCustomer] [varchar](30) NULL,
	[cDropship] [varchar](10) NULL,
	[cPort] [varchar](10) NULL,
	[sPortDesc] [varchar](250) NULL,
	[sEngine] [varchar](30) NULL,
	[sKeynoDoor] [varchar](30) NULL,
	[sKeynoIngition] [varchar](30) NULL,
	[sKeynoTrunk] [varchar](30) NULL,
	[cEsnRadio] [varchar](30) NULL,
	[dtProduction] [datetime] NULL,
	[dtBodyLine] [datetime] NULL,
	[dtPaintLine] [datetime] NULL,
	[dtTrimLine] [datetime] NULL,
	[dtEstimateBody] [datetime] NULL,
	[dtCursoryInspection] [datetime] NULL,
	[dtUnderbodyCoating] [datetime] NULL,
	[dtAccptanceInspection] [datetime] NULL,
	[dtFinalInspection] [datetime] NULL,
	[dtManfestReceive] [datetime] NULL,
	[dtUrgency] [datetime] NULL,
	[dtShipping] [datetime] NULL,
	[dtETA] [datetime] NULL,
	[sInternalVIN] [varchar](30) NULL,
 CONSTRAINT [PK_tbOrderStatus1Import] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderStatus2]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderStatus2](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrderDT] [int] NOT NULL,
	[kImportHistory] [int] NULL,
	[sVIN] [varchar](30) NULL,
	[nVehYear] [int] NULL,
	[sVehCode] [varchar](30) NULL,
	[cAccy] [varchar](5) NULL,
	[cExtClr] [varchar](5) NULL,
	[cIntClr] [varchar](5) NULL,
	[cDropship] [varchar](10) NULL,
	[cDropshipState] [varchar](10) NULL,
	[cPort] [varchar](10) NULL,
	[sHMAOrderNo] [varchar](30) NULL,
	[sCustomerPO] [varchar](30) NULL,
	[cENUCode] [varchar](10) NULL,
	[sENUName] [varchar](100) NULL,
	[cFMCCode] [varchar](10) NULL,
	[sFMCName] [varchar](100) NULL,
	[sDealerCode] [varchar](30) NULL,
	[sDealerName] [varchar](100) NULL,
	[dtVesselETA] [datetime] NULL,
	[sAllPIO] [varchar](100) NULL,
	[dtAllocate] [datetime] NULL,
	[dtDeliveryWindowFrom] [datetime] NULL,
	[dtTenderDate] [datetime] NULL,
	[dtInTransit] [datetime] NULL,
	[dtAcesDeliveryDate] [datetime] NULL,
	[dtWholesale] [datetime] NULL,
	[dtRDR] [datetime] NULL,
	[dtCoutesyDelivery] [datetime] NULL,
	[sInvNo] [varchar](30) NULL,
	[cyInvoice] [decimal](20, 4) NULL,
	[cyStreetInventive] [decimal](20, 4) NULL,
	[cyCommercialInvoice] [decimal](20, 4) NULL,
	[dtCashDraft] [datetime] NULL,
	[dtOrderCreate] [datetime] NULL,
	[kOrderDS] [int] NULL,
	[kOrder] [int] NULL,
	[sInternalVIN] [varchar](30) NULL,
 CONSTRAINT [PK_tbOrderRawStatus2] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderStatus2ForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderStatus2ForImport](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kOrderDT] [int] NOT NULL,
	[kImportHistory] [int] NOT NULL,
	[sVIN] [varchar](30) NULL,
	[nVehYear] [int] NULL,
	[sVehCode] [varchar](30) NULL,
	[cAccy] [varchar](5) NULL,
	[cExtClr] [varchar](5) NULL,
	[cIntClr] [varchar](5) NULL,
	[cDropship] [varchar](10) NULL,
	[cDropshipState] [varchar](10) NULL,
	[cPort] [varchar](10) NULL,
	[sHMAOrderNo] [varchar](30) NULL,
	[sCustomerPO] [varchar](30) NULL,
	[cENUCode] [varchar](10) NULL,
	[sENUName] [varchar](100) NULL,
	[cFMCCode] [varchar](10) NULL,
	[sFMCName] [varchar](100) NULL,
	[sDealerCode] [varchar](30) NULL,
	[sDealerName] [varchar](100) NULL,
	[dtVesselETA] [datetime] NULL,
	[sAllPIO] [varchar](100) NULL,
	[dtAllocate] [datetime] NULL,
	[dtDeliveryWindowFrom] [datetime] NULL,
	[dtTenderDate] [datetime] NULL,
	[dtInTransit] [datetime] NULL,
	[dtAcesDeliveryDate] [datetime] NULL,
	[dtWholesale] [datetime] NULL,
	[dtRDR] [datetime] NULL,
	[dtCoutesyDelivery] [datetime] NULL,
	[sInvNo] [varchar](30) NULL,
	[cyInvoice] [decimal](20, 4) NULL,
	[cyStreetInventive] [decimal](20, 4) NULL,
	[cyCommercialInvoice] [decimal](20, 4) NULL,
	[dtCashDraft] [datetime] NULL,
	[dtOrderCreate] [datetime] NULL,
	[kOrderDS] [int] NULL,
	[kOrder] [int] NULL,
	[sInternalVIN] [varchar](30) NULL,
 CONSTRAINT [PK_tbOrderStatus2ForImport] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOrderStatusChangeHistory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderStatusChangeHistory](
	[OrderHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[PreviousStatus] [varchar](5) NOT NULL,
	[CurrentStatus] [varchar](5) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbResetPwd]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbResetPwd](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sTID] [varchar](36) NOT NULL,
	[kUser] [int] NOT NULL,
	[dtCreate] [datetime] NULL,
	[dtComplete] [datetime] NULL,
 CONSTRAINT [PK_tbResetPwd] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSetting]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSetting](
	[cKey] [varchar](100) NOT NULL,
	[sName] [nvarchar](60) NULL,
	[sDesc] [nvarchar](1000) NULL,
	[sValue] [nvarchar](3000) NULL,
 CONSTRAINT [PK_tbSetting] PRIMARY KEY CLUSTERED 
(
	[cKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTemp_VIN_FEED_GOOD]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTemp_VIN_FEED_GOOD](
	[VIN] [varchar](17) NULL,
	[REC_UPDATE_DATE] [datetime] NOT NULL,
	[INTERNAL_VIN] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserLoginLock]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserLoginLock](
	[userHitId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](255) NULL,
	[userHitDatetime] [datetime] NULL,
	[userHitIsLock] [int] NULL,
	[userHitIsLockDatetime] [datetime] NULL,
	[loginSuccess] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userHitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUserSubUserLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserSubUserLink](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[kUser] [int] NOT NULL,
	[kSubUser] [int] NOT NULL,
 CONSTRAINT [PK_tbUserSubUserLink] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVehicleTrimForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehicleTrimForImport](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[sName] [varchar](100) NOT NULL,
	[cCode] [varchar](20) NOT NULL,
	[nYear] [int] NOT NULL,
	[sModelName] [varchar](50) NOT NULL,
	[cModelCode] [varchar](20) NOT NULL,
	[cStatus] [varchar](1) NOT NULL,
	[cCodeEquivalents] [varchar](500) NULL,
	[cModelGroupCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbVehicleTrimForImport] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVehicleXCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehicleXCode](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cTable] [varchar](20) NOT NULL,
	[cCode] [varchar](100) NULL,
	[cSAP] [varchar](20) NOT NULL,
	[sDesc] [nvarchar](500) NULL,
	[kVehicleTrim] [int] NULL,
	[kVehicleTrimEquivalent] [int] NULL,
	[kVehicleXCode] [int] NOT NULL,
	[nOrder] [int] NOT NULL,
	[cStatus] [varchar](1) NOT NULL,
	[dtModify] [datetime] NOT NULL,
	[kVehicleXCodeIntClr] [int] NOT NULL,
	[kVehicleXCodePackage] [int] NOT NULL,
 CONSTRAINT [PK_tbVehicleXCode] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY],
 CONSTRAINT [UK_tbVehicleXCode] UNIQUE NONCLUSTERED 
(
	[cTable] ASC,
	[cCode] ASC,
	[kVehicleTrim] ASC,
	[kVehicleTrimEquivalent] ASC,
	[kVehicleXCode] ASC,
	[kVehicleXCodeIntClr] ASC,
	[kVehicleXCodePackage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVehicleXCodeForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehicleXCodeForImport](
	[iRec] [int] IDENTITY(1,1) NOT NULL,
	[cTable] [varchar](20) NOT NULL,
	[cCode] [varchar](100) NOT NULL,
	[cCodeRaw] [varchar](50) NULL,
	[cSAP] [varchar](20) NULL,
	[cStatus] [varchar](1) NOT NULL,
	[sDesc] [nvarchar](500) NULL,
	[cLinkVehicleTrim] [varchar](20) NULL,
	[nLinkVehiceYear] [int] NULL,
	[cLinkVehicleXCode] [varchar](50) NULL,
	[nOrder] [int] NOT NULL,
	[cLinkVehicleXCodeIntClr] [varchar](50) NULL,
	[cLinkVehicleXCodePackage] [varchar](50) NULL,
 CONSTRAINT [PK_tbVehicleXCodeForImport] PRIMARY KEY CLUSTERED 
(
	[iRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbXCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbXCode](
	[cTable] [varchar](20) NOT NULL,
	[cCode] [varchar](50) NOT NULL,
	[sDesc] [nvarchar](500) NULL,
	[nOrder] [int] NOT NULL,
	[dtModify] [datetime] NOT NULL,
 CONSTRAINT [PK_tbXCode] PRIMARY KEY CLUSTERED 
(
	[cTable] ASC,
	[cCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_WebSiteData]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_WebSiteData](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](255) NULL,
	[FMC FIN] [nvarchar](255) NULL,
	[Company Name] [nvarchar](255) NULL,
	[End User] [nvarchar](255) NULL,
	[End User Name] [nvarchar](255) NULL,
	[Dealer] [nvarchar](255) NULL,
	[Dealer Name] [nvarchar](255) NULL,
	[CS Sale type] [nvarchar](255) NULL,
	[Model Year] [nvarchar](255) NULL,
	[Series] [nvarchar](255) NULL,
	[Model Code] [nvarchar](255) NULL,
	[Acc#Code] [nvarchar](255) NULL,
	[ExClr] [nvarchar](255) NULL,
	[InClr] [nvarchar](255) NULL,
	[PIOs] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[Dropship] [nvarchar](255) NULL,
	[Order No] [nvarchar](255) NULL,
	[Customer PO No#] [nvarchar](255) NULL,
	[Deliver From] [datetime] NULL,
	[Order Date] [datetime] NULL,
	[CAP1] [nvarchar](255) NULL,
	[CAP2] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Order Qty] [float] NULL,
	[Vehicle Allocated] [float] NULL,
	[isDuplicated] [bit] NULL,
	[ComKey]  AS (([FMC FIN]+[End User])+rtrim([Customer PO No#])),
	[SecondComp]  AS (CONVERT([varchar](20),[Order Date],(0))+[CS Sale type])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehAccAvailable]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehAccAvailable](
	[VehAccAvailableId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelAccCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[YrModelPkgCd] [nvarchar](30) NOT NULL,
	[PackageCd] [nvarchar](30) NULL,
	[AccessoryCd] [nvarchar](30) NULL,
	[FactoryOrPort] [nvarchar](30) NULL,
	[IsAvailable] [tinyint] NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
	[ExtColorCd] [nvarchar](30) NULL,
	[IntColorCd] [nvarchar](30) NULL,
 CONSTRAINT [PK_VehAccAvailable] PRIMARY KEY CLUSTERED 
(
	[VehAccAvailableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehAccessory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehAccessory](
	[VehAccessoryId]  AS ((ltrim(str([ModelYear]))+[SAPModelCd])+[AccessoryCd]),
	[ModelYear] [int] NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[YrModelAccCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[AccessoryCd] [nvarchar](30) NOT NULL,
	[AccessoryNm] [nvarchar](255) NULL,
	[AccessoryDesc] [nvarchar](255) NULL,
	[MSRP] [money] NULL,
	[InvoicePrice] [money] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[VideoURL] [nvarchar](255) NULL,
	[ShowOrder] [int] NULL,
	[IsVisible] [tinyint] NULL,
	[AccessoryType] [nvarchar](30) NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[TrimCd] [nvarchar](30) NOT NULL,
	[EffFromDt] [datetime] NULL,
	[EffToDt] [datetime] NULL,
	[IsPackage] [tinyint] NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_VehAccessory] PRIMARY KEY CLUSTERED 
(
	[YrModelAccCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehCategory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehCategory](
	[VehCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryNm] [nvarchar](255) NULL,
	[CategoryDesc] [nvarchar](255) NULL,
	[ImageURL] [nvarchar](255) NULL,
	[ShowOrder] [int] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[YrSerCd] [nvarchar](5) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[SeriesCd] [nvarchar](30) NULL,
	[SAPModelCd] [nvarchar](30) NULL,
 CONSTRAINT [PK_VehCategory] PRIMARY KEY CLUSTERED 
(
	[VehCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehColorExt]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehColorExt](
	[VehColorExtId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelExtCd] [nvarchar](30) NOT NULL,
	[YrSerCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[ExtColorCd] [nvarchar](30) NOT NULL,
	[ExtColorShortDesc] [nvarchar](255) NULL,
	[ExtColorLongDesc] [nvarchar](255) NULL,
	[ExtHexColor] [nvarchar](50) NULL,
	[ExtImageURL] [nvarchar](255) NULL,
	[IsPoActive] [tinyint] NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[IsDefaultColor] [tinyint] NULL,
	[IsVisible] [int] NULL,
 CONSTRAINT [PK_VehColorExt] PRIMARY KEY CLUSTERED 
(
	[YrModelExtCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehColorInt]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehColorInt](
	[VehColorIntId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelIntCd] [nvarchar](30) NOT NULL,
	[YrSerCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[IntColorCd] [nvarchar](30) NOT NULL,
	[IntColorShortDesc] [nvarchar](255) NULL,
	[IntHexColor] [nvarchar](50) NULL,
	[IntColorLongDesc] [nvarchar](255) NULL,
	[IntImageURL] [nvarchar](255) NULL,
	[IsPoActive] [tinyint] NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[IsDefaultColor] [tinyint] NULL,
	[IsVisible] [int] NULL,
	[ExtColorCd] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehColorSeat]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehColorSeat](
	[VehColorSeatId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelSeatCd] [nvarchar](50) NOT NULL,
	[YrSerCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[SeatColorCd] [nvarchar](30) NOT NULL,
	[SeatColorDesc] [nvarchar](255) NULL,
	[SeatHexColor] [nvarchar](50) NULL,
	[SeatColorLongDesc] [nvarchar](255) NULL,
	[SeatImageURL] [nvarchar](255) NULL,
	[IsPoActive] [tinyint] NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[IsDefaultColor] [tinyint] NULL,
	[IsVisible] [int] NULL,
 CONSTRAINT [PK_VehColorSeat] PRIMARY KEY CLUSTERED 
(
	[YrModelSeatCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehModel]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehModel](
	[VehModelId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrSerCd] [nvarchar](5) NOT NULL,
	[ModelDesc] [nvarchar](255) NULL,
	[IsDefault] [tinyint] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[VideoURL] [nvarchar](255) NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[VehCategoryId] [int] NULL,
	[ShowOrder] [int] NULL,
	[IsVisibleHyundai] [tinyint] NULL,
	[IsVisibleGenesis] [tinyint] NULL,
	[IsVisibleDotCom] [tinyint] NULL,
	[IsVisibleFleet] [tinyint] NULL,
	[IsVisibleCircle] [tinyint] NULL,
	[IsVisibleCPO] [tinyint] NULL,
	[IsVisibleDev] [tinyint] NULL,
	[IsVisibleAEM] [tinyint] NULL,
	[IsVisibleTier2] [tinyint] NULL,
	[IsVisibleTier3] [tinyint] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_VehModel] PRIMARY KEY CLUSTERED 
(
	[YrSerCd] ASC,
	[ModelGroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehModelGroupModelCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehModelGroupModelCode](
	[YrSerCd] [varchar](5) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[ModelCd] [varchar](8) NOT NULL,
	[YrModelCd] [varchar](12) NOT NULL,
	[SeriesCd] [varchar](1) NOT NULL,
	[ModelDescription] [varchar](100) NULL,
	[SalesDescription] [varchar](100) NULL,
	[Manufacturer] [varchar](1) NOT NULL,
	[ManufacturerDesc] [varchar](100) NOT NULL,
	[ModelGroupCode] [varchar](4) NOT NULL,
	[SAPModelGroupDesc] [varchar](100) NULL,
 CONSTRAINT [PK_VehModelCodeGroup] PRIMARY KEY CLUSTERED 
(
	[YrModelCd] ASC,
	[Manufacturer] ASC,
	[ModelGroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehMonroney]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehMonroney](
	[VehMonroneyId] [int] NULL,
	[ModelYear] [int] NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[ShowGroup] [nvarchar](255) NOT NULL,
	[ShowOrder] [int] NOT NULL,
	[MonroneyText] [nvarchar](255) NULL,
	[IsBolded] [nvarchar](255) NULL,
	[IsBulleted] [nvarchar](255) NULL,
	[IsDisplayed] [nvarchar](255) NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_VehMonroney] PRIMARY KEY CLUSTERED 
(
	[YrModelCd] ASC,
	[ShowGroup] ASC,
	[ShowOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPackage]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPackage](
	[VehPackageId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelPkgCd] [nvarchar](30) NOT NULL,
	[YrSerCd] [nvarchar](5) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[YrSerPkgCd] [nvarchar](255) NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[PackageCd] [nvarchar](30) NOT NULL,
	[PackageNm] [nvarchar](255) NULL,
	[PackageDesc] [nvarchar](255) NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[TrimCd] [nvarchar](30) NOT NULL,
	[MSRP] [money] NULL,
	[InvoicePrice] [money] NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[IsOption] [tinyint] NOT NULL,
	[MaterialDesc] [nvarchar](100) NULL,
	[FactorySpecificationCD] [nvarchar](300) NULL,
 CONSTRAINT [PK_VehPackage] PRIMARY KEY CLUSTERED 
(
	[YrModelPkgCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY],
 CONSTRAINT [IX_VehPackage] UNIQUE NONCLUSTERED 
(
	[VehPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPackageOption]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPackageOption](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YrSerCd] [nchar](10) NULL,
	[ModelYear] [nvarchar](10) NULL,
	[SapModelCd] [nvarchar](20) NULL,
	[SeriesCode] [varchar](1) NULL,
	[SeriesName] [nvarchar](50) NULL,
	[Material] [nvarchar](50) NULL,
	[DTSGrade] [nvarchar](50) NULL,
	[DTSModelCode] [nvarchar](50) NULL,
	[DTSSSC] [nvarchar](50) NULL,
	[DTSOCN] [nvarchar](50) NULL,
	[TrimDescription] [nvarchar](100) NULL,
	[AccessoryGroup] [nvarchar](100) NULL,
	[AccessoryGroupName] [nvarchar](100) NULL,
	[FIOPackages] [nvarchar](200) NULL,
	[PackageOptionCombination] [nvarchar](150) NULL,
	[ShortId] [nvarchar](2) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[AlternativePackageCd] [nvarchar](10) NULL,
	[AlternativePackageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_VehPackageOption] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPkgChild]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPkgChild](
	[VehPkgChildId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[YrModelPkgCd] [nvarchar](30) NOT NULL,
	[YrModelChildPkgCd] [nvarchar](30) NOT NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[TrimCd] [nvarchar](30) NOT NULL,
	[ParentPkgCd] [nvarchar](30) NOT NULL,
	[PackageCd] [nvarchar](30) NOT NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
 CONSTRAINT [PK_VehPkgChild] PRIMARY KEY CLUSTERED 
(
	[VehPkgChildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPkgColor]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPkgColor](
	[VehPkgColorId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelPkgCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[PackageCd] [nvarchar](10) NOT NULL,
	[ExtColorCd] [nvarchar](10) NOT NULL,
	[IntColorCd] [nvarchar](10) NOT NULL,
	[StartDt] [datetime] NULL,
	[EndDt] [datetime] NULL,
	[IsOTDOff] [tinyint] NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[AccessoryGroup] [varchar](10) NOT NULL,
	[YrSerCd] [nvarchar](5) NULL,
 CONSTRAINT [PK_VehPkgColor] PRIMARY KEY CLUSTERED 
(
	[YrModelPkgCd] ASC,
	[ExtColorCd] ASC,
	[IntColorCd] ASC,
	[AccessoryGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPkgColorLookup]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPkgColorLookup](
	[YrModelExtCd] [nvarchar](30) NOT NULL,
	[YrModelIntCd] [nvarchar](30) NOT NULL,
	[YrModelSeatCd] [nvarchar](30) NOT NULL,
	[VehPkgColorLookupId] [int] NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrSerCd] [nvarchar](30) NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[ExtColorCd] [nvarchar](30) NOT NULL,
	[IntColorCd] [nvarchar](30) NOT NULL,
	[SeatColorCd] [nvarchar](30) NOT NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[MSRP] [money] NULL,
	[InvoicePrice] [money] NULL,
	[IsDefaultColor] [tinyint] NULL,
	[IsVisible] [int] NULL,
	[IsInventoryAvailable] [int] NULL,
 CONSTRAINT [PK_VehPkgColorLookup] PRIMARY KEY CLUSTERED 
(
	[VehPkgColorLookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPkgDetailText]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPkgDetailText](
	[VehPkgDetailTextId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
	[PackageCd] [nvarchar](2) NOT NULL,
	[Client] [nvarchar](3) NULL,
	[CompanyCode] [nvarchar](4) NULL,
	[SeriesCd] [nvarchar](1) NULL,
	[InstallType] [nvarchar](1) NULL,
	[ItemNumber] [int] NULL,
	[PackageDetail] [nvarchar](100) NULL,
	[IsBoldFormat] [tinyint] NULL,
	[IsItalicsFormat] [tinyint] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDt] [datetime] NULL,
 CONSTRAINT [PK_VehPkgDetailText] PRIMARY KEY CLUSTERED 
(
	[VehPkgDetailTextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehPowertrain]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPowertrain](
	[VehPowertrainId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrModelCd] [nvarchar](30) NOT NULL,
	[YrSerCd] [nvarchar](5) NOT NULL,
	[YrSerTrimCd] [nvarchar](6) NOT NULL,
	[SAPModelCd] [nvarchar](30) NOT NULL,
	[PowertrainCd] [nvarchar](100) NOT NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[TrimCd] [nvarchar](30) NOT NULL,
	[PwrtrainNm] [nvarchar](100) NOT NULL,
	[PwrtrainDesc] [nvarchar](100) NULL,
	[MSRP] [money] NULL,
	[InvoicePrice] [money] NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[IsVisibleDotCom] [tinyint] NULL,
	[IsVisibleFleet] [tinyint] NULL,
	[IsVisibleCircle] [tinyint] NULL,
	[IsVisibleCPO] [tinyint] NULL,
	[IsVisibleDev] [tinyint] NULL,
	[IsDefault] [tinyint] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[VideoURL] [nvarchar](255) NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
	[EngineCodeId] [varchar](1) NOT NULL,
	[DrivetrainCodeId] [varchar](1) NULL,
	[TransmissionDesc] [nvarchar](20) NULL,
	[DrivetrainDesc] [nvarchar](5) NULL,
	[EngineDesc] [nvarchar](20) NULL,
	[MpgCity] [nvarchar](3) NULL,
	[MpgHighway] [nvarchar](3) NULL,
	[Horsepower] [nvarchar](4) NULL,
 CONSTRAINT [PK_VehPowertrain] PRIMARY KEY CLUSTERED 
(
	[YrModelCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehSeries]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehSeries](
	[YrSerCd] [nvarchar](30) NOT NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[VehSeriesId] [int] IDENTITY(1,1) NOT NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[SeriesNm] [nvarchar](30) NOT NULL,
	[SeriesDesc] [nvarchar](255) NOT NULL,
	[IsGenesis] [tinyint] NULL,
	[VehCategoryId] [int] NOT NULL,
	[ImageURL] [nvarchar](255) NULL,
	[ShowOrder] [int] NOT NULL,
	[CreateDt] [datetime] NOT NULL,
	[UpdatedDt] [datetime] NOT NULL,
	[IsVisibleDotCom] [tinyint] NULL,
	[IsVisibleFleet] [tinyint] NULL,
	[IsVisibleCircle] [tinyint] NULL,
	[IsVisibleCPO] [tinyint] NULL,
	[IsVisibleDev] [tinyint] NULL,
	[FreightAmt] [money] NULL,
	[FreightValidFrom] [datetime] NULL,
	[FreightValidTo] [datetime] NULL,
	[VehSeriesId_Old] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehTrim]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehTrim](
	[VehTrimId] [int] IDENTITY(1,1) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[YrSerTrimCd] [nvarchar](6) NOT NULL,
	[YrSerCd] [nvarchar](5) NOT NULL,
	[SeriesCd] [nvarchar](30) NOT NULL,
	[TrimCd] [nvarchar](30) NOT NULL,
	[TrimNm] [nvarchar](255) NULL,
	[TrimDesc] [nvarchar](255) NULL,
	[MSRP] [money] NULL,
	[InvoicePrice] [money] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[VideoURL] [nvarchar](255) NULL,
	[ShowOrder] [int] NULL,
	[IsDefault] [tinyint] NULL,
	[IsVisibleHyundai] [tinyint] NULL,
	[IsVisibleGenesis] [tinyint] NULL,
	[IsVisibleDotCom] [tinyint] NULL,
	[IsVisibleFleet] [tinyint] NULL,
	[IsVisibleCircle] [tinyint] NULL,
	[IsVisibleCPO] [tinyint] NULL,
	[IsVisibleDev] [tinyint] NULL,
	[IsVisibleAEM] [tinyint] NULL,
	[IsVisibleTier2] [tinyint] NULL,
	[IsVisibleTier3] [tinyint] NULL,
	[CreateDt] [datetime] NULL,
	[UpdatedDt] [datetime] NULL,
	[EngineCodeId] [varchar](1) NOT NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_VehTrim] PRIMARY KEY CLUSTERED 
(
	[YrSerTrimCd] ASC,
	[EngineCodeId] ASC,
	[ModelGroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE](
	[VIN] [varchar](30) NULL,
	[MODEL_YEAR] [smallint] NULL,
	[SERIES_CD] [varchar](30) NULL,
	[FAMILY_CD] [varchar](30) NULL,
	[DOOR_CD] [varchar](30) NULL,
	[TRIM_CD] [varchar](30) NULL,
	[TRANSMISSION_CD] [varchar](30) NULL,
	[DRIVETRAIN_CD] [varchar](30) NULL,
	[ENGINE_TYPE_CD] [varchar](30) NULL,
	[MODEL_EMISSION_CD] [varchar](30) NULL,
	[ACCESSORY_GROUP_CD] [varchar](30) NULL,
	[MFG_EXTERIOR_COLOR_CD] [varchar](30) NULL,
	[MFG_INTERIOR_COLOR_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_01_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_02_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_03_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_04_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_05_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_06_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_07_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_08_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_09_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_10_CD] [varchar](30) NULL,
	[INVENTORY_STATUS_CD] [varchar](30) NULL,
	[CURRENT_PORT_CD] [varchar](30) NULL,
	[TENDER_DATE] [datetime] NULL,
	[SHIP_TO_DEALER_CD] [varchar](30) NULL,
	[ALLOCATION_DEALER_CD] [varchar](30) NULL,
	[FLEET_RENTAL_ACCOUNT_CD] [varchar](30) NULL,
	[FLEET_DELIVERY_FROM_DATE] [datetime] NULL,
	[FLEET_PURCHASE_ORDER_NUM] [varchar](30) NULL,
	[WHOLESALE_DATE] [datetime] NULL,
	[ACES_DELIVERY_DATE] [datetime] NULL,
	[VESSEL_MANIFEST_DEPARTURE_DATE] [datetime] NULL,
	[FLEET_PURCHASE_ORDER_DATE] [datetime] NULL,
	[COURTESY_DELIVERY_DATE] [datetime] NULL,
	[STREET_INCENTIVE_AMT] [decimal](13, 2) NULL,
	[END_USER_USERID] [varchar](30) NULL,
	[CUSTOMER_PO_NO] [varchar](30) NULL,
	[BODY_LINE_INPUT_DATE] [datetime] NULL,
	[MANIFEST_ETA_ARRIVAL_DATE] [datetime] NULL,
	[REC_UPDATE_DATE] [datetime] NOT NULL,
	[REC_CREATE_DATE] [datetime] NULL,
	[ORDER_CREATE_DATE] [datetime] NULL,
	[MODELCODE]  AS ((((((([SERIES_CD]+[FAMILY_CD])+[DOOR_CD])+[TRIM_CD])+[TRANSMISSION_CD])+[DRIVETRAIN_CD])+[ENGINE_TYPE_CD])+[MODEL_EMISSION_CD]) PERSISTED,
	[PORT_INSTALLED_OPTION_11_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_12_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_13_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_14_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_15_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_16_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_17_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_18_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_19_CD] [varchar](30) NULL,
	[PORT_INSTALLED_OPTION_20_CD] [varchar](30) NULL,
	[INTERNAL_VIN] [varchar](30) NOT NULL,
	[CURRENT_REGION_CD] [varchar](30) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXTERIOR_COLOR_CD] [varchar](30) NULL,
	[INTERIOR_COLOR_CD] [varchar](30) NULL,
 CONSTRAINT [PK_CTRL_EBIZ_CS_FLEET_VEHICLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DWH].[CTRL_EBIZ_INVENTORY_STATUS]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DWH].[CTRL_EBIZ_INVENTORY_STATUS](
	[STATUS_CD] [varchar](2) NOT NULL,
	[DESCRIPTION] [varchar](60) NULL,
	[REC_UPDATE_DATE] [date] NULL,
	[REC_CREATE_DATE] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [DWH].[PIO_ExclusiveRules]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DWH].[PIO_ExclusiveRules](
	[Company Code] [varchar](255) NULL,
	[Model Year] [varchar](255) NULL,
	[Series] [varchar](255) NULL,
	[Model Code] [varchar](255) NULL,
	[Accessory Group] [varchar](25) NULL,
	[Accessory code] [varchar](25) NULL,
	[Exclusive Accessory Code] [varchar](25) NULL,
	[CreatedName] [varchar](100) NULL,
	[CreatedDateOnly] [date] NULL,
	[CreatedTimeOnly] [time](7) NULL,
	[ModifiedName] [nvarchar](100) NULL,
	[ModifiedDate] [date] NULL,
	[LastModifiedTime] [time](7) NULL,
	[MODEL_GROUP_CD] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbContactUs_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbContactUs_kCreate] ON [dbo].[tbContactUs]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDatafile_kUser]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDatafile_kUser] ON [dbo].[tbDatafile]
(
	[kUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbDatafile_sContentType]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDatafile_sContentType] ON [dbo].[tbDatafile]
(
	[sContentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbDatafile_sMD5]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDatafile_sMD5] ON [dbo].[tbDatafile]
(
	[sMD5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbDatafileLink_cTable_kLink]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDatafileLink_cTable_kLink] ON [dbo].[tbDatafileLink]
(
	[cTable] ASC,
	[kLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDatafileLink_kDatafile]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDatafileLink_kDatafile] ON [dbo].[tbDatafileLink]
(
	[kDatafile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDelConfirm_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDelConfirm_kCreate] ON [dbo].[tbDelConfirm]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDelConfirm_kUser]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDelConfirm_kUser] ON [dbo].[tbDelConfirm]
(
	[kUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbDelConfirm_sDealerName]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDelConfirm_sDealerName] ON [dbo].[tbDelConfirm]
(
	[sDealerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDelConfirmItem_kDelConfirm]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDelConfirmItem_kDelConfirm] ON [dbo].[tbDelConfirmItem]
(
	[kDelConfirm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDropship_dtCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDropship_dtCreate] ON [dbo].[tbDropship]
(
	[dtCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDropship_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDropship_kCreate] ON [dbo].[tbDropship]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDropship_kModify]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDropship_kModify] ON [dbo].[tbDropship]
(
	[kModify] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbDropship_kUser]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDropship_kUser] ON [dbo].[tbDropship]
(
	[kUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbDropship_sCompanyName]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbDropship_sCompanyName] ON [dbo].[tbDropship]
(
	[sCompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [UK_tbDropship] ON [dbo].[tbDropship]
(
	[cCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbFlag_cType]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbFlag_cType] ON [dbo].[tbFlag]
(
	[cType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbFlag_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbFlag_kCreate] ON [dbo].[tbFlag]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbFlag]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [UK_tbFlag] ON [dbo].[tbFlag]
(
	[cTable] ASC,
	[kLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbImportHistory_kUser]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbImportHistory_kUser] ON [dbo].[tbImportHistory]
(
	[kUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbIncentive_cModelCode_nModelYear]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbIncentive_cModelCode_nModelYear] ON [dbo].[tbIncentive]
(
	[cModelCode] ASC,
	[nModelYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbIncentive_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbIncentive_kCreate] ON [dbo].[tbIncentive]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbIncentive_kModify]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbIncentive_kModify] ON [dbo].[tbIncentive]
(
	[kModify] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrder_cStatus]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrder_cStatus] ON [dbo].[tbOrder]
(
	[cStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrder_kCreate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrder_kCreate] ON [dbo].[tbOrder]
(
	[kCreate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrder_kModify]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrder_kModify] ON [dbo].[tbOrder]
(
	[kModify] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrder_kOrderUser]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrder_kOrderUser] ON [dbo].[tbOrder]
(
	[kOrderUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_tbOrder] ON [dbo].[tbOrder]
(
	[kFMCCompany] ASC,
	[kENUCompany] ASC,
	[sPONo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrderDS_kDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDS_kDropship] ON [dbo].[tbOrderDS]
(
	[kDropship] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrderDS_kOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDS_kOrder] ON [dbo].[tbOrderDS]
(
	[kOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrderDT_cAccy]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDT_cAccy] ON [dbo].[tbOrderDT]
(
	[cAccy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrderDT_cColorExt]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDT_cColorExt] ON [dbo].[tbOrderDT]
(
	[cColorExt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrderDT_cColorInt]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDT_cColorInt] ON [dbo].[tbOrderDT]
(
	[cColorInt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrderDT_kOrderDS]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDT_kOrderDS] ON [dbo].[tbOrderDT]
(
	[kOrderDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrderDT_kVehicleTrim]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderDT_kVehicleTrim] ON [dbo].[tbOrderDT]
(
	[kVehicleTrim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbOrderStatus1_kImportHistory]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderStatus1_kImportHistory] ON [dbo].[tbOrderStatus1]
(
	[kImportHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrderStatus2ForImportForSelect]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderStatus2ForImportForSelect] ON [dbo].[tbOrderStatus2ForImport]
(
	[sVIN] ASC,
	[sCustomerPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbOrderStatus2ForImportForUpdate]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbOrderStatus2ForImportForUpdate] ON [dbo].[tbOrderStatus2ForImport]
(
	[sCustomerPO] ASC,
	[cFMCCode] ASC,
	[cENUCode] ASC,
	[sVehCode] ASC,
	[nVehYear] ASC,
	[cAccy] ASC,
	[cExtClr] ASC,
	[cIntClr] ASC,
	[dtDeliveryWindowFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbUser_sLogin]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbUser_sLogin] ON [dbo].[tbUser]
(
	[sLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [HUSA_VehPkgChild_3192490_3192489]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [HUSA_VehPkgChild_3192490_3192489] ON [dbo].[tbUserLoginLock]
(
	[userId] ASC,
	[userHitDatetime] ASC
)
INCLUDE([userHitIsLock]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleTrim_sModelName]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbVehicleTrim_sModelName] ON [dbo].[tbVehicleTrim]
(
	[sModelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleTrim_sName]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbVehicleTrim_sName] ON [dbo].[tbVehicleTrim]
(
	[sName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleTrimEquivalent]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbVehicleTrimEquivalent] ON [dbo].[tbVehicleTrimEquivalent]
(
	[kVehicleTrim] ASC,
	[cCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleTrimImport]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbVehicleTrimImport] ON [dbo].[tbVehicleTrimForImport]
(
	[sName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleXCodeForImport_cLinkVehicleTrim_nLinkVehicleYear]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbVehicleXCodeForImport_cLinkVehicleTrim_nLinkVehicleYear] ON [dbo].[tbVehicleXCodeForImport]
(
	[cLinkVehicleTrim] ASC,
	[nLinkVehiceYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbVehicleXCodeForImport_cTable_cCode]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbVehicleXCodeForImport_cTable_cCode] ON [dbo].[tbVehicleXCodeForImport]
(
	[cTable] ASC,
	[cCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbXCode_nOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_tbXCode_nOrder] ON [dbo].[tbXCode]
(
	[nOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehAccAvailable_2]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehAccAvailable_2] ON [dbo].[VehAccAvailable]
(
	[FactoryOrPort] ASC,
	[IsAvailable] ASC,
	[ModelYear] ASC,
	[AccessoryCd] ASC
)
INCLUDE([SAPModelCd]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VehAccessory_ModelYear]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehAccessory_ModelYear] ON [dbo].[VehAccessory]
(
	[ModelYear] ASC
)
INCLUDE([SAPModelCd],[AccessoryCd],[AccessoryDesc],[SeriesCd]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehAccessory_ModelYear_SeriesCd]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehAccessory_ModelYear_SeriesCd] ON [dbo].[VehAccessory]
(
	[ModelYear] ASC,
	[SeriesCd] ASC
)
INCLUDE([SAPModelCd],[AccessoryCd],[AccessoryDesc]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehColorExt_2]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehColorExt_2] ON [dbo].[VehColorExt]
(
	[SAPModelCd] ASC,
	[ExtColorCd] ASC,
	[ExtColorLongDesc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VehPkgColor_2]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehPkgColor_2] ON [dbo].[VehPkgColor]
(
	[EndDt] ASC
)
INCLUDE([ModelYear],[SAPModelCd],[PackageCd]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehPkgColor_PackageCD]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehPkgColor_PackageCD] ON [dbo].[VehPkgColor]
(
	[PackageCd] ASC
)
INCLUDE([ModelYear],[SAPModelCd]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehPkgColorLookup_YrModelCD_IsD_IsV]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehPkgColorLookup_YrModelCD_IsD_IsV] ON [dbo].[VehPkgColorLookup]
(
	[YrModelCd] ASC,
	[IsDeleted] ASC,
	[IsVisible] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VehPkgColorLookup_YrModelCd_Other]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehPkgColorLookup_YrModelCd_Other] ON [dbo].[VehPkgColorLookup]
(
	[IsDeleted] ASC,
	[IsVisible] ASC
)
INCLUDE([YrModelCd]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VehPowertrain_ModelYear_Other]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehPowertrain_ModelYear_Other] ON [dbo].[VehPowertrain]
(
	[ModelYear] ASC
)
INCLUDE([SAPModelCd],[SeriesCd],[TrimCd],[ModelGroupCode],[EngineCodeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VehTrim_Other]    Script Date: 3/14/2025 4:24:21 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VehTrim_Other] ON [dbo].[VehTrim]
(
	[YrSerCd] ASC,
	[TrimCd] ASC,
	[EngineCodeId] ASC,
	[ModelGroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbCompany] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbCompany] ADD  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[tbCompanyDropshipLink] ADD  CONSTRAINT [DF_tbCompanyDropshipLink_cStatus]  DEFAULT ('A') FOR [cStatus]
GO
ALTER TABLE [dbo].[tbCompanyDropshipLink] ADD  CONSTRAINT [DF_tbCompanyDropshipLink_dtCreate]  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbCompanyDropshipLink] ADD  CONSTRAINT [DF_tbCompanyDropshipLink_dtUpdate]  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[tbContactUs] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbContent] ADD  DEFAULT ((0)) FOR [nOrder]
GO
ALTER TABLE [dbo].[tbDatafile] ADD  DEFAULT (getdate()) FOR [tsRec]
GO
ALTER TABLE [dbo].[tbDatafileLink] ADD  DEFAULT (getdate()) FOR [tsRec]
GO
ALTER TABLE [dbo].[tbDelConfirm] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ('I') FOR [cStatus]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ((0)) FOR [kUser]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ((0)) FOR [kCreate]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ((0)) FOR [kModify]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ((0)) FOR [DealerInd]
GO
ALTER TABLE [dbo].[tbDropship] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tbEmailQueue] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbFlag] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbImportHistory] ADD  DEFAULT (getdate()) FOR [tsRec]
GO
ALTER TABLE [dbo].[tbImportHistory] ADD  CONSTRAINT [DF_tbImportHistory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tbImportHistory] ADD  CONSTRAINT [DF_tbImportHistory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  CONSTRAINT [DF__tbIncenti__cStat__117F9D94]  DEFAULT ('I') FOR [cStatus]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  CONSTRAINT [DF_tbIncentive_cAdminOrderStatus]  DEFAULT ('I') FOR [cAdminOrderStatus]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  CONSTRAINT [DF__tbIncenti__kCrea__1273C1CD]  DEFAULT ((0)) FOR [kCreate]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  CONSTRAINT [DF__tbIncenti__kModi__1367E606]  DEFAULT ((0)) FOR [kModify]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  CONSTRAINT [DF_Default_Object_Name2]  DEFAULT ('PlaceHolder') FOR [cModelName]
GO
ALTER TABLE [dbo].[tbIncentive] ADD  DEFAULT ('I') FOR [cMasterStatusOverride]
GO
ALTER TABLE [dbo].[tbOrder] ADD  CONSTRAINT [DF__tbOrder__cSalesT__182C9B23]  DEFAULT ('') FOR [cSalesType]
GO
ALTER TABLE [dbo].[tbOrder] ADD  CONSTRAINT [DF__tbOrder__cStatus__1920BF5C]  DEFAULT ('OP') FOR [cStatus]
GO
ALTER TABLE [dbo].[tbOrder] ADD  CONSTRAINT [DF_tbOrder_kAllocateCompany]  DEFAULT ((0)) FOR [kAllocateCompany]
GO
ALTER TABLE [dbo].[tbOrderDT] ADD  DEFAULT ('N') FOR [cPortPDI]
GO
ALTER TABLE [dbo].[tbOrderDTBatch] ADD  CONSTRAINT [DF_tbOrderDTBatch_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[tbOrderStatus2] ADD  CONSTRAINT [DF_tbOrderStatus2_kOrderDT]  DEFAULT ((0)) FOR [kOrderDT]
GO
ALTER TABLE [dbo].[tbOrderStatus2] ADD  CONSTRAINT [DF_tbOrderStatus2_kImportHistory]  DEFAULT ((0)) FOR [kImportHistory]
GO
ALTER TABLE [dbo].[tbOrderStatus2ForImport] ADD  DEFAULT ((0)) FOR [kOrderDT]
GO
ALTER TABLE [dbo].[tbOrderStatus2ForImport] ADD  CONSTRAINT [DF_tbOrderStatus2ForImport_kOrderDS]  DEFAULT ((0)) FOR [kOrderDS]
GO
ALTER TABLE [dbo].[tbOrderStatus2ForImport] ADD  CONSTRAINT [DF_tbOrderStatus2ForImport_kOrder]  DEFAULT ((0)) FOR [kOrder]
GO
ALTER TABLE [dbo].[tbOrderStatusChangeHistory] ADD  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[tbResetPwd] ADD  DEFAULT (getdate()) FOR [dtCreate]
GO
ALTER TABLE [dbo].[tbUserLoginLock] ADD  DEFAULT ((0)) FOR [loginSuccess]
GO
ALTER TABLE [dbo].[tbVehicleTrim] ADD  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[tbVehicleTrim] ADD  CONSTRAINT [DF_Default_Object_Name1]  DEFAULT ('PlaceHolder') FOR [cModelGroupCode]
GO
ALTER TABLE [dbo].[tbVehicleTrimForImport] ADD  CONSTRAINT [DF_Default_Object_Name]  DEFAULT ('PlaceHolder') FOR [cModelGroupCode]
GO
ALTER TABLE [dbo].[tbVehicleXCode] ADD  DEFAULT ((0)) FOR [kVehicleXCode]
GO
ALTER TABLE [dbo].[tbVehicleXCode] ADD  DEFAULT ((0)) FOR [nOrder]
GO
ALTER TABLE [dbo].[tbVehicleXCode] ADD  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[tbVehicleXCode] ADD  CONSTRAINT [DF_tbVehicleXCode_kVxcIntClr]  DEFAULT ((0)) FOR [kVehicleXCodeIntClr]
GO
ALTER TABLE [dbo].[tbVehicleXCode] ADD  CONSTRAINT [DF_tbVehicleXCode_kVxcPackage]  DEFAULT ((0)) FOR [kVehicleXCodePackage]
GO
ALTER TABLE [dbo].[tbVehicleXCodeForImport] ADD  DEFAULT ((0)) FOR [nOrder]
GO
ALTER TABLE [dbo].[tbXCode] ADD  DEFAULT ((0)) FOR [nOrder]
GO
ALTER TABLE [dbo].[tbXCode] ADD  DEFAULT (getdate()) FOR [dtModify]
GO
ALTER TABLE [dbo].[VehAccAvailable] ADD  CONSTRAINT [DF__VehAccAva__YrMod__7A8729A3]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehAccAvailable] ADD  CONSTRAINT [DF__VehAccAva__YrMod__7B7B4DDC]  DEFAULT ((0)) FOR [YrModelPkgCd]
GO
ALTER TABLE [dbo].[VehAccAvailable] ADD  CONSTRAINT [DF__VehAccAva__Creat__7C6F7215]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehAccAvailable] ADD  CONSTRAINT [DF__VehAccAva__Updat__7D63964E]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehAccessory] ADD  CONSTRAINT [DF__VehAccess__YrMod__01342732]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehAccessory] ADD  CONSTRAINT [DF__VehAccess__ShowO__004002F9]  DEFAULT ((0)) FOR [ShowOrder]
GO
ALTER TABLE [dbo].[VehAccessory] ADD  CONSTRAINT [DF__VehAccess__Creat__02284B6B]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehAccessory] ADD  CONSTRAINT [DF__VehAccess__Updat__031C6FA4]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehCategory] ADD  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehCategory] ADD  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__YrMod__0CA5D9DE]  DEFAULT ((0)) FOR [YrModelExtCd]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__YrSer__0D99FE17]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__YrMod__0BB1B5A5]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__Creat__0E8E2250]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__Updat__0F824689]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__IsDef__09C96D33]  DEFAULT ((0)) FOR [IsDefaultColor]
GO
ALTER TABLE [dbo].[VehColorExt] ADD  CONSTRAINT [DF__VehColorE__IsVis__0ABD916C]  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__YrMod__1446FBA6]  DEFAULT ((0)) FOR [YrModelIntCd]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__YrSer__153B1FDF]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__YrMod__1352D76D]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__Creat__162F4418]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__Updat__17236851]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__IsDef__116A8EFB]  DEFAULT ((0)) FOR [IsDefaultColor]
GO
ALTER TABLE [dbo].[VehColorInt] ADD  CONSTRAINT [DF__VehColorI__IsVis__125EB334]  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__YrMod__1CDC41A7]  DEFAULT ((0)) FOR [YrModelSeatCd]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__YrSer__1DD065E0]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__YrMod__1BE81D6E]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__Creat__1EC48A19]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__Updat__1FB8AE52]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__IsDef__19FFD4FC]  DEFAULT ((0)) FOR [IsDefaultColor]
GO
ALTER TABLE [dbo].[VehColorSeat] ADD  CONSTRAINT [DF__VehColorS__IsVis__1AF3F935]  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__YrSerC__38845C1C]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsDefa__2EFAF1E2]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__35A7EF71]  DEFAULT ((0)) FOR [IsVisibleHyundai]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__34B3CB38]  DEFAULT ((0)) FOR [IsVisibleGenesis]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__39788055]  DEFAULT ((1)) FOR [IsVisibleDotCom]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__33BFA6FF]  DEFAULT ((0)) FOR [IsVisibleFleet]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__30E33A54]  DEFAULT ((0)) FOR [IsVisibleCircle]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__31D75E8D]  DEFAULT ((0)) FOR [IsVisibleCPO]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__32CB82C6]  DEFAULT ((0)) FOR [IsVisibleDev]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__2FEF161B]  DEFAULT ((0)) FOR [IsVisibleAEM]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__369C13AA]  DEFAULT ((0)) FOR [IsVisibleTier2]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__IsVisi__379037E3]  DEFAULT ((0)) FOR [IsVisibleTier3]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__Create__3A6CA48E]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehModel] ADD  CONSTRAINT [DF__VehModel__Update__3B60C8C7]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehMonroney] ADD  CONSTRAINT [DF__VehMonron__YrMod__3D491139]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehPackage] ADD  CONSTRAINT [DF__VehPackag__YrMod__420DC656]  DEFAULT ((0)) FOR [YrModelPkgCd]
GO
ALTER TABLE [dbo].[VehPackage] ADD  CONSTRAINT [DF__VehPackag__YrSer__4301EA8F]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehPackage] ADD  CONSTRAINT [DF__VehPackag__YrMod__4119A21D]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehPackage] ADD  CONSTRAINT [DF__VehPackag__Packa__40257DE4]  DEFAULT ((0)) FOR [PackageCd]
GO
ALTER TABLE [dbo].[VehPackage] ADD  CONSTRAINT [DF_VehPackage_IsOption]  DEFAULT ((0)) FOR [IsOption]
GO
ALTER TABLE [dbo].[VehPkgColor] ADD  CONSTRAINT [DF__VehPkgCol__YrMod__4C8B54C9]  DEFAULT ((0)) FOR [YrModelPkgCd]
GO
ALTER TABLE [dbo].[VehPkgColor] ADD  CONSTRAINT [DF__VehPkgCol__IsOTD__4B973090]  DEFAULT ((0)) FOR [IsOTDOff]
GO
ALTER TABLE [dbo].[VehPkgColor] ADD  CONSTRAINT [DF__VehPkgCol__IsDel__4AA30C57]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[VehPkgColor] ADD  CONSTRAINT [DF__VehPkgCol__Creat__4D7F7902]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehPkgColor] ADD  CONSTRAINT [DF__VehPkgCol__Updat__4E739D3B]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [YrModelExtCd]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [YrModelIntCd]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [YrModelSeatCd]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [IsDefaultColor]
GO
ALTER TABLE [dbo].[VehPkgColorLookup] ADD  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__YrMod__65570293]  DEFAULT ((0)) FOR [YrModelCd]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__YrSer__664B26CC]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__YrSer__673F4B05]  DEFAULT ((0)) FOR [YrSerTrimCd]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__Creat__69279377]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__Updat__6A1BB7B0]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsVis__68336F3E]  DEFAULT ((1)) FOR [IsVisibleDotCom]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsVis__6462DE5A]  DEFAULT ((0)) FOR [IsVisibleFleet]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsVis__618671AF]  DEFAULT ((0)) FOR [IsVisibleCircle]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsVis__627A95E8]  DEFAULT ((0)) FOR [IsVisibleCPO]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsVis__636EBA21]  DEFAULT ((0)) FOR [IsVisibleDev]
GO
ALTER TABLE [dbo].[VehPowertrain] ADD  CONSTRAINT [DF__VehPowert__IsDef__60924D76]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__YrSer__3B80C458]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__Model__12BEA5E7]  DEFAULT ('') FOR [ModelGroupCode]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__Serie__3A8CA01F]  DEFAULT ((0)) FOR [SeriesCd]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsGen__35C7EB02]  DEFAULT ((0)) FOR [IsGenesis]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__Creat__3D690CCA]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__Updat__3E5D3103]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsVis__3C74E891]  DEFAULT ((1)) FOR [IsVisibleDotCom]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsVis__39987BE6]  DEFAULT ((0)) FOR [IsVisibleFleet]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsVis__36BC0F3B]  DEFAULT ((0)) FOR [IsVisibleCircle]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsVis__37B03374]  DEFAULT ((0)) FOR [IsVisibleCPO]
GO
ALTER TABLE [dbo].[VehSeries] ADD  CONSTRAINT [DF__VehSeries__IsVis__38A457AD]  DEFAULT ((0)) FOR [IsVisibleDev]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__YrSerTr__06B7F65E]  DEFAULT ((0)) FOR [YrSerTrimCd]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__YrSerCd__05C3D225]  DEFAULT ((0)) FOR [YrSerCd]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__ShowOrd__04CFADEC]  DEFAULT ((0)) FOR [ShowOrder]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsDefau__7B4643B2]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__01F34141]  DEFAULT ((0)) FOR [IsVisibleHyundai]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__00FF1D08]  DEFAULT ((0)) FOR [IsVisibleGenesis]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__07AC1A97]  DEFAULT ((1)) FOR [IsVisibleDotCom]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__000AF8CF]  DEFAULT ((0)) FOR [IsVisibleFleet]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__7D2E8C24]  DEFAULT ((0)) FOR [IsVisibleCircle]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__7E22B05D]  DEFAULT ((0)) FOR [IsVisibleCPO]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__7F16D496]  DEFAULT ((0)) FOR [IsVisibleDev]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__7C3A67EB]  DEFAULT ((0)) FOR [IsVisibleAEM]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__02E7657A]  DEFAULT ((0)) FOR [IsVisibleTier2]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__IsVisib__03DB89B3]  DEFAULT ((0)) FOR [IsVisibleTier3]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__CreateD__08A03ED0]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[VehTrim] ADD  CONSTRAINT [DF__VehTrim__Updated__09946309]  DEFAULT (getdate()) FOR [UpdatedDt]
GO
ALTER TABLE [DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE] ADD  CONSTRAINT [Internal_Default]  DEFAULT ('') FOR [INTERNAL_VIN]
GO
ALTER TABLE [dbo].[tbDatafileLink]  WITH NOCHECK ADD  CONSTRAINT [FK_tbDatafileLink_tbDatafile] FOREIGN KEY([kDatafile])
REFERENCES [dbo].[tbDatafile] ([iRec])
GO
ALTER TABLE [dbo].[tbDatafileLink] CHECK CONSTRAINT [FK_tbDatafileLink_tbDatafile]
GO
ALTER TABLE [dbo].[tbDelConfirmItem]  WITH NOCHECK ADD  CONSTRAINT [FK_tbDelConfirmItem_tbDelConfirm] FOREIGN KEY([kDelConfirm])
REFERENCES [dbo].[tbDelConfirm] ([iRec])
GO
ALTER TABLE [dbo].[tbDelConfirmItem] CHECK CONSTRAINT [FK_tbDelConfirmItem_tbDelConfirm]
GO
ALTER TABLE [dbo].[tbDropshipWorkingHour]  WITH NOCHECK ADD  CONSTRAINT [FK_tbDropshipWorkingHour_tbDropship] FOREIGN KEY([kDropship])
REFERENCES [dbo].[tbDropship] ([iRec])
GO
ALTER TABLE [dbo].[tbDropshipWorkingHour] CHECK CONSTRAINT [FK_tbDropshipWorkingHour_tbDropship]
GO
ALTER TABLE [dbo].[tbOrderDS]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderDS_tbDropship] FOREIGN KEY([kDropship])
REFERENCES [dbo].[tbDropship] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderDS] CHECK CONSTRAINT [FK_tbOrderDS_tbDropship]
GO
ALTER TABLE [dbo].[tbOrderDS]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderDS_tbOrder] FOREIGN KEY([kOrder])
REFERENCES [dbo].[tbOrder] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderDS] CHECK CONSTRAINT [FK_tbOrderDS_tbOrder]
GO
ALTER TABLE [dbo].[tbOrderDT]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderDT_tbOrderDS] FOREIGN KEY([kOrderDS])
REFERENCES [dbo].[tbOrderDS] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderDT] CHECK CONSTRAINT [FK_tbOrderDT_tbOrderDS]
GO
ALTER TABLE [dbo].[tbOrderDT]  WITH CHECK ADD  CONSTRAINT [FK_tbOrderDT_tbVehicleTrim] FOREIGN KEY([kVehicleTrim])
REFERENCES [dbo].[tbVehicleTrim] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderDT] CHECK CONSTRAINT [FK_tbOrderDT_tbVehicleTrim]
GO
ALTER TABLE [dbo].[tbOrderPIO]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderPIO_tbOrderPIO] FOREIGN KEY([iRec])
REFERENCES [dbo].[tbOrderPIO] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderPIO] CHECK CONSTRAINT [FK_tbOrderPIO_tbOrderPIO]
GO
ALTER TABLE [dbo].[tbOrderStatus1]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderStatus1_tbImportHistory] FOREIGN KEY([kImportHistory])
REFERENCES [dbo].[tbImportHistory] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderStatus1] CHECK CONSTRAINT [FK_tbOrderStatus1_tbImportHistory]
GO
ALTER TABLE [dbo].[tbOrderStatus2]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderStatus2_tbImportHistory] FOREIGN KEY([kImportHistory])
REFERENCES [dbo].[tbImportHistory] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderStatus2] CHECK CONSTRAINT [FK_tbOrderStatus2_tbImportHistory]
GO
ALTER TABLE [dbo].[tbOrderStatus2]  WITH NOCHECK ADD  CONSTRAINT [FK_tbOrderStatus2_tbOrderDT] FOREIGN KEY([kOrderDT])
REFERENCES [dbo].[tbOrderDT] ([iRec])
GO
ALTER TABLE [dbo].[tbOrderStatus2] CHECK CONSTRAINT [FK_tbOrderStatus2_tbOrderDT]
GO
ALTER TABLE [dbo].[tbUserCompany]  WITH NOCHECK ADD  CONSTRAINT [FK_tbUserCompany_tbCompany] FOREIGN KEY([kCompany])
REFERENCES [dbo].[tbCompany] ([iRec])
GO
ALTER TABLE [dbo].[tbUserCompany] CHECK CONSTRAINT [FK_tbUserCompany_tbCompany]
GO
ALTER TABLE [dbo].[tbUserCompany]  WITH NOCHECK ADD  CONSTRAINT [FK_tbUserCompany_tbUser] FOREIGN KEY([kUser])
REFERENCES [dbo].[tbUser] ([iRec])
GO
ALTER TABLE [dbo].[tbUserCompany] CHECK CONSTRAINT [FK_tbUserCompany_tbUser]
GO
ALTER TABLE [dbo].[tbUserSTMLink]  WITH NOCHECK ADD  CONSTRAINT [FK_tbUserSTMLink_tbUser1] FOREIGN KEY([kUser])
REFERENCES [dbo].[tbUser] ([iRec])
GO
ALTER TABLE [dbo].[tbUserSTMLink] CHECK CONSTRAINT [FK_tbUserSTMLink_tbUser1]
GO
ALTER TABLE [dbo].[tbUserSTMLink]  WITH NOCHECK ADD  CONSTRAINT [FK_tbUserSTMLink_tbUserSTM] FOREIGN KEY([kUserSTM])
REFERENCES [dbo].[tbUserSTM] ([iRec])
GO
ALTER TABLE [dbo].[tbUserSTMLink] CHECK CONSTRAINT [FK_tbUserSTMLink_tbUserSTM]
GO
ALTER TABLE [dbo].[tbVehicleXCode]  WITH NOCHECK ADD  CONSTRAINT [FK_tbVehicleXCode_tbVehicleXCode] FOREIGN KEY([kVehicleTrim])
REFERENCES [dbo].[tbVehicleTrim] ([iRec])
GO
ALTER TABLE [dbo].[tbVehicleXCode] CHECK CONSTRAINT [FK_tbVehicleXCode_tbVehicleXCode]
GO
ALTER TABLE [dbo].[VehAccAvailable]  WITH CHECK ADD  CONSTRAINT [FK_VehAccAvailable_VehAccessory] FOREIGN KEY([YrModelAccCd])
REFERENCES [dbo].[VehAccessory] ([YrModelAccCd])
GO
ALTER TABLE [dbo].[VehAccAvailable] CHECK CONSTRAINT [FK_VehAccAvailable_VehAccessory]
GO
ALTER TABLE [dbo].[VehMonroney]  WITH CHECK ADD  CONSTRAINT [FK_VehMonroney_VehPowertrain] FOREIGN KEY([YrModelCd])
REFERENCES [dbo].[VehPowertrain] ([YrModelCd])
GO
ALTER TABLE [dbo].[VehMonroney] CHECK CONSTRAINT [FK_VehMonroney_VehPowertrain]
GO
ALTER TABLE [dbo].[VehPackage]  WITH CHECK ADD  CONSTRAINT [FK_VehPackage_VehPowertrain] FOREIGN KEY([YrModelCd])
REFERENCES [dbo].[VehPowertrain] ([YrModelCd])
GO
ALTER TABLE [dbo].[VehPackage] CHECK CONSTRAINT [FK_VehPackage_VehPowertrain]
GO
ALTER TABLE [dbo].[VehPowertrain]  WITH CHECK ADD  CONSTRAINT [FK_VehPowertrain_VehTrim] FOREIGN KEY([YrSerTrimCd], [EngineCodeId], [ModelGroupCode])
REFERENCES [dbo].[VehTrim] ([YrSerTrimCd], [EngineCodeId], [ModelGroupCode])
GO
ALTER TABLE [dbo].[VehPowertrain] CHECK CONSTRAINT [FK_VehPowertrain_VehTrim]
GO
/****** Object:  StoredProcedure [dbo].[GetOverrideFlagByModelCodeandYear]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Rohit
-- Create date: 2/24/2021
-- Description:	Get the override flag with vehicle model,Year,Code.
-- exec [dbo].[GetOverrideFlagByModelCodeandYear] 
-- Modified: 03/09/2021, Rohit Srivastava , HF#415 - Add condition of 'ModelName' to fetch the unique vehicle. 
-- =============================================
CREATE PROCEDURE [dbo].[GetOverrideFlagByModelCodeandYear]
AS
BEGIN
	SET NOCOUNT ON;		
	SELECT DISTINCT overrideflag = Inc.cMasterStatusOverride, modelname = inc.cmodelname, 
	modelyear = VT.nyear, modelgroupcode = VT.cModelGroupCode ,ccode = VT. cCode
	FROM [HMAFleet].[dbo].tbIncentive Inc
	INNER JOIN [HMAFleet].[dbo].[tbVehicleTrim] VT
	on VT.cModelCode = Inc.cModelCode AND VT.nYear = Inc.nModelYear and inc.cModelName = VT.sModelName
	WHERE VT.cStatus = 'A'		
END



GO
/****** Object:  StoredProcedure [dbo].[Mig_sp_UpdateDealerInfo]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Nick Nguyen
-- Create date: 12/3/2012
-- Description:	UpdateDealerInfo for dropship table. Will be scheduled with HyundaiUSA_AS400_SyncRegion.
-- =================================================================
CREATE PROCEDURE [dbo].[Mig_sp_UpdateDealerInfo]

AS
BEGIN   
        INSERT INTO dbo.tbDropship
		SELECT 'A' as Status
			   ,'0' as [kUser]
			  ,[DealerCode] as sCode
			   ,[dealer_name] as [sCompanyName]
			   ,[owner] as [sContactName]
			  ,[address1][sCompStreet] 
			  ,[address2][sCompStreet2]
			  ,[city][sCompCity]
			  ,[state][cCompState]
			  ,[zip] [sCompZip]
			  ,replace(replace(replace(replace([sales_phone], ' ', ''), '-', ''), '(', ''), ')', '') [sPhone]
			  ,null [sPhone2]
			  ,0 as kCreate
			  ,GETDATE() [dtCreate]
			  ,0 as KModified
			  ,GETDATE() as dtModify
			  ,1 as [tbDropship]
		  FROM [HyundaiUSA].[Dealer].[DealerInfo]
		  WHERE [DealerCode] NOT IN (SELECT  cCode FROM dbo.tbDropship)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SSIS_RunImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =================================================================
-- Author:		Nick Nguyen
-- Create date: 7/31/2014
-- Description:	Run import procedures. Will be ran by EDW team right after they dump data to DWH.CTRL_EBIZ_CS_FLEET_VEHICLE
-- Modified: Daniel Lee, 9/6/2017, Add Internal VINs
-- Modified: Erik Mildner, 10/21/2020, Fixed calling correct column sVIN FROM dbo.tbOrderStatus2
-- =================================================================
CREATE PROCEDURE [dbo].[sp_SSIS_RunImport]
	
AS
BEGIN
	SET NOCOUNT ON
	
	BEGIN TRY
	DECLARE @ErrMsg varchar(100) 
	   -------------------------------------------------------
	   --Store the history
	    DECLARE @importHistoryId int
	    DECLARE @MaxImportDate Datetime
		
		-- get maximportdate from the last successull
		SELECT @MaxImportDate=MAX(tsRec) FROM tbImportHistory
			WHERE Status=2--Successful
		--get the next tbImportHistory
		INSERT INTO tbImportHistory (kUser,cType,tsRec)
		SELECT '240','Full Load',GETDATE()
		SELECT @importHistoryId=SCOPE_IDENTITY()
		------------------------------------------------------
		--Initial value.
		IF @MaxImportDate IS NULL  SET @MaxImportDate=getdate()-1
		------------------------------------------------------
		--We need to get the latest VIN and update date from the last good import. 
		-- Therefor, we might check for the vin from the last unsuccessful import also
		TRUNCATE TABLE dbo.tbTemp_VIN_FEED_GOOD
		
		INSERT INTO dbo.tbTemp_VIN_FEED_GOOD (VIN, REC_UPDATE_DATE, INTERNAL_VIN)
		SELECT VIN, MAX(REC_UPDATE_DATE) as REC_UPDATE_DATE, INTERNAL_VIN
		FROM	DWH.CTRL_EBIZ_CS_FLEET_VEHICLE (nolock)
				  WHERE REC_UPDATE_DATE>@MaxImportDate
				  AND 
				    -----------------------------------------------
				    --filter VINs that dont have PO Number and never exists on database
					(VIN IN
					(SELECT sVIN FROM dbo.tbOrderStatus2 (NOLOCK))
					 AND ISNULL(FLEET_PURCHASE_ORDER_NUM,'')=''
					)
				OR
				(ISNULL(FLEET_PURCHASE_ORDER_NUM,'')<>'')
			group by VIN, INTERNAL_VIN
				
	  -----------------------------------------------------------
	  -- Update "by pass accessories" from special table to NULL--> We wont compare this accessory to the HMA Fleet orders. 
	  UPDATE V
		SET
		 V.PORT_INSTALLED_OPTION_01_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_01_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_01_CD END,
		 V.PORT_INSTALLED_OPTION_02_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_02_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_02_CD END,
		 V.PORT_INSTALLED_OPTION_03_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_03_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_03_CD END,
		 V.PORT_INSTALLED_OPTION_04_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_04_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_04_CD END,
		 V.PORT_INSTALLED_OPTION_05_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_05_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_05_CD END,
		 V.PORT_INSTALLED_OPTION_06_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_06_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_06_CD END,
		 V.PORT_INSTALLED_OPTION_07_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_07_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_07_CD END,
		 V.PORT_INSTALLED_OPTION_08_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_08_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_08_CD END,
		 V.PORT_INSTALLED_OPTION_09_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_09_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_09_CD END,
		 V.PORT_INSTALLED_OPTION_10_CD=CASE WHEN F.ACCESSORY_CD=V.PORT_INSTALLED_OPTION_10_CD THEN NULL ELSE V.PORT_INSTALLED_OPTION_10_CD END		  
 
	 FROM DWH.CTRL_EBIZ_CS_FLEET_VEHICLE V
		  INNER JOIN dbo.vw_ACCESSORY_AVAILABILITY_RULE_ID_FILTER F
		  ON V.MODELCODE=F.MODEL_CD
		  AND V.MODEL_YEAR=F.MODEL_YEAR
		  AND V.ACCESSORY_GROUP_CD=F.ACCESSORY_GROUP_CD
		  AND F.ACCESSORY_CD IN(
								 V.PORT_INSTALLED_OPTION_01_CD
								,V.PORT_INSTALLED_OPTION_02_CD
								,V.PORT_INSTALLED_OPTION_03_CD
								,V.PORT_INSTALLED_OPTION_04_CD
								,V.PORT_INSTALLED_OPTION_05_CD
								,V.PORT_INSTALLED_OPTION_06_CD
								,V.PORT_INSTALLED_OPTION_07_CD
								,V.PORT_INSTALLED_OPTION_08_CD
								,V.PORT_INSTALLED_OPTION_09_CD
								,V.PORT_INSTALLED_OPTION_10_CD
								)
							

		-------------------------------------------------------

		--Update for Internal Vins for tbOrderStatus1 and tbOrderStatus2 if Internal Vin does not exist.

		UPDATE 
			[dbo].[tbOrderStatus1] 
		SET
			sInternalVIN = t2.INTERNAL_VIN, 
			kImportHistory = t1.kImportHistory
		FROM
			[DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE] t2
			INNER JOIN [dbo].[tbOrderStatus1] t1
				ON t1.sVIN = t2.VIN


		UPDATE  
			[dbo].[tbOrderStatus2] 
		SET
			sInternalVIN = t2.INTERNAL_VIN, 
			kImportHistory = t1.kImportHistory
		FROM
			[DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE] t2
			INNER JOIN [dbo].[tbOrderStatus2] t1
				ON t1.sVIN = t2.VIN



		-------------------------------------------------------
	   -- insert to dbo.tbOrderStatus1
	   EXEC dbo.spSetOrderStatus1ForImport @importHistoryId
	   -- insert to dbo.tbOrderStatus2
	   EXEC dbo.spSetOrderStatus2ForImport @importHistoryId
	   -- Run main SP to update order status
	   EXEC [dbo].[spTransferOrderStatus_Revised]	
	END TRY

	BEGIN CATCH
	    SELECT  @ErrMsg =  ERROR_MESSAGE()
	    PRINT @ErrMsg 
		------------------------------------
		--Update the fail history date and status
		UPDATE tbImportHistory
		SET Status=3
		    ,ErrorMsg=@ErrMsg
		   -- ,tsRec=Coalesce(@MaxImportDate,tsRec)
		 WHERE iRec=@importHistoryId
		RETURN 0
		RAISERROR(@ErrMsg, 1, 1)
	END CATCH
	--IF everything is good,we update the success history date and status
	    SELECT @MaxImportDate= MAX(REC_UPDATE_DATE) FROM DWH.CTRL_EBIZ_CS_FLEET_VEHICLE
		UPDATE tbImportHistory
		SET Status=2
		    ,ErrorMsg=@ErrMsg
		    ,tsRec=Coalesce(@MaxImportDate,tsRec)
		 WHERE iRec=@importHistoryId
	
	

END


GO
/****** Object:  StoredProcedure [dbo].[spChangeUserPassword]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Change User Password 
-- =============================================
CREATE PROCEDURE [dbo].[spChangeUserPassword] 
    @uid int,
    @hPwd varchar(40)
AS
BEGIN
	update tbUser set sHPwd=@hPwd where iRec=@uid
	return @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[spChangeUserPasswordWithTID]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Change User Password with Ticket ID
-- ================================================
CREATE PROCEDURE [dbo].[spChangeUserPasswordWithTID] 
    @uid int,
    @reset_id int,
    @hPwd varchar(40)
AS
BEGIN
    update tbUser set 
		sHPwd=@hPwd
	where iRec=@uid;
	if @@ROWCOUNT>0 
	begin 
		update tbResetPwd set 
			dtComplete=getdate() 
		where iRec=@reset_id and kUser=@uid;
	end
	return @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[spClearImportTable]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Clear (Truncate) Import Table
-- =========================================================
CREATE PROCEDURE [dbo].[spClearImportTable]
	@type varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	set @type = UPPER(@type);
	if @type = 'VEHICLETRIM'
		truncate table tbVehicleTrimForImport;
	if @type = 'VEHICLEXCODE'
		truncate table tbVehicleXCodeForImport;
	if @type = 'ORDER_STATUS_1'
		truncate table tbOrderStatus1ForImport;
	if @type = 'ORDER_STATUS_2'
		truncate table tbOrderStatus2ForImport;
	return @@ERROR;
END
GO
/****** Object:  StoredProcedure [dbo].[spCreateEmailQueue]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Create Email Queue
-- =========================================================
CREATE PROCEDURE [dbo].[spCreateEmailQueue]
	@uid int,
	@table varchar(20),
	@type varchar(2),
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	insert into tbEmailQueue
        (cTable, kLink, cType, cStatus, dtStatus, kCreate, dtCreate)
    VALUES 
		(@table, @id, @type, 'QU', getdate(), @uid, getdate());
	return cast(@@IDENTITY as int);
END
GO
/****** Object:  StoredProcedure [dbo].[spCreateForgotPasswordTID]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Create Forgot Password Ticket ID
-- =============================================
CREATE PROCEDURE [dbo].[spCreateForgotPasswordTID] 
    @uid int,
    @ticketId varchar(36)
AS
BEGIN
	SET NOCOUNT ON;
    insert into tbResetPwd (sTID, kUser, dtCreate)  
    select @ticketId, iRec, getdate()
    from tbUser
    where iRec=@uid;
	return cast(@@IDENTITY as int);
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Delete Company
-- =========================================================
create PROCEDURE [dbo].[spDeleteCompany]
	@uid int,
	@id_list varchar(3000)
AS
BEGIN
	update tbCompany set cStatus = 'X'
		where iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	return @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCompanyBySapCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Delete Company
-- =========================================================
Create PROCEDURE [dbo].[spDeleteCompanyBySapCode]
	@uid int,
	@id_list varchar(3000)
AS
BEGIN
	update tbCompany set cStatus = 'X', [dtModify]=getdate()
		where cSAP in (select s  from dbo.SplitString(@id_list, ','));
	return @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [dbo].[spDeleteIncentiveDataLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,George>
-- Create date: <Create Date,,4/3/2014> <Modify Date,,4/4/2014>
-- Description:	<Description,,This procedure is going to delete pricing file from admin page>
-- Modified: 8/27/2019, Erik Mildner, added @modelName to fix nonunique series code.
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteIncentiveDataLink]
	@modelCode varchar(1),
	@modelYear int,
	@modelName varchar(50)
AS
BEGIN
	/* Modified SQL to single statement*/
	SET NOCOUNT ON;
	DELETE FROM  tbDatafileLink WHERE cTable = 'INCENTIVE' AND kLink IN (
		SELECT iRec FROM tbIncentive WHERE cModelCode = @modelCode AND nModelYear = @modelYear and cModelName = @modelName
	);
	RETURN @@ROWCOUNT;
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteIncompleteOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,George Saad>
-- Create date: <Create Date,,4/7/2014>
-- Description:	<Description,,This procedure will delete saved order for the user>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteIncompleteOrder]
	@uid int,
	@orderID int
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @result int, @status varchar(2);

	SELECT @status = cStatus FROM tbOrder WHERE iRec = @orderID AND kOrderUser = @uid
	IF (@status = 'OP')
	BEGIN
		DELETE FROM tbOrderPIO WHERE kOrderDT in (SELECT iRec FROM tbOrderDT WHERE kOrderDS in (SELECT iRec FROM tbOrderDS WHERE kOrder = @orderID))
		DELETE FROM tbOrderDT WHERE kOrderDS in (SELECT iRec FROM tbOrderDS WHERE kOrder = @orderID)
		DELETE FROM tbOrderDS WHERE kOrder = @orderID
		DELETE FROM tbOrder WHERE iRec = @orderID
		SET @result = 1
		RETURN @result
	END
	ELSE
		BEGIN
			SET @result = 2
			RETURN @result
		END
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Delete Order 
-- =========================================================
CREATE PROCEDURE [dbo].[spDeleteOrder]
	@uid int,
	@id_list varchar(3000)
AS
BEGIN
	-- PP : deleted partially
	update tbOrder set 
		cStatus = (case when t3.nCntHMA>0 and t3.nCnt>t3.nCntHMA then 'PP' else 'XX' end)
	from tbOrder t1
	inner join (
		select x2.kOrder, count(x3.iRec) as nCnt, count(case when len(coalesce(x3.sHmaOrderNo, ''))>0 then x3.iRec end) as nCntHMA
		from tbOrderDS x2 
		inner join tbOrderDT x3 on x2.iRec = x3.kOrderDS
		group by x2.kOrder) t3 on t1.iRec = t3.kOrder
	where t1.cStatus in ('CM', 'IP', 'PP') and (t3.nCntHMA=0 or t3.nCnt>t3.nCntHMA) 
		and t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	return @@ROWCOUNT;
END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Delete User 
-- Modified by Eric Kim 2/4/2012.
-- =========================================================
CREATE PROCEDURE [dbo].[spDeleteUser]
	@uid int,
	@id_list varchar(3000)
AS
BEGIN
	update tbUser set sDeletedLogin = sLogin, sLogin=null
		where iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	return @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUserAndCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Delete User 
-- Modified by Eric Kim 2/4/2012.
-- =========================================================
CREATE PROCEDURE [dbo].[spDeleteUserAndCompany]
	@uid int,
	@id_list varchar(3000) --company id list
AS
BEGIN
	declare @deletedCompany int=0;
	if exists(select kUser, count(case when nDefault=1 then 1 end) from tbUserCompany 
		where kUser in (select kUser from tbUserCompany where kCompany in (select cast(s as int) from dbo.SplitString(@id_list, ',')))
			and kCompany not in (select cast(s as int) from dbo.SplitString(@id_list, ','))
		group by kUser 
		having count(case when nDefault=1 then 1 end)=0)
		begin
			set @deletedCompany=0;
			goto ENDProc;
		end
	update tbCompany set cStatus = 'X'
		where iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	set @deletedCompany=@@ROWCOUNT;
	update tbUser set sDeletedLogin = sLogin, sLogin=null
		from tbUser
		inner join (
			select kUser, count(t2.iRec) as nCnt 
			from tbUserCompany t1
			left join tbCompany t2 on t1.kCompany=t2.iRec and cStatus<>'X'
			where kUser in (select kUser from tbUserCompany where kCompany in (select cast(s as int) from dbo.SplitString(@id_list, ',')))
			group by kUser 
		) t2 on tbUser.iRec=t2.kUser and nCnt=0;
ENDProc:	 
	return @deletedCompany;
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUserAndCompanyBySapCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Delete User 
-- Modified by Eric Kim 2/4/2012.
-- =========================================================
CREATE PROCEDURE [dbo].[spDeleteUserAndCompanyBySapCode]
	@uid int,
	@id_list varchar(3000) --company id list
AS
BEGIN
	declare @deletedCompany int=0;
	if exists(select kUser, count(case when nDefault=1 then 1 end) from tbUserCompany 
		where kUser in (select kUser from tbUserCompany where kCompany in (select iRec from tbCompany where cSAP in (select s from dbo.SplitString(@id_list, ','))))
			and kCompany not in (select iRec from tbCompany where cSAP in (select s from dbo.SplitString(@id_list, ',')))
		group by kUser 
		having count(case when nDefault=1 then 1 end)=0)
		begin
			set @deletedCompany=0;
			goto ENDProc;
		end
	update tbCompany set cStatus = 'X'
		where cSAP in (select s from dbo.SplitString(@id_list, ','));
	set @deletedCompany=@@ROWCOUNT;
	update tbUser set sDeletedLogin = sLogin, sLogin=null
		from tbUser
		inner join (
			select kUser, count(t2.iRec) as nCnt 
			from tbUserCompany t1
			left join tbCompany t2 on t1.kCompany=t2.iRec and cStatus<>'X'
			where kUser in (select kUser from tbUserCompany where kCompany in (select iRec from tbCompany where cSAP in (select s from dbo.SplitString(@id_list, ','))))
			group by kUser 
		) t2 on tbUser.iRec=t2.kUser and nCnt=0;
ENDProc:	 
	return @deletedCompany;
END


GO
/****** Object:  StoredProcedure [dbo].[spGetAllocateDealers]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 7/28/2014
-- Description:	Get Allocate Dealers
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllocateDealers]
    @uid int=0,
    @id int=0
AS
BEGIN
	SET NOCOUNT ON; 
	select t1.iRec as id, t1.cSAP as fmcCode, t1.cDealer as fmcDealer, t1.sCompName as fmcName, t2.nCntSub as countFmcSub
	from tbCompany t1
	inner join (
		select x1.kCompany, 
		count(case when x1.nDefault=1 and x2.nDefault=1 then x2.iRec end) as nCntP, 
		count(case when x1.nDefault=0 and x2.nDefault=1 then x2.iRec end) as nCntS, 
		count(case when x1.nDefault=1 and x2.nDefault=0 then x2.iRec end) as nCntSub
		from tbUserCompany x1 
		inner join tbUserCompany x2 on x1.kUser=x2.kUser
		group by x1.kCompany
	) t2 on t1.iRec=t2.kCompany and t2.nCntP=1 and t2.nCntS=0
	where t1.cCompType='FMC' and t1.cStatus='A' and t1.iRec<>@id
	order by t1.cSAP
END

GO
/****** Object:  StoredProcedure [dbo].[spGetBatchOrderReport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Erik Mildner
-- Create date: 1/11/2019
-- Description:	Get Batch Order Report
-- exec [dbo].[spGetBatchOrderReport] 1485, 0
-- =============================================
CREATE PROCEDURE [dbo].[spGetBatchOrderReport] 
    @batchOrderId int = null,
	@errorFlag int = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT [poNo]
      ,[errorMessage]
      ,[errorColumn]
  FROM [HMAFleet].[dbo].[tbOrderDTBatch]
  WHERE [kDataFile] = @batchOrderId and errorFlag = @errorFlag

END
GO
/****** Object:  StoredProcedure [dbo].[spGetCategory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Get Category
-- Modified by Eric Kim 2/4/2012.
-- =========================================================
CREATE PROCEDURE [dbo].[spGetCategory]
@type varchar(20),
@subtype varchar(20)=null
AS
BEGIN
	SET NOCOUNT ON;
	set @type = UPPER(@type);
	set @subtype = UPPER(@subtype);

	--user
	if @type='USER'
		SELECT cast(iRec as varchar(50)) as id, U.sDisplayName as name, cast(null as datetime) as createDate
			FROM dbo.tbUser U
			where cType='G' and sLogin is not null
			order by nOrder;

	--company
	else if @type='COMPANY'
		SELECT distinct cast(cCompType as varchar(50)) as id, C.cCompType as name, cast(null as datetime) as createDate
			FROM dbo.tbCompany C
			where C.cStatus='A'
			order by id desc;

	--orderFMC
	else if @type='ORDER' and @subtype='FMC'
		select top 10 cast(t1.kFMCCompany as varchar(50)) as id, cast(t1.cFMCCode as nvarchar(500)) as name, max(t1.dtCreate) as createDate
			from tbOrder t1
			where t1.cStatus not in ('XX', 'OP')
			group by t1.kFMCCompany, t1.cFMCCode
			order by createDate desc

	--orderENU
	else if @type='ORDER' and @subtype='ENU'
		select top 10 cast(t1.kENUCompany as varchar(50)) as id, cast(t1.cENUCode as nvarchar(500)) as name, max(t1.dtCreate) as createDate
			from tbOrder t1
			where t1.cStatus not in ('XX', 'OP')
			group by t1.kENUCompany, t1.cENUCode
			order by createDate desc

	--incentive
	else if @type='INCENTIVE'
		select cast(nModelYear as varchar(50)) as id, cast(nModelYear as nvarchar(500)) as name, cast(null as datetime) as createDate
			from 
				(select distinct nYear as nModelYear from tbVehicleTrim where nYear>=Year(GETDATE())-2) t1
			order by nModelYear desc

	--dropship
	if @type='DROPSHIP'
		SELECT cast(iRec as varchar(50)) as id, U.sDisplayName as name, cast(null as datetime) as createDate
			FROM dbo.tbUser U
			where cType='G' and U.cGroupCode in ('ENU', 'FMC') and sLogin is not null
			order by nOrder;

	--code
	else if @type='CODE'
		select cCode as id, sDesc as name, cast(null as datetime) as createDate
			from tbVehicleXCode 
			where right(cTable,1)='/'
			order by nOrder;
END



GO
/****** Object:  StoredProcedure [dbo].[spGetCompanies]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Users
-- =============================================
CREATE PROCEDURE [dbo].[spGetCompanies] 
    @id_list varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t1.cSAP as codeSAP, t1.cDealer as dealerCode, t1.cCompType as [type], t1.cStatus as statusCode, t1.sConfirmEmail as confirmEmail, 
			coalesce(t2.kAllocate, t2.kAllocateAlt) as allocateCompany, t3.cSAP as allocateSapCode, t3.cDealer as allocateDealerCode, t2.nCntSub as countFmcSub,
            t1.sNameFirst as firstName, t1.sNameLast as lastName, t1.sPhone as phone, t1.sPhoneExt as phoneExt, t1.sFax as fax, t1.sCompName as companyName, t1.sCompStreet as street, 
            t1.sCompStreet2 as street2, t1.sCompCity as city, t1.cCompState as [state], t1.sCompZip as zip, t1.sCompURL as url, 
            t1.sGenFleetType as fleetType, t1.sGenSizeOfFleet as fleetSize, 
            t1.sGenVmSedan as vmSedan, t1.sGenVmSUV as vmSUV, t1.sGenVmOther as vmOther, t1.sGenHmPeriod as serviceTerm, t1.sGenHmMiles as serviceMile, 
			t5.iRec as userId, t5.sLogin as userEmail, t7.iRec as subacctUserId, t7.sLogin as subacctUserEmail, 
			t30.iActiveEmail as activeEmailId, t30.dtActiveEmail as activeEmailDate
        from tbCompany t1
		left join (
			select x1.kCompany, 
			min(case when x1.nDefault=0 and x2.nDefault=1 then x2.kCompany end) as kAllocate, 
			min(case when x2.nDefault=1 then x2.kCompany end) as kAllocateAlt,
			count(case when x1.nDefault=1 and x2.nDefault=0 then x2.iRec end) as nCntSub
			from tbUserCompany x1 
			inner join tbUserCompany x2 on x1.kUser=x2.kUser
			group by x1.kCompany
		) t2 on t1.cCompType='FMC' and t1.iRec=t2.kCompany
		left join tbCompany t3 on t3.iRec=coalesce(t2.kAllocate, t2.kAllocateAlt)
		left join (
			select x1.kCompany, min(case x4.cGroupCode when 'FMC' then x2.iRec when 'ENU' then x2.iRec end) as kUser, min(case x4.cGroupCode when 'FMS' then x2.iRec end) as kUserSub
			from tbUserCompany x1 
			inner join tbUser x2 on x1.kUser=x2.iRec 
			inner join tbUserLink x3 on x2.iRec=x3.kUser
			inner join tbUser x4 on x3.kGroup=x4.iRec and x4.cType='G' 
			where x2.sLogin is not null 
			group by x1.kCompany) t4 on t4.kCompany=t1.iRec
		left join tbUser t5 on t4.kUser=t5.iRec 
		left join tbUser t7 on t4.kUserSub=t7.iRec 
		left join (
			select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
			from tbEmailQueue 
			where cTable='COMP' and cType='NC' and cStatus<>'ER'
			group by kLink) t30 on t1.iRec=t30.kLink 
        where t1.cStatus<>'X' and t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
END




GO
/****** Object:  StoredProcedure [dbo].[spGetCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 2/4/2013
-- Description:	Get Company Information
-- =============================================
CREATE PROCEDURE [dbo].[spGetCompany] 
    @id int = null,
    @userEmail varchar(60) = null,
    @sapCode varchar(8) = null,
    @dealerCode varchar(20) = null,
    @idUser int = null,
	@retCode int=0 output
AS
BEGIN
	SET NOCOUNT ON;

	if @idUser>0 and (@id =null or @id=0)
		select @retCode=1, @id=kCompany from tbUser t1 inner join tbUserCompany t2 on t1.iRec=t2.kUser and nDefault=1 where @idUser=t1.iRec;
	else if @idUser>0 and @id>0
		select @retCode=iRec from tbUserCompany where kUser=@idUser and kCompany=@id;
	else
		set @retCode=1;

	select t1.iRec as id, t1.cSAP as sap, t1.cDealer as dealerCode, t1.cCompType as [type], t1.cStatus as [status], 
			coalesce(t2.kAllocate, t2.kAllocateAlt) as allocateCompany, t3.cSAP as allocateSapCode, t3.cDealer as allocateDealerCode, t2.nCntSub as countFmcSub,
			t1.sNameFirst as firstName, t1.sNameLast as lastName, t1.sPhone as phone, t1.sPhoneExt as phoneExt, t1.sFax as fax, t1.sCompName as companyName, t1.sConfirmEmail as confirmEmail, t1.sCompStreet as street, 
			t1.sCompStreet2 as street2, t1.sCompCity as city, t1.cCompState as [state], t1.sCompZip as zip, t1.sCompURL as url, 
			t1.sGenFleetType as fleetType, t1.sGenSizeOfFleet as fleetSize, 
			t1.sGenVmSedan as vmSedan, t1.sGenVmSUV as vmSUV, t1.sGenVmOther as vmOther, t1.sGenHmPeriod as serviceTerm, t1.sGenHmMiles as serviceMile, 
			t5.iRec as userId, t5.sLogin as userEmail, t6.nDefault as userDefault, t7.iRec as subacctUserId, t7.sLogin as subacctUserEmail, 
			t30.iActiveEmail as activeEmailId, t30.dtActiveEmail as activeEmailDate
	from tbCompany t1
	left join (
		select x1.kCompany, 
		min(case when x1.nDefault=0 and x2.nDefault=1 then x2.kCompany end) as kAllocate, 
		min(case when x2.nDefault=1 then x2.kCompany end) as kAllocateAlt,
		count(case when x1.nDefault=1 and x2.nDefault=0 then x2.iRec end) as nCntSub
		from tbUserCompany x1 
		inner join tbUserCompany x2 on x1.kUser=x2.kUser
		group by x1.kCompany
	) t2 on t1.cCompType='FMC' and t1.iRec=t2.kCompany
	left join tbCompany t3 on t3.iRec=coalesce(t2.kAllocate, t2.kAllocateAlt)
	left join (
		select x1.kCompany, min(case x4.cGroupCode when 'FMC' then x2.iRec when 'ENU' then x2.iRec end) as kUser, min(case x4.cGroupCode when 'FMS' then x2.iRec end) as kUserSub
		from tbUserCompany x1 
		inner join tbUser x2 on x1.kUser=x2.iRec 
		inner join tbUserLink x3 on x2.iRec=x3.kUser
		inner join tbUser x4 on x3.kGroup=x4.iRec and x4.cType='G' 
		where x2.sLogin is not null 
		group by x1.kCompany) t4 on t4.kCompany=t1.iRec
	left join tbUser t5 on t4.kUser=t5.iRec 
	left join tbUserCompany t6 on t4.kUser=t6.kUser and t1.iRec=t6.kCompany
	left join tbUser t7 on t4.kUserSub=t7.iRec 
	left join (
		select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
		from tbEmailQueue 
		where cTable='COMP' and cType='NC' and cStatus<>'ER'
		group by kLink) t30 on t1.iRec=t30.kLink 
	where t1.cStatus<>'X' 
		and (t1.iRec=@id or @id is null)
		and (t5.sLogin=@userEmail or @userEmail is null)
		and (t1.cSAP=@sapCode or @sapCode is null)
		and (t1.cDealer=@dealerCode or @dealerCode is null)
		and not (@id is null and @userEmail is null and @sapCode is null and @dealerCode is null);
END




GO
/****** Object:  StoredProcedure [dbo].[spGetCompanyToSAP]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,George>
-- Create date: <Create 3,31,2014>
-- Description:	<Description,, This Procedure is made specially for SAP which allow admin to create a user account dynamically on SAP>
-- =============================================
CREATE PROCEDURE [dbo].[spGetCompanyToSAP]
	@companyID varchar(4000)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT t1.iRec AS [ID], t1.cSAP AS [sapNumber], t1.cCompType AS [companyType], 
	coalesce(t2.kAllocate, t2.kAllocateAlt) as allocateCompany, t3.cSAP as allocateSapCode, t3.cDealer as allocateDealerCode, t2.nCntSub as countFmcSub,
	t1.sCompName AS [companyName], t1.sNameFirst AS [firstName], t1.sNameLast AS [lastName], t1.sCompURL AS [url], 
	t1.sCompStreet AS [address1], t1.sCompStreet2 AS [address2], t1.sCompCity AS [city], t1.cCompState AS [state], t1.sCompZip AS [zipCode], 
	t1.sPhone AS [phone], t1.sPhoneExt AS [extension], t1.sFax AS [fax], 
	(case lower(t1.sGenFleetType) when 'own' then 'P' when 'lease' then 'L' end) AS [procurementMethod], 
	t1.cDealer AS [dealer], t1.sGenSizeOfFleet as [fleetSize], t1.sGenHmMiles as [serviceMile], t1.sGenHmPeriod as [serviceTerm], 
	t1.sGenVmSedan as [vmSedan], t1.sGenVmSUV as [vmSUV], t1.sGenVmOther as [vmOther]
	FROM tbCompany t1
	left join (
		select x1.kCompany, 
		min(case when x1.nDefault=0 and x2.nDefault=1 then x2.kCompany end) as kAllocate, 
		min(case when x2.nDefault=1 then x2.kCompany end) as kAllocateAlt,
		count(case when x1.nDefault=1 and x2.nDefault=0 then x2.iRec end) as nCntSub
		from tbUserCompany x1 
		inner join tbUserCompany x2 on x1.kUser=x2.kUser
		group by x1.kCompany
	) t2 on t1.cCompType='FMC' and t1.iRec=t2.kCompany
	left join tbCompany t3 on t3.iRec=coalesce(t2.kAllocate, t2.kAllocateAlt)
	WHERE t1.iRec IN (SELECT CAST(s AS INT) FROM dbo.SplitString(@companyID, ','))
END

GO
/****** Object:  StoredProcedure [dbo].[spGetDeliveryConfirmation]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Get Delivery Confirmation Information 
-- Modified by Eric Kim 2/4/2012.
-- ==================================================
CREATE PROCEDURE [dbo].[spGetDeliveryConfirmation]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT  t1.iRec as id, 
		t1.kUser as r_id, 
		t3.sLogin as r_login, 
		t1.cDealer as dealerCode, 
		t1.sDealerName as dealerName, 
        t1.sStreet as street, 
        t1.sStreet2 as street2, 
        t1.sCity as city, 
        t1.cState as [state], 
        t1.sZip as zip, 
		t1.sContact as contact, 
		t1.sPhone as phone, 
		t1.sPhoneExt as phoneExt, 
		t1.kCreate as createUid, 
		t1.dtCreate as createDate,
		t2.iRec as d_id, 
		t2.nYear as d_year, 
		t2.cModel as d_model, 
		t4.sModelName as d_modelName, 
		t2.sVIN as d_vin, 
		t2.dtDelDate as d_deliveryDate, 
		t2.nMileage as d_mileage
	FROM tbDelConfirm t1 
    INNER JOIN tbDelConfirmItem t2 on t1.iRec=t2.kDelConfirm
    LEFT JOIN tbUser t3 on t1.kUser = t3.iRec
    LEFT JOIN (select distinct cModelCode, sModelName, nYear from tbVehicleTrim) t4 ON t2.cModel=t4.cModelCode and t2.nYear=t4.nYear 
    where t1.iRec = @id
    order by t1.iRec, t2.iRec;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Dropships
-- Modified by Eric Kim 2/4/2012.
-- Modified: 7/18/2018, Erik Mildner, get new dropship data.
-- Modified: 7/21/2020, Erik Mildner, Add isActive filter
-- =============================================
CREATE PROCEDURE [dbo].[spGetDropship]
    @id int=null,
    @code varchar(20)=null
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t1.cStatus as [status], t1.cCode as code, t1.sCompanyName as companyName, t1.sContactName as contactName, t1.sCompStreet as street, 
			t1.sCompStreet2 as street2, t1.sCompCity as city, t1.cCompState as [state], t1.sCompZip as zip, t1.sPhone as phone, t1.sPhone2 as phone2, 
			t1.kUser as r_id, t2.sLogin as [r_login], 
			t30.iActiveEmail as activeEmailId, t30.dtActiveEmail as activeEmailDate,
			t1.specialInstructions, t1.afterHoursDelivery,
			min(CASE dsWH.dayOfWeek WHEN 0 THEN dsWH.openTime ELSE NULL END) as 'monOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 0 THEN dsWH.closeTime ELSE NULL END) as 'monCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 1 THEN dsWH.openTime ELSE NULL END) as 'tuesOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 1 THEN dsWH.closeTime ELSE NULL END) as 'tuesCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 2 THEN dsWH.openTime ELSE NULL END) as 'wedOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 2 THEN dsWH.closeTime ELSE NULL END) as 'wedCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 3 THEN dsWH.openTime ELSE NULL END) as 'thrsOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 3 THEN dsWH.closeTime ELSE NULL END) as 'thrsCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 4 THEN dsWH.openTime ELSE NULL END) as 'friOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 4 THEN dsWH.closeTime ELSE NULL END) as 'friCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 5 THEN dsWH.openTime ELSE NULL END) as 'satOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 5 THEN dsWH.closeTime ELSE NULL END) as 'satCloseHours',
			min(CASE dsWH.dayOfWeek WHEN 6 THEN dsWH.openTime ELSE NULL END) as 'sunOpenHours',
			min(CASE dsWH.dayOfWeek WHEN 6 THEN dsWH.closeTime ELSE NULL END) as 'sunCloseHours'
		from tbDropship t1 
		left join tbUser t2 on t1.kUser=t2.iRec 
		left join (
			select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
			from tbEmailQueue 
			where cTable='DROPSHIP' and cType='NC' and cStatus<>'ER'
			group by kLink) t30 on t1.iRec=t30.kLink
		inner join tbDropshipWorkingHour as dsWH
			on dsWH.kDropship = t1.irec
		where (t1.iRec=@id or @id is null)
			and ((t1.cCode=@code and t1.cStatus='A') or @code is null)
			and not (@id is null and @code is null)
			and t1.isActive = 1
		group by t1.iRec, t1.cStatus, t1.cCode, t1.sCompanyName , t1.sContactName ,
			t1.sCompStreet , t1.sCompStreet2 , t1.sCompCity , t1.cCompState , t1.sCompZip , t1.sPhone , t1.sPhone2 ,
			t1.kUser , t2.sLogin , t30.iActiveEmail , t30.dtActiveEmail, t1.specialInstructions, t1.afterHoursDelivery
END



GO
/****** Object:  StoredProcedure [dbo].[spGetDropships]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Dropships
-- Modified by Eric Kim 2/4/2012.
-- =============================================
CREATE PROCEDURE [dbo].[spGetDropships]
    @id_list varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t1.cStatus as statusCode, t1.cCode as code, t1.sCompanyName as companyName, t1.sContactName as contactName, t1.sCompStreet as street, 
			t1.sCompStreet2 as street2, t1.sCompCity as city, t1.cCompState as state, t1.sCompZip as zip, t1.sPhone as phone, t1.sPhone2 as phone2, 
			t1.kUser as reqUserId, t2.sLogin as reqUserEmail, t30.iActiveEmail as activeEmailId, t30.dtActiveEmail as activeEmailDate
        from tbDropship t1 
        left join tbUser t2 on t1.kUser=t2.iRec 
        left join (
            select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
            from tbEmailQueue 
            where cTable='DROPSHIP' and cType='NC' and cStatus<>'ER'
            group by kLink) t30 on t1.iRec=t30.kLink 
        where t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDropshipsAuthorized]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,Daniel>
-- Create date: <Create Date,6/29/2017>
-- Description:	<Description,Get all Authorized Dropships>
-- =============================================

CREATE PROCEDURE [dbo].[spGetDropshipsAuthorized]

AS
BEGIN
	SET NOCOUNT ON;

	select distinct t1.iRec as id, t1.cStatus as [status], t1.cCode as code, t1.sCompanyName as companyName, 
		t1.sContactName as contactName, t1.sCompStreet as street, t1.sCompStreet2 as street2, t1.sCompCity as city, 
		t1.cCompState as [state], t1.sCompZip as zip, t1.sPhone as phone, t1.sPhone2 as phone2, t1.DealerInd as dealerInd, 
		t1.courtesyDealerFlag as courtesyDealerFlag, t1.latitude as latitude, t1.longitude as longitude
	from tbDropship (NOLOCK) t1
	where t1.DealerInd = 1
	and t1.cStatus = 'A'
	and t1.courtesyDealerFlag = 'Y'
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDropshipsByCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Daniel
-- Create date: 6/19/2017
-- Description:	Get Dropships by Company
-- Modified by Daniel 6/19/2017.
-- =============================================

CREATE PROCEDURE [dbo].[spGetDropshipsByCompany]
    @companyId int=null,
    @codeOrName varchar(20)=null,
    @state varchar(2)=null,
    @zip varchar(5)=null
AS
BEGIN
	SET NOCOUNT ON;

    select distinct t1.iRec as id, t1.cStatus as [status], t1.cCode as code, t1.sCompanyName as companyName, 
	t1.sContactName as contactName, t1.sCompStreet as street, t1.sCompStreet2 as street2, t1.sCompCity as city, 
	t1.cCompState as [state], t1.sCompZip as zip, t1.sPhone as phone, t1.sPhone2 as phone2, t1.DealerInd as dealerInd,
	t1.courtesyDealerFlag as courtesyDealerFlag, t1.latitude as latitude, t1.longitude as longitude
		from tbDropship (NOLOCK) t1 
		left join tbCompanyDropshipLink (NOLOCK) t2 on t1.iRec=t2.kDropship
		where t1.cStatus='A' 
			and t1.cCode=@codeOrName
			or (
				t2.kCompany=@companyId
				and (t1.sCompanyName like CONCAT(@codeOrName, '%'))
				and (t1.cCompState=@state or @state is null)
				and (substring(t1.sCompZip, 1, 5)=@zip or @zip is null)
			);
END



GO
/****** Object:  StoredProcedure [dbo].[spGetENUsByCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author, Daniel Lee>
-- Create date: <Create Date, 6/29/2017>
-- Description:	<Description, Get ENU by FMC Company>
-- =============================================

CREATE PROCEDURE [dbo].[spGetENUsByCompany]
	@companyId int
	
AS
BEGIN
	SET NOCOUNT ON;
	select distinct t1.kCompanyENU as id, t2.cCompType as [type], t2.sCompName as companyName, t2.sCompStreet as street, 
		t2.sCompStreet2 as street2, t2.sCompCity as city, t2.cCompState as [state], t2.sCompZip as zip, t2.sCompURL as [url], 
		t2.cStatus as [status], t2.cSAP as codeSAP, t2.sNameFirst as firstName, t2.sNameLast as lastName, t2.sPhone as phone, 
		t2.sPhoneExt as phoneExt, t2.sFax as fax, t2.sConfirmEmail as confirmEmail
	from tbCompanyFmcEnuLink (NOLOCK) t1
	left join tbCompany (NOLOCK) t2 on t1.kCompanyENU = t2.iRec
	where t2.cStatus = 'A'
	and t2.cCompType = 'ENU'
	and t1.kCompanyFMC = @companyId --@cid
END

GO
/****** Object:  StoredProcedure [dbo].[spGetFile]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Get File Information 
-- =============================================
CREATE PROCEDURE [dbo].[spGetFile] 
    @id int
AS
BEGIN
	SET NOCOUNT ON;
	select t1.kUser as [uid], t1.sFilename as [filename], t1.sContentType as contentType, t1.nSize as size, t1.tsRec as [date], t2.nCnt as linkCount
    from tbDatafile t1
    inner join (
        select kDatafile, count(*) as nCnt 
        from tbDatafileLink group by kDatafile) t2 on t1.iRec=t2.kDatafile
    where t1.iRec=@id
END
GO
/****** Object:  StoredProcedure [dbo].[spGetForgotTID]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get Forgot Ticket ID
-- =============================================
CREATE PROCEDURE [dbo].[spGetForgotTID] 
    @tid varchar(36)
AS
BEGIN
	SET NOCOUNT ON;
	select top 1 DATEDIFF(minute, dtCreate, GETDATE()) as [min], dtComplete as completeDate
    from tbResetPwd 
    where sTID=@tid
	order by dtCreate desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetForgotTIDwithUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get Forgot Ticket ID with User
-- =============================================
CREATE PROCEDURE [dbo].[spGetForgotTIDwithUser] 
    @login varchar(60)
AS
BEGIN
	SET NOCOUNT ON;
	select t2.iRec as id, t2.kUser as [uid], t2.sTID as tid
    from tbUser t1
    inner join tbResetPwd t2 on t1.iRec=t2.kUser
    where t1.sLogin=@login and t2.dtComplete is null and DATEDIFF(minute, t2.dtCreate, GETDATE())<60
    order by t2.iRec desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetIncentive]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Incentive Information
-- Modified: 8/23/2019, Erik, Added modelname to fix series code nonuniqueness
-- Modified: 02/08/2021, Rohit Srivastava , HF#415 - Include newly added column ('masterStatusOverride')
-- =============================================
CREATE PROCEDURE [dbo].[spGetIncentive] 
    @uid int=0,
    @modelCode varchar(1) = null,
    @modelYear int=0,
    @modelName varchar(50)
	
AS
BEGIN
	SET NOCOUNT ON;
    select id=t1.iRec, modelCode=t1.cModelCode, [year]=t1.nModelYear, 
            [status]=t1.cStatus, [adminOrderStatus]=t1.cAdminOrderStatus,
			masterStatusOverride = t1.cMasterStatusOverride,incentive=t1.cyIncentive, 
            SOPDate=t1.dtSOP, finalOrderDate=t1.dtFinalOrder
		from tbIncentive t1 
		inner join (select distinct cModelCode, sModelName, nYear from tbVehicleTrim) t2 
			on t1.cModelCode=t2.cModelCode and t1.nModelYear = t2.nYear
		where t1.cModelCode=@modelCode and t1.nModelYear=@modelYear and t1.cModelName = @modelName;
END



GO
/****** Object:  StoredProcedure [dbo].[spGetIncentives]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Get Incentive Information
-- Modified: 9/9/2019, Erik, Added modelname to fix series code nonuniquness
-- Modified: 02/08/2021, Rohit Srivastava , HF#415 - Include newly added column ('masterStatusOverride')
-- =============================================
CREATE PROCEDURE [dbo].[spGetIncentives] 
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t4.sModelName as modelname, t4.cModelCode as modelcode, t4.nYear as [year], t1.cStatus as [status], 
		t1.cMasterStatusOverride as masterstatusoverride, t1.cyIncentive as incentive, t1.dtSOP as sopDate, t1.dtFinalOrder as finalOrderDate,
        t1.dtModify as modifiedDate, t5.kDatafile as fileId, t6.sFilename as [filename], t6.sContentType as contentType, 
		t6.nSize as fileSize, t6.tsRec as fileDate
        from tbIncentive t1
        inner join (
            select sModelName, min(iRec) as iRecTrim, max(nYear) as nMaxYear
            from tbVehicleTrim
			where cStatus='A'
            group by sModelName) t2 on t1.cModelName=t2.sModelName 
        inner join (
            select sModelName, nYear, min(iRec) as iRecTrim
            from tbVehicleTrim
			where cStatus='A'
            group by sModelName, nYear) t3 on t2.sModelName=t3.sModelName and t1.nModelYear=t3.nYear 
        inner join tbVehicleTrim t4 on t3.iRecTrim=t4.iRec
        left join tbDatafileLink t5 on t5.cTable='INCENTIVE' and t5.nPrimary=1 and t5.kLink=t1.iRec
        left join tbDatafile t6 on t5.kDatafile=t6.iRec
        where t1.cStatus='A' and t1.nModelYear in (t2.nMaxYear, t2.nMaxYear-1, t2.nMaxYear-2) 
        order by t4.nYear desc, t4.sModelName;
END

GO
/****** Object:  StoredProcedure [dbo].[spGetListingCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Code (in admin) 
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingCode]
@type varchar(20),
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)=''
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		name varchar(500) not Null,
		code varchar(50) Null,
		[status] varchar(1) Null,
		[date] datetime Null,
		modelname varchar(50) Null,
		modelcode varchar(20) Null,
		[year] int Null,
		trimname varchar(100) Null,
		trimcode varchar(20) Null,
		filter varchar(500) Null,
		filtercode varchar(50) Null,
		_dummy_ int
	);

	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	set @type = REPLACE(@type, '''', '''''');
	if @sortkey is null or @sortkey='' 
		set @sortkey = 'modelname';
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'id' THEN 't1.iRec!' 
			WHEN 'name' THEN 't1.sDesc!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'code' THEN 't1.cCode!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'status' THEN 't1.cStatus!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'date' THEN 't1.dtModify!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'modelname' THEN 't2.sModelName!, t2.nYear, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'modelcode' THEN 't2.cModelCode!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode'
			WHEN 'year' THEN 't2.nYear!, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'trimname' THEN 't2.sName!, t2.nYear, t2.sModelName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'trimcode' THEN 't2.cCode!, t2.nYear, t2.sModelName, t2.sName, t3.sDesc, t3.cCode' 
			WHEN 'filter' THEN 't3.sDesc!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
			WHEN 'filtercode' THEN 't3.cCode!, t2.nYear, t2.sModelName, t2.sName, t2.cCode, t3.sDesc, t3.cCode' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);
	set @SQL_select = 't1.iRec as id, t1.sDesc as name, t1.cCode as code, t1.cStatus as status, t1.dtModify as [date], 
		t2.sModelName as modelname, t2.cModelCode as modelcode, t2.nYear as [year], t2.sName as trimname, t2.cCode as trimcode, 
		t3.sDesc as filter, t3.cCode as filtercode';
	set @SQL_from = 'from tbVehicleXCode t1
        inner join tbVehicleTrim t2 on t1.kVehicleTrim=t2.iRec
        left join tbVehicleXCode t3 on t1.kVehicleXCode=t3.iRec
		where t1.cStatus=''A'' and t1.cTable=''' + @type + '''';
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetListingCodeVehicleTrim]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Code Vehicle Trim (in admin) 
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingCodeVehicleTrim]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)=''
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		name varchar(500) not Null,
		code varchar(50) Null,
		[status] varchar(1) Null,
		[date] datetime Null,
		modelname varchar(50) Null,
		modelcode varchar(20) Null,
		[year] int Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	if @sortkey is null or @sortkey='' 
		set @sortkey = 'modelname';
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'id' THEN 'iRec!'
			WHEN 'name' THEN 'sName!, cCode, nYear, sModelName, sName' 
			WHEN 'code' THEN 'cCode!, nYear, sModelName, sName' 
			WHEN 'status' THEN 'cStatus!, nYear, sModelName, sName, cCode' 
			WHEN 'date' THEN 'dtModify!, nYear, sModelName, sName, cCode' 
			WHEN 'modelname' THEN 'sModelName!, nYear, sName, cCode' 
			WHEN 'modelcode' THEN 'cModelCode!, nYear, sModelName, sName'
			WHEN 'year' THEN 'nYear!, sModelName, sName, cCode' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);
	set @SQL_select = 'iRec as id, sName as name, cCode as code, cStatus as status, dtModify as date,
		sModelName as modelname, cModelCode as modelcode, nYear as [year]';
	set @SQL_from ='from tbVehicleTrim where cStatus=''A''';
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetListingCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 2/4/2013
-- Description:	Get Listing Company (in admin) 
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingCompany]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)='',
@category varchar(3)=null,
@name varchar(100)=null,
@code varchar(30)=null,
@userEmail varchar(100)=null,
@company varchar(100)=null
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		[status] varchar(1) Null,
		name varchar(110) Null,
		regdate datetime Null,
		[type] varchar(50) Null,
		company varchar(100) Null,
		code varchar(8) Null,
		mgrId int,
		mgrEmail varchar(60) Null,
		mgrType varchar(10) Null,
		userId int,
		userEmail varchar(60) Null,
		subacctUserId int,
		subacctuserEmail varchar(60) Null,
		lastActiveEmailSent datetime Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	DECLARE @SQL_Condition nvarchar(4000) = '';
	if @sortkey is null or @sortkey='' 
		set @sortkey = 'name';
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'rid' THEN 'iRec!'
			WHEN 'id' THEN 'iRec!'
			WHEN 'name' THEN 't1.sNameFirst!, t1.sNameLast!' 
			WHEN 'status' THEN 't1.cStatus!, t1.sNameFirst, t1.sNameLast' 
			WHEN 'regdate' THEN 't1.dtCreate!, t1.sNameFirst, t1.sNameLast' 
			WHEN 'mgrEmail' THEN 't2.mgrEmail!, t1.sNameFirst, t1.sNameLast' 
			WHEN 'type' THEN 't1.cCompType!, t1.sNameFirst, t1.sNameLast' 
			WHEN 'company' THEN 't1.sCompName!, t1.sNameFirst, t1.sNameLast' 
			WHEN 'code' THEN 't1.cSAP!, t1.sNameFirst, t1.sNameLast' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);

	if len(@category)>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.cCompType=''' + @category + ''' ';
	if LEN(@name)>0
		set @SQL_Condition = @SQL_Condition + 'and (coalesce(t1.sNameFirst, '''')+'' ''+coalesce(t1.sNameLast, '''')) like ''%' + dbo.CSP(@name) + '%'' ';
	if LEN(@code)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.cSAP like ''%' + dbo.CSP(@code) + '%'' ';
	if LEN(@userEmail)>0
		set @SQL_Condition = @SQL_Condition + 'and t2.mgrEmail like ''%' + dbo.CSP(@userEmail) + '%'' ';
	if LEN(@company)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sCompName like ''%' + dbo.CSP(@company) + '%'' ';

	set @SQL_select = 't1.iRec as id, t1.cStatus as status, rtrim(coalesce(t1.sNameFirst, '''')+'' ''+coalesce(t1.sNameLast, '''')) as name,
			t1.dtCreate as regdate, t1.cCompType as type, t1.sCompName as company, t1.cSAP as code, 
			t2.mgrId, t2.mgrEmail, t2.mgrType, t2.userId, t2.userEmail, t2.subacctUserId, t2.subacctUserEmail, 
			t30.dtActiveEmail as lastActiveEmailSent';
    set @SQL_from = 'from tbCompany t1
		left join (
			select s4.kCompany, s4.kUser, s4.kUserSub, 
			(case when s6.nDefault=1 then s5.iRec else s7.iRec end) as mgrId, 
			(case when s6.nDefault=1 then s5.sLogin else s7.sLogin end) as mgrEmail, 
			(case when s6.nDefault=1 then ''PRIMARY'' else ''SUB'' end) as mgrType, 
			s5.iRec as userId, s5.sLogin as userEmail, 
			s7.iRec as subacctUserId, s7.sLogin as subacctUserEmail
			from (
				select x1.kCompany, min(case x4.cGroupCode when ''FMC'' then x2.iRec when ''ENU'' then x2.iRec end) as kUser, 
				min(case x4.cGroupCode when ''FMS'' then x2.iRec end) as kUserSub
				from tbUserCompany x1 
				inner join tbUser x2 on x1.kUser=x2.iRec 
				inner join tbUserLink x3 on x2.iRec=x3.kUser
				inner join tbUser x4 on x3.kGroup=x4.iRec and x4.cType=''G'' 
				where x2.sLogin is not null 
				group by x1.kCompany) s4 
			left join tbUser s5 on s4.kUser=s5.iRec 
			left join tbUserCompany s6 on s4.kUser=s6.kUser and s4.kCompany=s6.kCompany
			left join tbUser s7 on s4.kUserSub=s7.iRec) t2 on t1.iRec=t2.kCompany 
        left join (
            select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
            from tbEmailQueue 
            where cTable=''COMP'' and cType=''NC'' and cStatus<>''ER''
            group by kLink) t30 on t1.iRec=t30.kLink 
        where t1.cStatus<>''X''
		' + @SQL_Condition;
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetListingContent]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Content (CMS in admin) 
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingContent]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)=''
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		name varchar(50) not Null,
		[desc] varchar(1000) Null,
		url varchar(300) Null,
		edit varchar(500) Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	if @sortkey is null or @sortkey='' 
		set @sortkey = 'nOrder';
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'id' THEN 'iRec!'
			WHEN 'name' THEN 'sName!' 
			WHEN 'desc' THEN 'sDesc!, sName' 
			WHEN 'url' THEN 'sUrl!, sName' 
			WHEN 'edit' THEN 'sLink!, sName' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);
	set @SQL_select = 'iRec as id, sName as name, sDesc as [desc], sUrl as url, sLink as edit';
    set @SQL_from = N'from tbContent';
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetListingDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Dropship (in admin)
-- Modified: 7/18/2018, Erik Mildner, get new dropship data.
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingDropship]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)='',
@category_id int=0,
@dropship varchar(30)=null,
@requserEmail varchar(60)=null,
@date1 datetime=null,
@date2 datetime=null,
@company varchar(100)=null,
@id int=0
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		requserEmail varchar(60) null,
		requsertype varchar(50) Null,
		[status] varchar(1) Null,
		code varchar(20) Null,
		company varchar(50) Null,
		contact varchar(50) Null,
		[address] varchar(1000) Null,
		street varchar(50) Null,
		street2 varchar(50) Null,
		city varchar(50) Null,
		[state] varchar(2) Null,
		zip varchar(10) Null,
		phone varchar(20) Null,
		phone2 varchar(20) Null,
		[date] datetime Null,
		[lastActiveEmailSent] datetime Null,
		[specialInstructions] varchar(30) Null,
		[afterHoursDelivery] varchar(1) Null,
		[monOpenHours] varchar(20) Null,
		[monCloseHours] varchar(20) Null,
		[tuesOpenHours] varchar(20) Null,
		[tuesCloseHours] varchar(20) Null,
		[wedOpenHours] varchar(20) Null,
		[wedCloseHours] varchar(20) Null,
		[thrsOpenHours] varchar(20) Null,
		[thrsCloseHours] varchar(20) Null,
		[friOpenHours] varchar(20) Null,
		[friCloseHours] varchar(20) Null,
		[satOpenHours] varchar(20) Null,
		[satCloseHours] varchar(20) Null,
		[sunOpenHours] varchar(20) Null,
		[sunCloseHours] varchar(20) Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	DECLARE @SQL_Condition nvarchar(4000) = '';
	if @sortkey is null or @sortkey='' 
	begin
		set @sortkey = 'date';
		set @sortorder = 'desc';
	end
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'rid' THEN 'iRec!'
			WHEN 'id' THEN 'iRec!'
			WHEN 'requserEmail' THEN 't2.sLogin!, t1.dtCreate desc' 
			WHEN 'requsertype' THEN 't4.cGroupCode!, t1.dtCreate desc' 
			WHEN 'status' THEN 't1.cStatus!, t1.dtCreate desc' 
			WHEN 'code' THEN 't1.cCode!, t1.dtCreate desc' 
			WHEN 'company' THEN 't1.sCompanyName!, t1.dtCreate desc' 
			WHEN 'contact' THEN 't1.sContactName!, t1.dtCreate desc' 
			WHEN 'address' THEN '(coalesce(t1.sCompCity, '''')+'', ''+coalesce(t1.cCompState, ''''))!, t1.dtCreate desc' 
			WHEN 'phone' THEN 't1.sPhone!, t1.dtCreate desc' 
			WHEN 'phone' THEN 't1.sPhone2!, t1.dtCreate desc' 
			WHEN 'date' THEN 't1.dtCreate!' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);

	set @SQL_Condition = 'coalesce(t1.DealerInd,0)=0 ';
	if @category_id>0 
		set @SQL_Condition = @SQL_Condition + 'and t3.kGroup=' + cast(@category_id as varchar(500));
	if LEN(@dropship)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.cCode like ''%' + dbo.CSP(@dropship) + '%'' ';
	if LEN(@requserEmail)>0
		set @SQL_Condition = @SQL_Condition + 'and t2.sLogin=''' + dbo.CSP(@requserEmail) + ''' ';
	if LEN(@date1)>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.dtCreate>='+ dbo.CSD(@date1) + ' ';
	if LEN(@date2)>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.dtCreate<='+ dbo.CSD2(@date2) + ' ';
	if LEN(@company)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sCompanyName like ''%' + dbo.CSP(@company) + '%'' ';
	if @id>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.iRec=' + cast(@id as varchar(500));
	if len(@SQL_Condition)>0
		set @SQL_Condition = ' where ' + @SQL_Condition + ' ';

	set @SQL_select = 't1.iRec as id, t2.sLogin as requserEmail, t4.cGroupCode as requsertype, t1.cStatus as status, t1.cCode as code, 
            t1.sCompanyName as company, t1.sContactName as contact, (coalesce(t1.sCompCity, '''')+'', ''+coalesce(t1.cCompState, '''')) as address,
            t1.sCompStreet as street, t1.sCompStreet2 as street2, t1.sCompCity as city,
            t1.cCompState as state, t1.sCompZip as zip, t1.sPhone as phone, t1.sPhone2 as phone2, t1.dtCreate as date,
            t30.dtActiveEmail as lastActiveEmailSent, t1.specialInstructions, t1.afterHoursDelivery,
			dsMon.openTime as monOpenHours, dsMon.closeTime as monCloseHours, dsTues.openTime as tuesOpenHours, dsTues.closeTime as tuesCloseHours,
			dsWed.openTime as wedOpenHours, dsWed.closeTime as wedCloseHours, dsThrs.openTime as thrsOpenHours, dsThrs.closeTime as thrsCloseHours,
			dsFri.openTime as friOpenHours, dsFri.closeTime as friCloseHours, dsSat.openTime as satOpenHours, dsSat.closeTime as satCloseHours,
			dsSun.openTime as sunOpenHours, dsSun.closeTime as sunCloseHours
			';
	set @SQL_from = 'from tbDropship t1
        left join tbUser t2 on t1.kUser=t2.iRec and t2.cType=''U''
        left join tbUserLink t3 on t2.iRec=t3.kUser
        left join tbUser t4 on t3.kGroup=t4.iRec and t4.cType=''G''
        left join (
            select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
            from tbEmailQueue 
            where cTable=''DROPSHIP'' and cType=''NC'' and cStatus<>''ER''
            group by kLink) t30 on t1.iRec=t30.kLink
		inner join tbDropshipWorkingHour as dsMon
			on dsMon.kDropship = t1.irec and dsMon.dayOfWeek = 0
		inner join tbDropshipWorkingHour as dsTues
			on dsTues.kDropship = t1.irec and dsTues.dayOfWeek = 1
		inner join tbDropshipWorkingHour as dsWed
			on dsWed.kDropship = t1.irec and dsWed.dayOfWeek = 2
		inner join tbDropshipWorkingHour as dsThrs
			on dsThrs.kDropship = t1.irec and dsThrs.dayOfWeek = 3
		inner join tbDropshipWorkingHour as dsFri
			on dsFri.kDropship = t1.irec and dsFri.dayOfWeek = 4
		inner join tbDropshipWorkingHour as dsSat
			on dsSat.kDropship = t1.irec and dsSat.dayOfWeek = 5
		inner join tbDropshipWorkingHour as dsSun
			on dsSun.kDropship = t1.irec and dsSun.dayOfWeek = 6
		' + @SQL_Condition;
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END

GO
/****** Object:  StoredProcedure [dbo].[spGetListingIncentive]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Incentive (in admin)
-- Modified: 8/23/2019, Erik Mildner, Added model name to fix series code nonuniqueness
-- Modified: 02/08/2021, Rohit Srivastava, HF#415 - Include newly added column ('MasterStatusOverride') of TbIncentive.
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingIncentive]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)='',
@category_id int=0,
@modelname varchar(30)=null
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		model varchar(50) Null,
		modelcode varchar(20) Null,
		[year] int Null,
		pricing int Null,
		[status] varchar(1) Null,
		admin_order_status varchar(1) null,
		sap_status varchar(1) null,
		master_status_override varchar(1) null,
		incentive decimal(10, 4) Null,
		sop_date datetime Null,
		final_order_date datetime Null,
		modify_date datetime Null,
		fileid int Null,
		[filename] nvarchar(500) Null,
		filedate datetime Null,
		filetype varchar(100) Null,
		filesize bigint Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	DECLARE @SQL_Condition nvarchar(4000) = '';
	if @sortkey is null or @sortkey=''
		set @sortkey = 'model';
	set @SQL_Sort =
		(CASE @sortkey
			WHEN 'id' THEN 'iRec!'
			WHEN 'model' THEN 't1.sModelName!, t1.cModelCode, t1.nYear'
			WHEN 'modelcode' THEN 't1.cModelCode!, t1.sModelName, t1.nYear'
			WHEN 'year' THEN 't1.nYear!, t1.cModelCode'
			WHEN 'pricing' THEN 't4.iRec!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'status' THEN 't2.cStatus!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'incentive' THEN 't2.cyIncentive!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'sop_date' THEN 't2.dtSOP!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'final_order_date' THEN 't2.dtFinalOrder!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'modify_date' THEN 't2.dtModify!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'filename' THEN 't4.sFilename!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'filedate' THEN 't4.tsRec!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'filetype' THEN 't4.sContentType!, t1.sModelName, t1.cModelCode, t1.nYear'
			WHEN 'filesize' THEN 't4.nSize!, t1.sModelName, t1.cModelCode, t1.nYear'
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);	
	if @category_id>0
		set @SQL_Condition = @SQL_Condition + 'and t1.nYear=' + cast(@category_id as varchar(500));
	if LEN(@modelname)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sModelName=''' + dbo.CSS(@modelname) + ''' ';
	if len(@SQL_Condition)>0
		set @SQL_Condition = ' where ' + substring(@SQL_Condition, 5, 8000) + ' ';
		set @SQL_select = 't2.iRec as id, t1.sModelName as model, t1.cModelCode as modelcode, t1.nYear as year,
		t4.iRec as pricing, t2.cStatus as status, t2.cAdminOrderStatus as admin_order_status,t1.cStatus as sap_status,t2.cMasterStatusOverride as master_status_override,  t2.cyIncentive as incentive,
		t2.dtSOP as sop_date, t2.dtFinalOrder as final_order_date, t2.dtModify as modify_date,
		t4.iRec as fileid, t4.sFilename as filename, t4.tsRec as filedate, t4.sContentType as filetype, t4.nSize as filesize';
        set @SQL_from = 'from (select cModelCode, sModelName, nYear, min(cStatus) as cStatus from tbVehicleTrim where nYear>=Year(GETDATE())-2 group by cModelCode, sModelName, nYear) t1
        left join tbIncentive t2 on t1.cModelCode=t2.cModelCode and t1.nYear=t2.nModelYear and t1.sModelName = t2.cModelName
        left join tbDatafileLink t3 on t3.cTable=''INCENTIVE'' and t3.kLink=t2.iRec
        left join tbDatafile t4 on t3.kDatafile=t4.iRec
		' + @SQL_Condition;

	insert into @resultset exec dbo.spGetPageRecordset
		@page=@page,
		@items_per_page=@items_per_page,
		@SQL_select=@SQL_select,
		@SQL_from=@SQL_from,
		@SQL_Sort=@SQL_Sort,
		@item_count=@item_count OUTPUT,
		@display_page=@display_page OUTPUT;
		
	select * from @resultset;
	--Print @resultset
END
GO
/****** Object:  StoredProcedure [dbo].[spGetListingOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/17/2012
-- Description:	Get Listing Order (in admin) 
-- Modified by Daniel 6/20/2017.
-- Modified by Erik 6/19/2020, added search by multiple PO
--DECLARE	@return_value int,
--		@item_count int,
--		@display_page int
--EXEC	@return_value = [dbo].[spGetListingOrder]
--		@uid = 242,
--		@page = 0,
--		@items_per_page = 100,
--		@item_count = @item_count OUTPUT,
--		@display_page = @display_page OUTPUT,
--		@sortkey = N'orderDate',
--		@sortorder = N'desc',
--		@category_id = 0,
--		@pono = N'87689,76345,69976,IDCTEST02',
--		@vin = NULL,
--		@date1 = NULL,
--		@date2 = NULL,
--		@fmccode = NULL,
--		@enucode = NULL,
--		@fmcname = NULL,
--		@enuname = NULL,
--		@id = 0,
--		@multipleOrder = 1
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingOrder]
	@uid int=0,
	@page int=0,
	@items_per_page int=0,
	@item_count int=0 output,
	@display_page int=0 output,
	@sortkey varchar(100)=null,
	@sortorder varchar(100)='',
	@category_id int=0,
	@pono varchar(max)=null,
	@vin varchar(50)=null,
	@date1 datetime=null,
	@date2 datetime=null,
	@fmccode varchar(30)=null,
	@enucode varchar(30)=null,
	@fmcname varchar(100)=null,
	@enuname varchar(100)=null,
	@id int=0,
	@multipleOrder bit = 0
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		fmcId int not Null,
		fmcCode varchar(8) Null,
		fmcDealerCode varchar(20) Null,
		fmcName varchar(110) Null,
		enuId int not Null,
		enuCode varchar(8) Null,
		enuDealerCode varchar(20) Null,
		enuName varchar(100) Null,
		poNo varchar(30) Null,
		salesTypeCode varchar(1) Null,
		salesType varchar(500) Null,
		statusCode varchar(2) Null,
		[status] varchar(500) Null,
		mark varchar(1) Null,
		orderUid int Null,
		orderUserEmail varchar(110) Null,
		orderDate datetime Null,
		createDate datetime Null,
		modifyDate datetime Null,
		lastCancelEmailSent datetime Null,
		vehicleId int Null,
		[year] int Null,
		trimCode varchar(50) Null,
		trim varchar(500) Null,
		modelCode varchar(20) Null,
		model varchar(50) Null,
		totalQty int Null,
		countDropship int Null,
		countItems int Null,
		countVehicleTrims int Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	DECLARE @SQL_Condition nvarchar(4000) = '';
	if @sortkey is null or @sortkey='' 
	begin
		set @sortkey = 'orderDate';
		set @sortorder = 'desc';
	end
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'id' THEN 'iRec!'
			WHEN 'fmcCode' THEN 't1.cFMCCode!, t1.iRec desc' 
			WHEN 'fmcDealerCode' THEN 't1.cFMCDealer!, t1.iRec desc' 
			WHEN 'fmcName' THEN 't1.sFMCName!, t1.iRec desc' 
			WHEN 'enuCode' THEN 't1.cENUCode!, t1.iRec desc' 
			WHEN 'enuName' THEN 't1.sENUName!, t1.iRec desc' 
			WHEN 'poNo' THEN 't1.sPONo!, t1.iRec desc' 
			WHEN 'salesType' THEN 't18.sDesc!, t1.iRec desc' 
			WHEN 'statusCode' THEN 't1.cStatus!, t1.iRec desc' 
			WHEN 'status' THEN 't13.sDesc !, t1.iRec desc' 
			WHEN 'mark' THEN 't17.cType!, t1.iRec desc' 
			WHEN 'orderUserEmail' THEN 't16.sLogin!, t1.iRec desc' 
			WHEN 'orderDate' THEN 't1.dtOrder!, t1.iRec desc' 
			WHEN 'createDate' THEN 't1.dtCreate!, t1.iRec desc' 
			WHEN 'modifyDate' THEN 't1.dtModify!, t1.iRec desc' 
			WHEN 'totalQty' THEN 't2.nQty!, t1.iRec desc' 
			WHEN 'countDropship' THEN 't2.nCntDropship!, t1.iRec desc' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);

	set @SQL_Condition = 't1.cStatus not in (''OP'') ';
	if @category_id>0 
		set @SQL_Condition = @SQL_Condition + 'and (t1.kFMCCompany='+cast(@category_id as varchar(500)) +' or t1.kENUCompany='+cast(@category_id as varchar(500)) +') ';
	if LEN(@pono)>0
		if @multipleOrder = 0
		begin
			set @pono = substring(@pono,1,30);
			set @SQL_Condition = @SQL_Condition + 'and t1.sPONo like ''%' + dbo.CSP(@pono) + '%'' ';
		end
		else
			set @SQL_Condition = @SQL_Condition + 'and t1.sPONo in (select s  from dbo.SplitString('''+ @pono+''', '',''))';
	if LEN(@vin)>0
		set @SQL_Condition = @SQL_Condition + 'and 
								(t1.iRec in
									(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
										(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK)  WHERE tbOrderDT.iRec in 
											(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like ''%'+ dbo.CSP(@vin) + ''')
										)
									)
								)';
	if LEN(@date1)>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.dtOrder>='+ dbo.CSD(@date1) + ' ';
	if LEN(@date2)>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.dtOrder<='+ dbo.CSD2(@date2) + ' ';
	if LEN(@fmccode)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.cFMCCode like ''%' + dbo.CSP(@fmccode) + '%'' ';
	if LEN(@enucode)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.cENUCode like ''%' + dbo.CSP(@enucode) + '%'' ';
	if LEN(@fmcname)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sFMCName like ''%' + dbo.CSP(@fmcname) + '%'' ';
	if LEN(@enuname)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sENUName like ''%' + dbo.CSP(@enuname) + '%'' ';
	if @id>0 
		set @SQL_Condition = @SQL_Condition + 'and t1.iRec='+cast(@id as varchar(500))+' ';
	if len(@SQL_Condition)>0
		set @SQL_Condition = ' where ' + @SQL_Condition + ' ';
	
	set @SQL_select = 't1.iRec as id, t1.kFMCCompany as fmcId, t1.cFMCCode as fmcCode, t1.cFMCDealer as fmcDealerCode, t1.sFMCName as fmcName, 
			t1.kENUCompany as enuId, t1.cENUCode as enuCode, t1.cENUDealer as enuDealerCode, t1.sENUName as enuName, 
			t1.sPONo as poNo, t1.cSalesType as salesTypeCode, t18.sDesc as salesType, t1.cStatus as statusCode, t13.sDesc as status, t17.cType as mark,
			t1.kOrderUser as orderUid, t16.sLogin as orderUserEmail, t1.dtOrder as orderDate, t1.dtCreate as createDate, t1.dtModify as modifyDate,
			t30.dtCancelEmail as lastCancelEmailSent,
			t2.kVehicleTrim as vehicleId, t5.nYear as year, t5.cCode as trimCode, t5.sName as trim, t5.cModelCode as modelCode, t5.sModelName as model, 
			t2.nQty as totalQty, t2.nCntDropship as countDropship,
			t2.nCntItem as countItems, t2.nVehicleTrimCount as countVehicleTrims';
    set @SQL_from = 'from tbOrder (NOLOCK) t1
		inner join (
			select kOrder, count(distinct x1.iRec) as nCntDropship, count(*) as nCntItem, sum(nQty) as nQty, 
				max(kVehicleTrim) as kVehicleTrim, count(distinct kVehicleTrim) as nVehicleTrimCount
			from tbOrderDS (NOLOCK) x1
			inner join tbOrderDT (NOLOCK) x2 on x1.iRec=x2.kOrderDS
			group by kOrder) t2 on t1.iRec=t2.kOrder
		left join tbVehicleTrim (NOLOCK) t5 on t2.kVehicleTrim=t5.iRec

		

		left join tbXCode (NOLOCK) t13 on t13.cTable=''ORDSTS'' and t1.cStatus=t13.cCode
		left join tbUser (NOLOCK) t16 on t1.kOrderUser=t16.iRec
		left join tbFlag (NOLOCK) t17 on t17.cTable=''ORDER'' and t1.iRec=t17.kLink and t17.kCreate=' + cast(@uid as varchar(500)) + '
		left join tbXCode (NOLOCK) t18 on t18.cTable=''ORDSLS'' and t1.cSalesType=t18.cCode
		left join (
			select kLink, max(iRec) as iCancelEmail, max(dtStatus) as dtCancelEmail
			from tbEmailQueue (NOLOCK)
			where cTable=''ORDER'' and cType=''CN'' and cStatus<>''ER''
			group by kLink) t30 on t1.iRec=t30.kLink 
		' + @SQL_Condition;
		print @SQL_from;
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END

GO
/****** Object:  StoredProcedure [dbo].[spGetListingUserAndCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 2/4/2013
-- Description:	Get Listing User And Company (in admin) 
-- =================================================================
CREATE PROCEDURE [dbo].[spGetListingUserAndCompany]
@uid int=0,
@page int=0,
@items_per_page int=0,
@item_count int=0 output,
@display_page int=0 output,
@sortkey varchar(100)=null,
@sortorder varchar(100)='',
@category_id int=0,
@name varchar(100)=null,
@code varchar(30)=null,
@user varchar(100)=null,
@company varchar(100)=null
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @resultset TABLE (
		id int,
		[status] varchar(1) Null,
		name varchar(110) Null,
		regdate datetime Null,
		[type] varchar(50) Null,
		company varchar(100) Null,
		code varchar(8) Null,
		idCompany int,
		[login] varchar(60) Null,
		lastActiveEmailSent datetime Null,
		_dummy_ int
	);
	DECLARE @SQL_select nvarchar(4000);
	DECLARE @SQL_Sort nvarchar(4000);
	DECLARE @SQL_from nvarchar(4000);
	DECLARE @SQL_Condition nvarchar(4000) = '';
	if @sortkey is null or @sortkey='' 
		set @sortkey = 'name';
	set @SQL_Sort = 
		(CASE @sortkey 
			WHEN 'rid' THEN 'iRec!'
			WHEN 'id' THEN 'iRec!'
			WHEN 'name' THEN 't3.sNameFirst!, t3.sNameLast!' 
			WHEN 'status' THEN 't3.cStatus!, t3.sNameFirst, t3.sNameLast' 
			WHEN 'regdate' THEN 't3.dtCreate!, t3.sNameFirst, t3.sNameLast' 
			WHEN 'login' THEN 't1.sLogin!, t3.sNameFirst, t3.sNameLast' 
			WHEN 'type' THEN 't3.cCompType!, t3.sNameFirst, t3.sNameLast' 
			WHEN 'company' THEN 't3.sCompName!, t3.sNameFirst, t3.sNameLast' 
			WHEN 'code' THEN 't3.cSAP!, t3.sNameFirst, t3.sNameLast' 
		END);
	set @SQL_Sort = REPLACE(@SQL_Sort, '!', ' ' + @sortorder);

	if @category_id>0 
		set @SQL_Condition = @SQL_Condition + 'and t5.iRec=' + cast(@category_id as varchar(500)) + ' ';
	if LEN(@name)>0
		set @SQL_Condition = @SQL_Condition + 'and (coalesce(t3.sNameFirst, '''')+'' ''+coalesce(t3.sNameLast, '''')) like ''%' + dbo.CSP(@name) + '%'' ';
	if LEN(@code)>0
		set @SQL_Condition = @SQL_Condition + 'and t3.cSAP like ''%' + dbo.CSP(@code) + '%'' ';
	if LEN(@user)>0
		set @SQL_Condition = @SQL_Condition + 'and t1.sLogin like ''%' + dbo.CSP(@user) + '%'' ';
	if LEN(@company)>0
		set @SQL_Condition = @SQL_Condition + 'and t3.sCompName like ''%' + dbo.CSP(@company) + '%'' ';

	
	set @SQL_select = 't1.iRec as id, t3.cStatus as status, rtrim(coalesce(t3.sNameFirst, '''')+'' ''+coalesce(t3.sNameLast, '''')) as name,
			t3.dtCreate as regdate, t5.cGroupCode as type, t3.sCompName as company, t3.cSAP as code, t3.iRec as idCompany, 
			t1.sLogin as login, t30.dtActiveEmail as lastActiveEmailSent';
    set @SQL_from = 'from tbUser t1
        inner join tbUserLink t4 on t1.iRec=t4.kUser
        inner join tbUser t5 on t4.kGroup=t5.iRec and t5.cType=''G''
		left join tbUserCompany t2 on t1.iRec=t2.kUser
		left join tbCompany t3 on t2.kCompany=t3.iRec and t3.cStatus<>''X''
        left join (
            select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
            from tbEmailQueue 
            where cTable=''COMP'' and cType=''NC'' and cStatus<>''ER''
            group by kLink) t30 on t3.iRec=t30.kLink 
		where t1.sLogin is not null and t1.cType=''U''
		' + @SQL_Condition;
	insert into @resultset exec dbo.spGetPageRecordset 
		@page=@page, 
		@items_per_page=@items_per_page, 
		@SQL_select=@SQL_select, 
		@SQL_from=@SQL_from, 
		@SQL_Sort=@SQL_Sort, 
		@item_count=@item_count OUTPUT, 
		@display_page=@display_page OUTPUT;
	select * from @resultset;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get User Login Information
-- Modified: 01/18/2023 - Erik, Added user login lock check
--  Exec  [dbo].[spGetLoginUser]  'members_fmcsubuser@hmafleet.com'
-- Exec  [dbo].[spGetLoginUser]  'erikfleest@mailinator.com'
-- =============================================
CREATE PROCEDURE [dbo].[spGetLoginUser] 
    @login varchar(60),
	@userHitDatetime datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	Declare @isLockActive int = 0;
	select @isLockActive =  max(userHitIsLock)  from tbUserLoginLock where userId=@login
	and ((userHitDatetime >= DATEADD(minute, -5, @userHitDatetime)) and (userHitDatetime <=  @userHitDatetime)) ;

	if (isnull(@isLockActive,0) != 1)
	BEGIN
		select t1.iRec as id, (case when t2.kUser is Null then 'A' else t2.cStatus end) as [status], t1.sHPwd as hPwd 
		from tbUser t1 
		left join (
			select x1.kUser, max(case x2.cStatus when 'A' then x2.cStatus else '' end) as cStatus
			from tbUserCompany x1 
			inner join tbCompany x2 on x1.kCompany=x2.iRec
			group by x1.kUser) t2 on t1.iRec = t2.kUser
		where sLogin=@login
	END

END
GO
/****** Object:  StoredProcedure [dbo].[spGetManualOrderDtl]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eric Kim
-- Create date: 2/4/2013
-- Description:	Get Company Information
-- =============================================
CREATE PROCEDURE [dbo].[spGetManualOrderDtl] 
AS
BEGIN
	SET NOCOUNT ON;
	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 
	  --[Hyundai FIN Code] as [FMCCode]
      [End User FIN] as enuCode
	  ,(select top 1 irec from [HMAFleet].[dbo].[tbCompany] where [HMAFleet].[dbo].[tbCompany].[cSAP]=[HMAFleet].[dbo].[Orders_Manual].[End User FIN]) as enuId
	  ,(select top 1 irec from [HMAFleet].[dbo].[tbCompany] where [HMAFleet].[dbo].[tbCompany].[cSAP]=[HMAFleet].[dbo].[Orders_Manual].[Hyundai FIN Code]) as fmcId
	  ,(select top 1 irec from [HMAFleet].[dbo].[tbCompany] where [HMAFleet].[dbo].[tbCompany].[cSAP]=[HMAFleet].[dbo].[Orders_Manual].[Hyundai FIN Code]) as orderUid
      ,[End User's Purchase  Order #] as poNo
      ,[Sales Type] as salesTypeCode

      ,[Drop Ship Code] as dropshipCode
	  ,(select top 1 irec from [HMAFleet].[dbo].[tbDropship] where [HMAFleet].[dbo].[tbDropship].ccode=[HMAFleet].[dbo].[Orders_Manual].[Drop Ship Code]) as dropshipId
      ,[Ext Color Code] as extColorCode 
      ,[Int Color Code] as intColorCode
      ,left([Model Code (8 Bytes)],1) as [modelCode]
      ,[Accy Code (2Bytes)] as packageCode
      ,[Model Code (8 Bytes)] as [trimCode]
      ,[From (YYYYMMDD) 1st or 16th] as reqDeliveryDate
      ,[Model Year(YYYY)] as [year]
      ,[Volume] as qty
      ,[Port PDI Y/N] as portPDI
      ,[PIO 1]
      ,[PIO 2]
      ,[PIO 3]
      ,[PIO 4]
      ,[Additional PIO]
      ,[ Dealer Code] 
      ,[AGENCY / COMPANY]
      ,[To (YYYYMMDD) 15th or last day of the month]
  FROM [HMAFleet].[dbo].[Orders_Manual]
  --left outer join [HMAFleet].[dbo].[tbCompany]
  --on [Hyundai FIN Code]=[HMAFleet].[dbo].[tbCompany].[cSAP]
 -- where [HMAFleet].[dbo].[tbCompany].[cSAP]='FMC00003'

END

GO
/****** Object:  StoredProcedure [dbo].[spGetOrderExceptions]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/20/2013
-- Description:	Get Order Exception
-- =========================================================
create PROCEDURE [dbo].[spGetOrderExceptions]
AS
BEGIN
	SET NOCOUNT ON;

	select t2.iRec as id, t1.cCode as code, t1.nYear as [year], t2.cExtClr as extColor, t2.cIntClr as intColor, t2.sAvailablePackages as availablePackages, t2.sMessage as msg
    from tbVehicleTrim t1 
	inner join tbExceptionPackage t2 on t1.iRec=t2.kVehicleTrim
    order by t1.cCode, t1.nYear, t2.cExtClr, t2.cIntClr desc;

END
GO
/****** Object:  StoredProcedure [dbo].[spGetOrderRelatedCompanies]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		George Saad
-- Create date: 8/22/2014
-- Description:	Get Order Related Companies For admin Edit Order
-- =============================================
CREATE PROCEDURE [dbo].[spGetOrderRelatedCompanies] 
    @uid int=0,
	@orderId int = 0,
    @status varchar(1)=null
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @result int = 0;
	DECLARE @userGroup varchar(5) = (select t3.cGroupCode
										from tbUser t1
										inner join tbUserLink t2 on t1.iRec=t2.kUser and t1.cType='U' 
										inner join tbUser t3 on t2.kGroup=t3.iRec and t3.cType='G'
										where t1.iRec=@uid)

	IF UPPER(@userGroup) = 'ADM'
	BEGIN
		select t3.iRec as code, coalesce(nullif(t3.cSAP, ''), 'REQ: '+t3.sCompName) as name, t3.iRec as id, t3.cSAP as sap, t1.nDefault as [default], t3.cStatus as [status], t3.sCompName as companyName, 
			t3.sPhone as phone, t3.sPhoneExt as phoneExt, t3.dtCreate as createDate
		from tbOrder t0
		inner join (
			select x1.kCompany, x2.kCompany as kUserCompany, cast(max((case when x1.nDefault=1 and x2.nDefault=1 then 1 else 0 end)) as bit) as nDefault
			from tbUserCompany x1 
			inner join tbUserCompany x2 on x2.kUser=x1.kUser
			group by x1.kCompany, x2.kCompany) t1 on t0.kFMCCompany=t1.kCompany
		inner join tbCompany t3 on t1.kUserCompany=t3.iRec
		where t3.cStatus<>'X'
		and t0.iRec=@orderId
		and (t3.cStatus=@status or @status is null)
		order by name
		SET @result = 1;
	END
	ELSE
	BEGIN
		SET @result = 0;
	END

	RETURN @result;
END


GO
/****** Object:  StoredProcedure [dbo].[spGetOrders]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Get Orders
-- exec [dbo].[spGetOrders] '960','38819','1'
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrders]
	@uid int=0,
	@id_list varchar(4000),
	@returnValue int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	select @cnt_list = count(*) from dbo.SplitString(@id_list, ',');
	select @cnt_data = count(*) from tbOrder 
		where iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','))
			and (@uid=0 or @uid=kOrderUser 
				or kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or kENUCompany in (select kCompany from tbUserCompany where kUser=@uid));
	if @cnt_list=@cnt_data
	begin 
		select t1.iRec as h_id, t1.kAllocateCompany as h_allocateCompany, t1.cAllocateDealer as h_allocateDealer, 
			t1.kFMCCompany as h_fmcId, t1.cFMCCode as h_fmcCode, t1.cFMCDealer as h_fmcDealerCode, t1.sFMCName as h_fmcName, 
            t1.sFMCStreet as h_fmcStreet, t1.sFMCStreet2 as h_fmcStreet2, t1.sFMCCity as h_fmcCity, 
            t1.cFMCState as h_fmcState, t1.sFMCZip as h_fmcZip, t1.sFMCPhone as h_fmcPhone, t1.sFMCFax as h_fmcFax, 
            t1.sFMCContact as h_fmcContact, t1.sFMCEmail as h_fmcEmail,
            t1.kENUCompany as h_enuId, t1.cENUCode as h_enuCode, t1.cENUDealer as h_enuDealerCode, t1.sENUName as h_enuName, 
            t1.sENUStreet as h_enuStreet, t1.sENUStreet2 as h_enuStreet2, t1.sENUCity as h_enuCity, 
            t1.cENUState as h_enuState, t1.cENUZip as h_enuZip, t1.sENUPhone as h_enuPhone, t1.sENUFax as h_enuFax, 
            t1.sENUContact as h_enuContact, t1.sENUEmail as h_enuEmail,
            t1.sPONo as h_poNo, t1.cSalesType as h_salesTypeCode, t18.sDesc as h_salesType, t1.cStatus as h_statusCode, t13.sDesc as h_status, 
            t1.kOrderUser as h_orderUid, t16.sLogin as h_orderUserEmail,  
            t1.dtOrder as h_orderDate, t1.dtModify as h_modifyDate, t30.dtActiveEmail as h_lastActiveEmailSent,
            t2.iRec as s_id, t2.kDropship as s_dropshipId, t4.cCode as s_dropshipCode, t2.sName as s_name, t2.sStreet as s_street, t2.sStreet2 as s_street2, t2.sCity as s_city, 
            t2.cState as s_state, t2.sZip as s_zip, t2.sPhone as s_phone, t2.sContact as s_contact, t2.sEmail as s_email, 
            t3.iRec as v_id, t3.kVehicleTrim as v_vehicleId, t5.nYear as v_year, t5.cCode as v_trimCode, t5.sName as v_trim, t5.cModelCode as v_modelCode, t5.sModelName as v_model, 
            t3.cAccy as v_packageCode, t14.sDesc as v_package, t3.cColorExt as v_extColorCode, t7.sDesc as v_extColor,
            t3.cColorInt as v_intColorCode, t8.sDesc as v_intColor, t3.cPortPDI as v_portPDI, t3.nQty as v_qty, CONVERT(varchar(23), CONVERT(date, t3.dtReqDelivery), 101)  as v_reqDeliveryDate,
            t9.iRec as p_id, t9.cPIO as p_code, t10.sDesc as p_name
            from tbOrder t1
            inner join tbOrderDS t2 on t1.iRec=t2.kOrder
            inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
            left join tbOrderPIO t9 on t3.iRec=t9.kOrderDT
            left join tbDropship t4 on t2.kDropship=t4.iRec
            inner join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
            left join (
				select x1.kVehicleTrim, x2.cCode as cExtClr, x3.cCode as cIntClr, x4.cCode as cPackage, 
					max(case xe.cCode when x1.cCode then x1.iRec else null end) as kVehicleTrimEquivalentEqual, max(x1.iRec) as kVehicleTrimEquivalent
				from tbVehicleTrimEquivalent x1
				inner join tbVehicleTrim xe on x1.kVehicleTrim=xe.iRec
				inner join tbVehicleXCode x2 on x2.cTable='EXTCLR' and x2.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				inner join tbVehicleXCode x3 on x3.cTable='INTCLR' and x3.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x3.kVehicleTrimEquivalent and x2.iRec=x3.kVehicleXCode
				inner join tbVehicleXCode x4 on x4.cTable='PAK' and x4.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				group by x1.kVehicleTrim, x2.cCode, x3.cCode, x4.cCode) t6 on t6.kVehicleTrim=t3.kVehicleTrim and t3.cColorExt=t6.cExtClr and t3.cColorInt=t6.cIntClr and t3.cAccy=t6.cPackage
			left join tbVehicleXCode t7 on t7.cTable='EXTCLR' and t7.kVehicleTrim=t3.kVehicleTrim and t7.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorExt=t7.cCode
			left join tbVehicleXCode t8 on t8.cTable='INTCLR' and t8.kVehicleTrim=t3.kVehicleTrim and t8.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorInt=t8.cCode and t7.iRec=t8.kVehicleXCode
			left join tbVehicleXCode t14 on t14.cTable='PAK' and t14.kVehicleTrim=t3.kVehicleTrim and t14.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cAccy=t14.cCode
			left join tbVehicleTrimEquivalent t19 on coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t19.iRec
			left join (
				select kVehicleTrim, kVehicleTrimEquivalent, cCode, max(sDesc) as sDesc
				from tbVehicleXCode
				where cTable='PIO'
				group by kVehicleTrim, kVehicleTrimEquivalent, cCode) t10 on t3.kVehicleTrim=t10.kVehicleTrim and coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t10.kVehicleTrimEquivalent and t10.cCode = t9.cPIO
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
            left join tbUser t16 on t1.kOrderUser=t16.iRec
            left join tbXCode t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
            left join (
                select kLink, max(iRec) as iActiveEmail, max(dtStatus) as dtActiveEmail
                from tbEmailQueue 
                where cTable='ORDER' and cType='CN' and cStatus<>'ER'
                group by kLink) t30 on t1.iRec=t30.kLink 
            where t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','))
            order by t1.iRec, t2.iRec, t3.iRec, t9.iRec;
		set @returnValue = 1;
	end
	else
		set @returnValue = 0;
END





GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersForExport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Modify date: 1/17/2014
-- Description:	Get Orders for Export 
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersForExport]
	@iUpdateUser int,
	@sLinkList varchar(4000),
	@returnValue int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	declare @cnt_data_with_deleted int = 0;
	select @cnt_list = count(*) from dbo.SplitString(@sLinkList, ',');
	select @cnt_data = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	select @cnt_data_with_deleted = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP', 'XX', 'DL', 'AL') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	if @cnt_list=@cnt_data or @cnt_list=@cnt_data_with_deleted
	begin 
		set @returnValue = 1;
		select 
			t1.iRec as id, t1.kAllocateCompany as allocateCompany, t1.cAllocateDealer as allocateDealer, 
			t1.kFMCCompany as fmcId, t1.cFMCCode as fmcCode, t1.cFMCDealer as fmcDealerCode, t1.sFMCName as fmcName, 
			t1.kENUCompany as enuId, t1.cENUCode as enuCode, t1.cENUDealer as enuDealerCode, t1.sENUName as enuName, 
			t1.sPONo as poNo, t1.cSalesType as salesTypeCode, t18.sDesc as salesType, t1.cStatus as statusCode, t13.sDesc as [status], 
			t4.cCode as dropshipCode,
			t1.kOrderUser as orderUid, t16.sLogin as orderUserEmail, 
			t1.dtOrder as orderDate, t1.dtCreate as createDate, t1.dtModify as modifyDate,
			t3.iRec as idDetail, t3.sHmaOrderNo as hmaOrderNo, t3.kVehicleTrim as vehicleId, t5.nYear as [year], substring(t19.cCode, 1, 8) as trimCode, t5.sName as trim, t5.cModelCode as modelCode, t5.sModelName as model, 
			substring(t3.cAccy,1,2) as pckCode, t3.cColorExt as extClr, t8.cSAP as intClr, 
			t3.iRec as v_id, t3.cPortPDI as portPDI, t3.nQty as qty, 
			convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then dateadd(d, -DAY(t3.dtReqDelivery)+1, t3.dtReqDelivery)
				else DATEADD(d, 15, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0)) end), 112) as reqDate, 
			convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then DATEADD(d, 14, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0))
				else DATEADD(d, -1, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery)+1,0)) end), 112) as reqDate2
			from tbOrder t1
			inner join tbOrderDS t2 on t1.iRec=t2.kOrder
			inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
			left join tbDropship t4 on t2.kDropship=t4.iRec
			left join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
			left join (
				select x1.kVehicleTrim, x2.cCode as cExtClr, x3.cCode as cIntClr, x4.cCode as cPackage, 
					max(case xe.cCode when x1.cCode then x1.iRec else null end) as kVehicleTrimEquivalentEqual, max(x1.iRec) as kVehicleTrimEquivalent
				from tbVehicleTrimEquivalent x1
				inner join tbVehicleTrim xe on x1.kVehicleTrim=xe.iRec
				inner join tbVehicleXCode x2 on x2.cTable='EXTCLR' and x2.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				inner join tbVehicleXCode x3 on x3.cTable='INTCLR' and x3.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x3.kVehicleTrimEquivalent and x2.iRec=x3.kVehicleXCode
				inner join tbVehicleXCode x4 on x4.cTable='PAK' and x4.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				group by x1.kVehicleTrim, x2.cCode, x3.cCode, x4.cCode) t6 on t6.kVehicleTrim=t3.kVehicleTrim and t3.cColorExt=t6.cExtClr and t3.cColorInt=t6.cIntClr and t3.cAccy=t6.cPackage
			left join tbVehicleXCode t7 on t7.cTable='EXTCLR' and t7.kVehicleTrim=t3.kVehicleTrim and t7.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorExt=t7.cCode
			left join tbVehicleXCode t8 on t8.cTable='INTCLR' and t8.kVehicleTrim=t3.kVehicleTrim and t8.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorInt=t8.cCode and t7.iRec=t8.kVehicleXCode
			left join tbVehicleXCode t14 on t14.cTable='PAK' and t14.kVehicleTrim=t3.kVehicleTrim and t14.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cAccy=t14.cCode
			left join tbVehicleTrimEquivalent t19 on coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t19.iRec
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
			left join tbUser t16 on t1.kOrderUser=t16.iRec
			left join tbXCode t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
			where t1.cStatus in ('CM', 'IP', 'PP') and t1.iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','))
			order by t1.iRec, t2.iRec, t3.iRec;
	end
	else
		set @returnValue = 0;
END



GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersForExportEx]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Get Orders for Export Ex (for front/users)
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersForExportEx]
	@uid int,
	@page int=0,
	@items_per_page int=0,
	@item_count int=0 output,
	@display_page int=0 output,
	@statusCode varchar(2),
	@companyId int,
	@lastActivityDays int,
	@orderDays int,
	@orderYear int,
	@enuCode varchar(20),
	@enuName varchar(50),
	@fmcCode varchar(20),
	@fmcName varchar(50),
	@statusName varchar(30),
	@pono varchar(20),
	@date1 datetime,
	@date2 datetime
AS
BEGIN
	SET NOCOUNT ON;
	declare @page_count int=0;
	declare @skip_count int=0;
	if not @enuCode is null
		set @enuCode = '%' + dbo.CSP(@enuCode) + '%';
	if not @enuName is null
		set @enuName = '%' + dbo.CSP(@enuName) + '%';
	if not @fmcCode is null
		set @fmcCode = '%' + dbo.CSP(@fmcCode) + '%';
	if not @fmcName is null
		set @fmcName = '%' + dbo.CSP(@fmcName) + '%';
	if not @pono is null
		set @pono = '%' + dbo.CSP(@pono) + '%';
	if not @statusName is null
		set @statusName = '%' + dbo.CSP(@statusName) + '%';
	if @items_per_page>0
	begin
		select @item_count = count(t1.iRec) 
			from tbOrder t1
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
			where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
				and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
				and (t1.cStatus=@statusCode or @statusCode is null)
				and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
				and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
				and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
				and (t1.cENUCode like @enuCode or @enuCode is null)
				and (t1.sENUName like @enuName or @enuName is null)
				and (t1.cFMCCode like @fmcCode or @fmcCode is null)
				and (t1.sFMCName like @fmcName or @fmcName is null)
				and (t13.sDesc like @statusName or @statusName is null)
				and (t1.sPONo like @pono or @pono is null)
				and (t1.dtOrder>=@date1 or @date1 is null)
				and (t1.dtOrder<=@date2 or @date2 is null);
		set @page_count = FLOOR((@item_count-1) / @items_per_page);
		if @page<=@page_count
			set @display_page = @page;
		else
			set @display_page = 0;

		set @skip_count = @display_page * @items_per_page;

		select * from (
			select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
					fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
					enuId=t1.kENUCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
					poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
					dropshipCode=t4.cCode, dropshipState=t2.cState, 
					orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
					orderDate=t1.dtOrder, createDate=t1.dtCreate, modifyDate=t1.dtModify,
					vehicleId=t3.kVehicleTrim, [year]=t5.nYear, trimCode=substring(t19.cCode, 1, 8), trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
					pckCode=substring(t3.cAccy,1,2), extClr=t3.cColorExt, intClr=t8.cSAP, 
					t3.iRec as v_id, portPDI=t3.cPortPDI, qty=t3.nQty, 
					reqDate=convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then dateadd(d, -DAY(t3.dtReqDelivery)+1, t3.dtReqDelivery)
						else DATEADD(d, 15, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0)) end), 112), 
					reqDate2=convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then DATEADD(d, 14, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0))
						else DATEADD(d, -1, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery)+1,0)) end), 112),
					vin=t20.sVIN, tenderDate=convert(varchar, dtTenderDate, 101), acesDeliveryDate=convert(varchar, dtAcesDeliveryDate, 101), 
					wholesaleDate=convert(varchar, dtWholesale, 101), 
					courtesyDeliveryDate=convert(varchar, dtCoutesyDelivery, 101), streetIncentive=cyStreetInventive, ETADate=convert(varchar, dtVesselETA, 101), 
					vehicleStatus=t21.sStatusDesc, vehicleStatusCode=t21.cStatus, shippingDate=convert(varchar, dtShipping, 101), 
					orderCreateDate=convert(varchar, t20.dtOrderCreate, 101), portCode=t21.cPort, bodyLineInputDate=convert(varchar, t21.dtBodyLine, 101), 
					deliveryWindowFromDate=convert(varchar, t20.dtDeliveryWindowFrom, 101), hmaOrderNo=t20.sHMAOrderNo,
					cast((ROW_NUMBER() over (order by t1.iRec, t2.iRec, t3.iRec)) as int) as _dummy_
				from tbOrder t1
				inner join tbOrderDS t2 on t1.iRec=t2.kOrder
				inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
				left join tbOrderStatus2 t20 on t3.iRec=t20.kOrderDT
				left join tbOrderStatus1 t21 on t20.sVIN=t21.sVIN
				left join tbDropship t4 on t2.kDropship=t4.iRec
				left join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
				left join (
					select x1.kVehicleTrim, x2.cCode as cExtClr, x3.cCode as cIntClr, x4.cCode as cPackage, 
						max(case xe.cCode when x1.cCode then x1.iRec else null end) as kVehicleTrimEquivalentEqual, max(x1.iRec) as kVehicleTrimEquivalent
					from tbVehicleTrimEquivalent x1
					inner join tbVehicleTrim xe on x1.kVehicleTrim=xe.iRec
					inner join tbVehicleXCode x2 on x2.cTable='EXTCLR' and x2.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
					inner join tbVehicleXCode x3 on x3.cTable='INTCLR' and x3.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x3.kVehicleTrimEquivalent and x2.iRec=x3.kVehicleXCode
					inner join tbVehicleXCode x4 on x4.cTable='PAK' and x4.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
					group by x1.kVehicleTrim, x2.cCode, x3.cCode, x4.cCode) t6 on t6.kVehicleTrim=t3.kVehicleTrim and t3.cColorExt=t6.cExtClr and t3.cColorInt=t6.cIntClr and t3.cAccy=t6.cPackage
				left join tbVehicleXCode t7 on t7.cTable='EXTCLR' and t7.kVehicleTrim=t3.kVehicleTrim and t7.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorExt=t7.cCode
				left join tbVehicleXCode t8 on t8.cTable='INTCLR' and t8.kVehicleTrim=t3.kVehicleTrim and t8.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorInt=t8.cCode and t7.iRec=t8.kVehicleXCode
				left join tbVehicleXCode t14 on t14.cTable='PAK' and t14.kVehicleTrim=t3.kVehicleTrim and t14.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cAccy=t14.cCode
				left join tbVehicleTrimEquivalent t19 on coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t19.iRec
				left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				left join tbUser t16 on t1.kOrderUser=t16.iRec
				left join tbXCode t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
				where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
					or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
					or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t13.sDesc like @statusName or @statusName is null)
					and (t1.sPONo like @pono or @pono is null)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null)) _tmp_
			where _dummy_>@skip_count and _dummy_<=(@skip_count+@items_per_page);
	end
	else
		select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
				fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
				enuId=t1.kENUCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
				poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
				dropshipCode=t4.cCode, dropshipState=t2.cState, 
				orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
				orderDate=t1.dtOrder, createDate=t1.dtCreate, modifyDate=t1.dtModify,
				vehicleId=t3.kVehicleTrim, [year]=t5.nYear, trimCode=substring(t19.cCode, 1, 8), trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
				pckCode=t3.cAccy, extClr=t3.cColorExt, intClr=t8.cSAP, 
				t3.iRec as v_id, portPDI=t3.cPortPDI, qty=t3.nQty, 
				reqDate=convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then dateadd(d, -DAY(t3.dtReqDelivery)+1, t3.dtReqDelivery)
					else DATEADD(d, 15, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0)) end), 112), 
				reqDate2=convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then DATEADD(d, 14, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0))
					else DATEADD(d, -1, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery)+1,0)) end), 112),
				vin=t20.sVIN, tenderDate=convert(varchar, dtTenderDate, 101), acesDeliveryDate=convert(varchar, dtAcesDeliveryDate, 101), 
				wholesaleDate=convert(varchar, dtWholesale, 101), 
				courtesyDeliveryDate=convert(varchar, dtCoutesyDelivery, 101), streetIncentive=cyStreetInventive, ETADate=convert(varchar, dtVesselETA, 101), 
				vehicleStatus=t21.sStatusDesc, vehicleStatusCode=t21.cStatus, shippingDate=convert(varchar, dtShipping, 101), 
				orderCreateDate=convert(varchar, t20.dtOrderCreate, 101), portCode=t21.cPort, bodyLineInputDate=convert(varchar, t21.dtBodyLine, 101), 
				deliveryWindowFromDate=convert(varchar, t20.dtDeliveryWindowFrom, 101), hmaOrderNo=t20.sHMAOrderNo, 0 as _dummy_
			from tbOrder t1
			inner join tbOrderDS t2 on t1.iRec=t2.kOrder
			inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
			left join tbOrderStatus2 t20 on t3.iRec=t20.kOrderDT
			left join tbOrderStatus1 t21 on t20.sVIN=t21.sVIN
			left join tbDropship t4 on t2.kDropship=t4.iRec
			left join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
			left join (
				select x1.kVehicleTrim, x2.cCode as cExtClr, x3.cCode as cIntClr, x4.cCode as cPackage, 
					max(case xe.cCode when x1.cCode then x1.iRec else null end) as kVehicleTrimEquivalentEqual, max(x1.iRec) as kVehicleTrimEquivalent
				from tbVehicleTrimEquivalent x1
				inner join tbVehicleTrim xe on x1.kVehicleTrim=xe.iRec
				inner join tbVehicleXCode x2 on x2.cTable='EXTCLR' and x2.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				inner join tbVehicleXCode x3 on x3.cTable='INTCLR' and x3.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x3.kVehicleTrimEquivalent and x2.iRec=x3.kVehicleXCode
				inner join tbVehicleXCode x4 on x4.cTable='PAK' and x4.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
				group by x1.kVehicleTrim, x2.cCode, x3.cCode, x4.cCode) t6 on t6.kVehicleTrim=t3.kVehicleTrim and t3.cColorExt=t6.cExtClr and t3.cColorInt=t6.cIntClr and t3.cAccy=t6.cPackage
			left join tbVehicleXCode t7 on t7.cTable='EXTCLR' and t7.kVehicleTrim=t3.kVehicleTrim and t7.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorExt=t7.cCode
			left join tbVehicleXCode t8 on t8.cTable='INTCLR' and t8.kVehicleTrim=t3.kVehicleTrim and t8.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorInt=t8.cCode and t7.iRec=t8.kVehicleXCode
			left join tbVehicleXCode t14 on t14.cTable='PAK' and t14.kVehicleTrim=t3.kVehicleTrim and t14.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cAccy=t14.cCode
			left join tbVehicleTrimEquivalent t19 on coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t19.iRec
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
			left join tbUser t16 on t1.kOrderUser=t16.iRec
			left join tbXCode t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
			where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
				and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
				and (t1.cStatus=@statusCode or @statusCode is null)
				and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
				and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
				and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
				and (t1.cENUCode like @enuCode or @enuCode is null)
				and (t1.sENUName like @enuName or @enuName is null)
				and (t1.cFMCCode like @fmcCode or @fmcCode is null)
				and (t1.sFMCName like @fmcName or @fmcName is null)
				and (t13.sDesc like @statusName or @statusName is null)
				and (t1.sPONo like @pono or @pono is null)
				and (t1.dtOrder>=@date1 or @date1 is null)
				and (t1.dtOrder<=@date2 or @date2 is null)
		   order by t1.iRec, t2.iRec, t3.iRec;
END


GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersItemDeleted]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Modify date: 1/17/2014
-- Description:	Get Orders for Export 
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersItemDeleted]
	@uid int,
	@sLinkList varchar(4000),
	@returnValue int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	declare @cnt_data_with_deleted int = 0;
	select @cnt_list = count(*) from dbo.SplitString(@sLinkList, ',');
	select @cnt_data = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	select @cnt_data_with_deleted = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP', 'XX', 'DL', 'AL') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	if @cnt_list=@cnt_data or @cnt_list=@cnt_data_with_deleted
	begin 
		set @returnValue = 1;
		select 
			iRec as idDetail, kOrder as id, cFMCCode as fmcCode, sFMCName as fmcName, cFMCDealer as fmcDealerCode, cENUCode as enuCode, sENUName as enuName, sPONo as poNo, 
			cSalesType as salesTypeCode, cDropship as dropshipCode, nModelYear as [year], sHmaOrderNo as hmaOrderNo, sVehicle as trim, cVehiceTrim as trimCode, 
			cPortPDI as portPDI, cPackage as pckCode, cExterior as extClr, cInterior as intClr, sPIOs as pioList, nQty as qty, 
			convert(varchar, dtReqDeliveryFrom, 112) as reqDate, convert(varchar, dtReqDeliveryFrom, 112) as reqDate2			
		from tbOrderItemDeleted t1
		where cStatus='A' and kOrder in (select cast(s as int) from dbo.SplitString(@sLinkList, ','))
		order by t1.kOrder, t1.iRec;
	end
	else
		set @returnValue = 0;
END



GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersPIOs]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Get OrdersPIOs for Export 
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersPIOs]
	@iUpdateUser int,
	@sLinkList varchar(4000),
	@returnValue int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	declare @cnt_data_with_deleted int = 0;
	select @cnt_list = count(*) from dbo.SplitString(@sLinkList, ',');
	select @cnt_data = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	select @cnt_data_with_deleted = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP', 'XX', 'DL', 'AL') 
		and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	if @cnt_list=@cnt_data or @cnt_list=@cnt_data_with_deleted
	begin 
		--update tbOrder set cStatus='IP' where cStatus in ('CM', 'IP') and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
		if @@error=0
		begin 
			set @returnValue = 1;
			select 
				t3.iRec as v_id, t6.cPIO as pio
				from tbOrder t1
				inner join tbOrderDS t2 on t1.iRec=t2.kOrder
				inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
				left join tbDropship t4 on t2.kDropship=t4.iRec
				left join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
				left join tbOrderPIO t6 on t3.iRec=t6.kOrderDT
				where t1.cStatus in ('CM', 'IP', 'PP') and t1.iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','))
				order by t1.iRec, t2.iRec, t3.iRec;
		end
	end
	else
		set @returnValue = 0;
END



GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersPIOsEx]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/11/2013
-- Description:	Get Orders PIOs Ex (for front/users)
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersPIOsEx]
	@uid int,
	@page int=0,
	@items_per_page int=0,
	@item_count int=0 output,
	@display_page int=0 output,
	@statusCode varchar(2),
	@companyId int,
	@lastActivityDays int,
	@orderDays int,
	@orderYear int,
	@enuCode varchar(20),
	@enuName varchar(50),
	@fmcCode varchar(20),
	@fmcName varchar(50),
	@statusName varchar(30),
	@pono varchar(20),
	@date1 datetime,
	@date2 datetime
AS
BEGIN
	SET NOCOUNT ON;
	declare @page_count int=0;
	declare @skip_count int=0;
	if not @enuCode is null
		set @enuCode = '%' + dbo.CSP(@enuCode) + '%';
	if not @enuName is null
		set @enuName = '%' + dbo.CSP(@enuName) + '%';
	if not @fmcCode is null
		set @fmcCode = '%' + dbo.CSP(@fmcCode) + '%';
	if not @fmcName is null
		set @fmcName = '%' + dbo.CSP(@fmcName) + '%';
	if not @pono is null
		set @pono = '%' + dbo.CSP(@pono) + '%';
	if not @statusName is null
		set @statusName = '%' + dbo.CSP(@statusName) + '%';
	if @items_per_page>0
	begin
		select @item_count = count(t1.iRec) 
			from tbOrder t1
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
			where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
				and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
				and (t1.cStatus=@statusCode or @statusCode is null)
				and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
				and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
				and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
				and (t1.cENUCode like @enuCode or @enuCode is null)
				and (t1.sENUName like @enuName or @enuName is null)
				and (t1.cFMCCode like @fmcCode or @fmcCode is null)
				and (t1.sFMCName like @fmcName or @fmcName is null)
				and (t13.sDesc like @statusName or @statusName is null)
				and (t1.sPONo like @pono or @pono is null)
				and (t1.dtOrder>=@date1 or @date1 is null)
				and (t1.dtOrder<=@date2 or @date2 is null);
		set @page_count = FLOOR((@item_count-1) / @items_per_page);
		if @page<=@page_count
			set @display_page = @page;
		else
			set @display_page = 0;

		set @skip_count = @display_page * @items_per_page;

		select kOrderDT as v_id, cPIO as pio, 0 as _dummy_ 
		from tbOrderPIO t6 
		where kOrderDT in (select iRec from (
			select t3.iRec, cast((ROW_NUMBER() over (order by t1.iRec, t2.iRec, t3.iRec, t6.iRec)) as int) as _dummy_
				from tbOrder t1
				inner join tbOrderDS t2 on t1.iRec=t2.kOrder
				inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
				left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
					or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
					or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t13.sDesc like @statusName or @statusName is null)
					and (t1.sPONo like @pono or @pono is null)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null)) _tmp_
			where _dummy_>@skip_count and _dummy_<=(@skip_count+@items_per_page));
	end
	else
			select t3.iRec as v_id, t6.cPIO as pio, 0 as _dummy_
			from tbOrder t1
			inner join tbOrderDS t2 on t1.iRec=t2.kOrder
			inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
			inner join tbOrderPIO t6 on t3.iRec=t6.kOrderDT
			left join tbXCode t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
			where (t1.kFMCCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or t1.kAllocateCompany in (select kCompany from tbUserCompany where nDefault=1 and kUser=@uid) 
				or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany where kUser=@uid))) 
				and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
				and (t1.cStatus=@statusCode or @statusCode is null)
				and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
				and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
				and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
				and (t1.cENUCode like @enuCode or @enuCode is null)
				and (t1.sENUName like @enuName or @enuName is null)
				and (t1.cFMCCode like @fmcCode or @fmcCode is null)
				and (t1.sFMCName like @fmcName or @fmcName is null)
				and (t13.sDesc like @statusName or @statusName is null)
				and (t1.sPONo like @pono or @pono is null)
				and (t1.dtOrder>=@date1 or @date1 is null)
				and (t1.dtOrder<=@date2 or @date2 is null)
		   order by t1.iRec, t2.iRec, t3.iRec, t6.iRec;
END


GO
/****** Object:  StoredProcedure [dbo].[spGetOrdersVINs]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Get spGetOrdersVINs
-- =========================================================
CREATE PROCEDURE [dbo].[spGetOrdersVINs]
	@id_list varchar(4000),
	@returnValue int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	select @cnt_list = count(*) from dbo.SplitString(@id_list, ',');
	select @cnt_data = count(*) from tbOrder 
		where iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	if @cnt_list=@cnt_data
	begin 
		select t20.kOrderDT as v_id, t20.iRec as b_id, t20.sVIN as b_vin, dtTenderDate as b_tenderDate, dtAcesDeliveryDate as b_acesDeliveryDate, dtWholesale as b_wholesaleDate, 
            dtCoutesyDelivery as b_courtesyDeliveryDate, cyStreetInventive as b_streetIncentive, dtETA as b_ETADate, 
            t21.sStatusDesc as b_status, t21.cStatus as b_statusCode, dtShipping as b_shippingDate, 
            t20.dtOrderCreate as b_orderCreateDate, t21.cPort as b_portCode, t21.dtBodyLine as b_bodyLineInputDate, t20.dtDeliveryWindowFrom as b_deliveryWindowFromDate,
			t20.sHMAOrderNo as b_hmaOrderNo
            from tbOrderStatus2 t20
            left join tbOrderStatus1 t21 on t20.sVIN=t21.sVIN
            where t20.kOrderDT in (select iRec from tbOrderDT where kOrderDS in (select iRec from tbOrderDS where kOrder in (select cast(s as int) from dbo.SplitString(@id_list, ','))))
            order by t20.iRec;
		set @returnValue = 1;
	end
	else
		set @returnValue = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetPageRecordset]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/24/2012
-- Description:	Get Pagination Recordset
-- =================================================================
CREATE PROCEDURE [dbo].[spGetPageRecordset] 
	@page int,
	@items_per_page int, 
	@SQL_select nvarchar(4000), 
	@SQL_from nvarchar(4000), 
	@SQL_Sort nvarchar(4000),
	@item_count int=0 output, 
	@display_page int=0 output
AS
BEGIN
	SET NOCOUNT ON;
	declare @SQL nvarchar(4000);
	if @items_per_page>0
	begin
		DECLARE @SQL_count nvarchar(4000);
		DECLARE @cnt int =0;
		DECLARE @page_count int=0;
		DECLARE @skip_count int=0;
		if @SQL_Sort is null or @SQL_Sort=''
			set @SQL_Sort = '(select 0)';
		set @SQL_count = N'select @cnt=count(*) ' + @SQL_from;
		-- set @SQL_count = N'select count(*) as cnt ' + @SQL_from;
		-- DECLARE @tab AS TABLE (cnt int) INSERT into @tab execute sp_executesql @SQL_count; 
		execute sp_executesql @SQL_count, N'@cnt int OUTPUT', @cnt=@item_count OUTPUT;
		set @page_count = FLOOR((@item_count-1) / @items_per_page);
		if @page<=@page_count
		begin
			set @skip_count = @page * @items_per_page;
			set @display_page = @page;
		end
		else
		begin
			set @display_page = 0;
		end
		--(ROW_NUMBER() over (order by sFirstName desc, [sLastName])
		set @SQL = 'select ' + @SQL_select + ', (ROW_NUMBER() over (order by ' + @SQL_Sort + ')) as _dummy_ ' + @SQL_from;
		set @SQL = 'select top ' + cast(@items_per_page as varchar(50)) + ' * from (' + @SQL + ') _tmp_ where _dummy_>' + cast(@skip_count as varchar(50));
	end
	else
	begin
		if @SQL_Sort is null or @SQL_Sort=''
			set @SQL_Sort = '';
		else
			set @SQL_Sort = ' order by ' + @SQL_Sort;
		set @SQL = 'select ' + @SQL_select + ', 0 as _dummy_ ' + @SQL_from + @SQL_Sort;
	end
	exec(@SQL);
END

GO
/****** Object:  StoredProcedure [dbo].[spGetPioExclusive]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,George>
-- Create date: <Create Date,,7/24/2014>
-- Description:	<Description,, This procedure pulls out all data from PIO_ExclusiveRules>
-- Modified: 9/4/2019, Erik, returned model group code instead of series code
-- =============================================
CREATE PROCEDURE [dbo].[spGetPioExclusive]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT [Model Year]
      ,[MODEL_GROUP_CD]
      ,[Model Code]
      ,(case [Accessory Group] when '*' then '' else [Accessory Group] end) as [Accessory Group]
      ,[Accessory code]
      ,[Exclusive Accessory Code]
  FROM [HMAFleet].[DWH].[PIO_ExclusiveRules]
  ORDER BY [Model Year], [MODEL_GROUP_CD], [Model Code], (case [Accessory Group] when '*' then '' else [Accessory Group] end), [Accessory code], [Exclusive Accessory Code]

END
GO
/****** Object:  StoredProcedure [dbo].[spGetQueuedEmails]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Queued Email List
-- =============================================
CREATE PROCEDURE [dbo].[spGetQueuedEmails] 
    @uid int = null,
    @table varchar(20) = null,
    @type varchar(2) = null,
    @id_list varchar(8000) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queue_id int=0;
	DECLARE @link_id int=0;
	DECLARE @curr CURSOR;
	set @curr = CURSOR for 
		select iRec, kLink 
			from tbEmailQueue t1 
			where t1.cTable=@table and t1.cType=@type and t1.cStatus='QU'
			order by iRec, kLink;
	OPEN @curr;
	FETCH NEXT FROM @curr INTO @queue_id, @link_id;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		update tbEmailQueue set 
			cStatus='SD',
			dtStatus=getdate()
			where iRec=@queue_id;
		set @id_list = coalesce(@id_list, '') + ',' + cast(@queue_id as varchar(20)) + '=' + cast(@link_id as varchar(20));
		FETCH NEXT FROM @curr INTO @queue_id, @link_id;
	END
	if not @id_list is null
		set @id_list = SUBSTRING(@id_list, 2, 8000);
	return @@ERROR;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSettings]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Settings
-- =============================================
CREATE PROCEDURE [dbo].[spGetSettings] 
	@key_list varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
    if @key_list='ALL'
		select cKey as [key], sValue as value from tbSetting order by cKey
	else
		select cKey as [key], sValue as value from tbSetting 
			where cKey in (select s from dbo.SplitString(@key_list, ','))
			order by cKey;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSmOrders]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Get Sm Orders
-- Modified: Daniel Lee 6/20/2017
-- =========================================================
CREATE PROCEDURE [dbo].[spGetSmOrders]
	@uid int,
	@page int=0,
	@items_per_page int=0,
	@item_count int=0 output,
	@display_page int=0 output,
	@statusCode varchar(2)=null,
	@companyId int=null,
	@lastActivityDays int=null,
	@orderDays int=null,
	@orderYear int=null,
	@enuCode varchar(20)=null,
	@enuName varchar(50)=null,
	@fmcCode varchar(20)=null,
	@fmcName varchar(50)=null,
	@statusName varchar(30)=null,
	@pono varchar(20)=null,
	@date1 datetime=null,
	@date2 datetime=null,
	@vin varchar(50)=null
AS
BEGIN
	SET NOCOUNT ON;
	declare @page_count int=0;
	declare @skip_count int=0;
	declare @is_admin int=(select 
		case t3.cGroupCode when 'ADM' then 1 else 0 end
		FROM tbUser (NOLOCK) t1
		left join tbUserLink (NOLOCK) t2 on t1.iRec=t2.kUser
		left join tbUser (NOLOCK) t3 on t3.cType='G' and t2.kGroup=t3.iRec 
		where t1.cType='U' and t1.iRec=@uid)

	if not @enuCode is null
		set @enuCode = '%' + dbo.CSP(@enuCode) + '%';
	if not @enuName is null
		set @enuName = '%' + dbo.CSP(@enuName) + '%';
	if not @fmcCode is null
		set @fmcCode = '%' + dbo.CSP(@fmcCode) + '%';
	if not @fmcName is null
		set @fmcName = '%' + dbo.CSP(@fmcName) + '%';
	if not @pono is null
		set @pono = '%' + dbo.CSP(@pono) + '%';
	if not @statusName is null
		set @statusName = '%' + dbo.CSP(@statusName) + '%';
	if not @vin is null
		set @vin = '%' + dbo.CSP(@vin);
	if @items_per_page>0
	begin
		if @is_admin=1
		begin
			select @item_count = count(t1.iRec) 
				from tbOrder (NOLOCK) t1
				left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				where t1.cStatus<>'OP' 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t1.sPONo like @pono or @pono is null)
					and (t13.sDesc like @statusName or @statusName is null)
					and (@vin is null
						or
							(t1.iRec in
								(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
									(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
										(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
									)
								)
							)
						)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null);
			set @page_count = FLOOR((@item_count-1) / @items_per_page);
			if @page<=@page_count
				set @display_page = @page;
			else
				set @display_page = 0;

			set @skip_count = @display_page * @items_per_page;

			select * from (
				select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
					fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
					enuId=t1.kENUCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
					poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
					orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
					orderDate=t1.dtOrder, modifyDate=t1.dtModify, mark=t17.cType,
					vehicleId=t2.kVehicleTrim, [year]=t5.nYear, trimCode=t5.cCode, trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
					totalQty=t2.nQty, countDropship=t2.nCntDropship, 
					countItems=t2.nCntItem, countVehicleTrims=t2.nVehicleTrimCount,
					cast((ROW_NUMBER() over (order by t1.dtOrder desc, t1.iRec desc)) as int) as _dummy_
					from tbOrder (NOLOCK) t1
					inner join (
						select kOrder, count(distinct x1.iRec) as nCntDropship, count(*) as nCntItem, sum(nQty) as nQty, 
							max(kVehicleTrim) as kVehicleTrim, count(distinct kVehicleTrim) as nVehicleTrimCount
						from tbOrderDS (NOLOCK) x1
						inner join tbOrderDT (NOLOCK) x2 on x1.iRec=x2.kOrderDS
						group by kOrder) t2 on t1.iRec=t2.kOrder
					left join tbVehicleTrim (NOLOCK) t5 on t2.kVehicleTrim=t5.iRec
					left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
					left join tbUser (NOLOCK) t16 on t1.kOrderUser=t16.iRec
					left join tbFlag (NOLOCK) t17 on t17.cTable='ORDER' and t1.iRec=t17.kLink and t17.kCreate=@uid
					left join tbXCode (NOLOCK) t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
					where t1.cStatus<>'OP' 
						and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
						and (t1.cStatus=@statusCode or @statusCode is null)
						and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
						and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
						and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
						and (t1.cENUCode like @enuCode or @enuCode is null)
						and (t1.sENUName like @enuName or @enuName is null)
						and (t1.cFMCCode like @fmcCode or @fmcCode is null)
						and (t1.sFMCName like @fmcName or @fmcName is null)
						and (t1.sPONo like @pono or @pono is null)
						and (t13.sDesc like @statusName or @statusName is null)
						and (@vin is null
							or
								(t1.iRec in
									(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
										(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
											(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
										)
									)
								)
							)
						and (t1.dtOrder>=@date1 or @date1 is null)
						and (t1.dtOrder<=@date2 or @date2 is null)) _tmp_
				where _dummy_>@skip_count and _dummy_<=(@skip_count+@items_per_page);
		end
		else
		begin
			select @item_count = count(t1.iRec) 
				from tbOrder (NOLOCK) t1
				left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				where (t1.kFMCCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
					or t1.kAllocateCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
					or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany (NOLOCK) where kUser=@uid))) 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t1.sPONo like @pono or @pono is null)
					and (t13.sDesc like @statusName or @statusName is null)
					and (@vin is null
						or
							(t1.iRec in
								(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
									(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
										(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
									)
								)
							)
						)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null);
			set @page_count = FLOOR((@item_count-1) / @items_per_page);
			if @page<=@page_count
				set @display_page = @page;
			else
				set @display_page = 0;

			set @skip_count = @display_page * @items_per_page;

			select * from (
				select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
					fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
					enuId=t1.kENUCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
					poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
					orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
					orderDate=t1.dtOrder, modifyDate=t1.dtModify, mark=t17.cType,
					vehicleId=t2.kVehicleTrim, [year]=t5.nYear, trimCode=t5.cCode, trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
					totalQty=t2.nQty, countDropship=t2.nCntDropship, 
					countItems=t2.nCntItem, countVehicleTrims=t2.nVehicleTrimCount,
					cast((ROW_NUMBER() over (order by (case when t1.cStatus='OP' then 0 else 1 end), t1.dtOrder desc, t1.iRec desc)) as int) as _dummy_
					from tbOrder (NOLOCK) t1
					inner join (
						select kOrder, count(distinct x1.iRec) as nCntDropship, count(*) as nCntItem, sum(nQty) as nQty, 
							max(kVehicleTrim) as kVehicleTrim, count(distinct kVehicleTrim) as nVehicleTrimCount
						from tbOrderDS (NOLOCK) x1
						inner join tbOrderDT (NOLOCK) x2 on x1.iRec=x2.kOrderDS
						group by kOrder) t2 on t1.iRec=t2.kOrder
					left join tbVehicleTrim (NOLOCK) t5 on t2.kVehicleTrim=t5.iRec
					left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
					left join tbUser (NOLOCK) t16 on t1.kOrderUser=t16.iRec
					left join tbFlag (NOLOCK) t17 on t17.cTable='ORDER' and t1.iRec=t17.kLink and t17.kCreate=@uid
					left join tbXCode (NOLOCK) t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
					where (t1.kFMCCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
						or t1.kAllocateCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
						or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany (NOLOCK) where kUser=@uid))) 
						and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
						and (t1.cStatus=@statusCode or @statusCode is null)
						and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
						and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
						and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
						and (t1.cENUCode like @enuCode or @enuCode is null)
						and (t1.sENUName like @enuName or @enuName is null)
						and (t1.cFMCCode like @fmcCode or @fmcCode is null)
						and (t1.sFMCName like @fmcName or @fmcName is null)
						and (t1.sPONo like @pono or @pono is null)
						and (t13.sDesc like @statusName or @statusName is null)
						and (@vin is null
							or
								(t1.iRec in
									(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
										(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
											(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
										)
									)
								)
							)
						and (t1.dtOrder>=@date1 or @date1 is null)
						and (t1.dtOrder<=@date2 or @date2 is null)) _tmp_
				where _dummy_>@skip_count and _dummy_<=(@skip_count+@items_per_page);
		end
	end
	else
		if @is_admin=1
			select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
				fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
				enuId=t1.kFMCCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
				poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
				orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
				orderDate=t1.dtOrder, modifyDate=t1.dtModify, mark=t17.cType,
				vehicleId=t2.kVehicleTrim, [year]=t5.nYear, trimCode=t5.cCode, trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
				totalQty=t2.nQty, countDropship=t2.nCntDropship, 
				countItems=t2.nCntItem, countVehicleTrims=t2.nVehicleTrimCount,
				0 as _dummy_
				from tbOrder (NOLOCK) t1
				inner join (
					select kOrder, count(distinct x1.iRec) as nCntDropship, count(*) as nCntItem, sum(nQty) as nQty, 
						max(kVehicleTrim) as kVehicleTrim, count(distinct kVehicleTrim) as nVehicleTrimCount
					from tbOrderDS (NOLOCK) x1
					inner join tbOrderDT (NOLOCK) x2 on x1.iRec=x2.kOrderDS
					group by kOrder) t2 on t1.iRec=t2.kOrder
				left join tbVehicleTrim (NOLOCK) t5 on t2.kVehicleTrim=t5.iRec
				left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				left join tbUser (NOLOCK) t16 on t1.kOrderUser=t16.iRec
				left join tbFlag (NOLOCK) t17 on t17.cTable='ORDER' and t1.iRec=t17.kLink and t17.kCreate=@uid
				left join tbXCode (NOLOCK) t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
				where t1.cStatus<>'OP' 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t1.sPONo like @pono or @statusName is null)
					and (@vin is null
						or
							(t1.iRec in
								(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
									(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
										(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
									)
								)
							)
						)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null)
		else
			select id=t1.iRec, allocateCompany=t1.kAllocateCompany, allocateDealer=t1.cAllocateDealer, 
				fmcId=t1.kFMCCompany, fmcCode=t1.cFMCCode, fmcDealerCode=t1.cFMCDealer, fmcName=t1.sFMCName, 
				enuId=t1.kFMCCompany, enuCode=t1.cENUCode, enuDealerCode=t1.cENUDealer, enuName=t1.sENUName, 
				poNo=t1.sPONo, salesTypeCode=t1.cSalesType, salesType=t18.sDesc, statusCode=t1.cStatus, [status]=t13.sDesc, 
				orderUid=t1.kOrderUser, orderUserEmail=t16.sLogin, 
				orderDate=t1.dtOrder, modifyDate=t1.dtModify, mark=t17.cType,
				vehicleId=t2.kVehicleTrim, [year]=t5.nYear, trimCode=t5.cCode, trim=t5.sName, modelCode=t5.cModelCode, model=t5.sModelName, 
				totalQty=t2.nQty, countDropship=t2.nCntDropship, 
				countItems=t2.nCntItem, countVehicleTrims=t2.nVehicleTrimCount,
				cast((ROW_NUMBER() over (order by (case when t1.cStatus='OP' then 0 else 1 end), t1.dtOrder desc, t1.iRec desc)) as int) as _dummy_
				from tbOrder (NOLOCK) t1
				inner join (
					select kOrder, count(distinct x1.iRec) as nCntDropship, count(*) as nCntItem, sum(nQty) as nQty, 
						max(kVehicleTrim) as kVehicleTrim, count(distinct kVehicleTrim) as nVehicleTrimCount
					from tbOrderDS (NOLOCK) x1
					inner join tbOrderDT (NOLOCK) x2 on x1.iRec=x2.kOrderDS
					group by kOrder) t2 on t1.iRec=t2.kOrder
				left join tbVehicleTrim (NOLOCK) t5 on t2.kVehicleTrim=t5.iRec
				left join tbXCode (NOLOCK) t13 on t13.cTable='ORDSTS' and t1.cStatus=t13.cCode
				left join tbUser (NOLOCK) t16 on t1.kOrderUser=t16.iRec
				left join tbFlag (NOLOCK) t17 on t17.cTable='ORDER' and t1.iRec=t17.kLink and t17.kCreate=@uid
				left join tbXCode (NOLOCK) t18 on t18.cTable='ORDSLS' and t1.cSalesType=t18.cCode
				where (t1.kFMCCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
					or t1.kAllocateCompany in (select kCompany from tbUserCompany (NOLOCK) where nDefault=1 and kUser=@uid) 
					or (t1.cStatus<>'OP' and t1.kENUCompany in (select kCompany from tbUserCompany (NOLOCK) where kUser=@uid))) 
					and (@companyId is null or t1.kFMCCompany=@companyId or t1.kENUCompany=@companyId) 
					and (t1.cStatus=@statusCode or @statusCode is null)
					and (DATEDIFF(d, t1.dtModify, getdate())<@lastActivityDays or @lastActivityDays is null)
					and (DATEDIFF(d, t1.dtOrder, getdate())<@orderDays or @orderDays is null)
					and (YEAR(t1.dtOrder)=@orderYear or @orderYear is null)
					and (t1.cENUCode like @enuCode or @enuCode is null)
					and (t1.sENUName like @enuName or @enuName is null)
					and (t1.cFMCCode like @fmcCode or @fmcCode is null)
					and (t1.sFMCName like @fmcName or @fmcName is null)
					and (t1.sPONo like @pono or @statusName is null)
					and (@vin is null
						or
							(t1.iRec in
								(SELECT tbOrderDS.kOrder FROM tbOrderDS (NOLOCK) WHERE tbOrderDS.iRec in 
									(SELECT tbOrderDT.kOrderDS FROM tbOrderDT (NOLOCK) WHERE tbOrderDT.iRec in 
										(SELECT tbOrderStatus2.kOrderDT FROM tbOrderStatus2 (NOLOCK) WHERE tbOrderStatus2.sVIN like @vin)
									)
								)
							)
						)
					and (t1.dtOrder>=@date1 or @date1 is null)
					and (t1.dtOrder<=@date2 or @date2 is null)
END




/****** Object:  StoredProcedure [dbo].[spGetSubusers]    Script Date: 8/31/2017 11:03:56 AM ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spGetSubusers]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Users
-- =============================================

CREATE PROCEDURE [dbo].[spGetSubusers] 
    @id_list varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t1.sLogin as [login], t1.sHPwd as hPwd, t1.cType as [type], t3.cGroupCode as groupCode, 
            t1.sSecurityQuestion as securityQuestion, t1.sHSecurityAnswer as hSecurityAnswer, t1.sFirstName as firstName,
			t1.sLastName as lastName
        from tbUser (NOLOCK) t1
        left join tbUserLink (NOLOCK) t2 on t1.iRec=t2.kUser
        left join tbUser (NOLOCK) t3 on t3.cType='G' and t2.kGroup=t3.iRec        
        where t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get User Information
-- Modified:	7/18/2017, Daniel Lee, add subUser check.
-- =============================================
CREATE PROCEDURE [dbo].[spGetUser] 
    @id int = null,
    @login varchar(60) = null
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @isASubuser int=0;
	
	SELECT @isASubuser = t1.iRec from tbUser (NOLOCK) t1 
		left join tbUserSubUserLink (NOLOCK) t2 on t1.iRec = t2.kSubUser
		where t2.kSubUser = @id
		and t1.sLogin is not null

	if (@isASubuser > 0)
		set @isASubuser = 1;

	SELECT t1.iRec as id, t1.sLogin as [login], t1.sHPwd as hPwd, t1.sSecurityQuestion as securityQuestion, 
		t1.sHSecurityAnswer as hSecurityAnswer, t1.sDeletedLogin as deletedLogin, t1.kCreate as createUid,
		t1.dtCreate as createDate, t1.kModify as modifyUid, t1.dtModify as modifyDate, t3.iRec as groupId, 
		t3.cGroupCode as groupCode, @isASubuser as fmcSubuser, t1.sFirstName as firstName, t1.sLastName as lastName,
		t1.dtSubuserActivated as subUserActivatedDate
		FROM tbUser (NOLOCK) t1
		left join tbUserLink (NOLOCK) t2 on t1.iRec=t2.kUser
		left join tbUser (NOLOCK) t3 on t3.cType='G' and t2.kGroup=t3.iRec 
		where t1.cType='U' and (t1.iRec=@id or @id is null)
			and (t1.sLogin=@login or @login is null)
			and not (@id is null and @login is null)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserCompanies]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 1/17/2013
-- Description:	Get User Companies
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserCompanies] 
    @id int=0,
    @status varchar(1)=null
AS
BEGIN
	SET NOCOUNT ON; 
	select t3.iRec as code, coalesce(nullif(t3.cSAP, ''), 'REQ: '+t3.sCompName) as name, t3.iRec as id, t3.cSAP as sap, t2.nDefault as [default], t3.cStatus as [status], t3.sCompName as companyName, 
		t3.sPhone as phone, t3.sPhoneExt as phoneExt, t3.dtCreate as createDate
	from tbUser t1
	left join tbUserCompany t2 on t2.kUser=t1.iRec
	left join tbCompany t3 on t2.kCompany=t3.iRec
	where t1.cType='U' and t3.cStatus<>'X'
		and (t1.iRec=@id or @id is null)
		and (t3.cStatus=@status or @status is null)
		and not (@id is null and @status is null)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserGroups]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get User Groups
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserGroups] 
AS
BEGIN
	SET NOCOUNT ON;
    select code=cGroupCode, name=sDisplayName
        from tbUser 
        where cType='G'
        order by nOrder;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserLoginLock]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rajesh K P
-- Create date: 11-02-2022
-- Description:	HF-440 - Lock user from logging in after 5 attempts
-- History:
-- Erik M: 1/16/2023: Added loginSuccess flag to reset login attempt count 
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserLoginLock]
	 @userId varchar (255) = null,
	 @userHitDatetime datetime = null,
	 @isLoginSuccess bit
AS
BEGIN
	
	SET NOCOUNT ON;
	Declare @status int,	 
	@userLock int = 0,	 
	@recCount SMALLINT,
	@userHitIdPk int = 0,
	@isLockActive int = 0;

	if(@isLoginSuccess = 1)
	BEGIN
		UPDATE tbUserLoginLock
		SET loginSuccess = 1
		WHERE userId = @userId
		and ((userHitDatetime >= DATEADD(minute, -1, @userHitDatetime))
		and (userHitDatetime <=  @userHitDatetime));

		SELECT 0 as userHitId, 0 as userHitIsLock, getdate() as userHitIsLockDatetime
	END
	ELSE
	BEGIN
		select @isLockActive =  max(userHitIsLock)  from tbUserLoginLock where userId=@userId
		and ((userHitDatetime >= DATEADD(minute, -5, @userHitDatetime)) and (userHitDatetime <=  @userHitDatetime)) ;

		if (@isLockActive = 1)
			BEGIN
				select max(userHitId) as userHitId, max(userHitIsLock) as userHitIsLock, max(userHitIsLockDatetime) as userHitIsLockDatetime 
				from tbUserLoginLock where userId=@userId
				and ((userHitDatetime >= DATEADD(minute, -5, @userHitDatetime)) and (userHitDatetime <=  @userHitDatetime)) ;
			END
		ELSE
			BEGIN
		
			INSERT INTO [dbo].[tbUserLoginLock] (userId,userHitDatetime,userHitIsLock)
						  VALUES (@userId,@userHitDatetime,@userLock)
						  set @userHitIdPk =  SCOPE_IDENTITY();			

			select @recCount = COUNT(*) from tbUserLoginLock where userId=@userId
			and ((userHitDatetime >= DATEADD(minute, -1, @userHitDatetime))
			and (userHitDatetime <=  @userHitDatetime))
			and loginSuccess = 0

			if (@recCount>=5)
			BEGIN
				UPDATE [dbo].[tbUserLoginLock]  SET userHitIsLock=1, userHitIsLockDatetime=@userHitDatetime where userHitId=@userHitIdPk;			
			END

			select  userHitId, userHitIsLock, userHitIsLockDatetime from tbUserLoginLock where userHitId=@userHitIdPk;	
		END
	END

END

GO
/****** Object:  StoredProcedure [dbo].[spGetUserOrderedCompanies]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 7/30/2014
-- Description:	Get User Ordered Companies
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserOrderedCompanies] 
    @id int=0
AS
BEGIN
	SET NOCOUNT ON; 
	select t3.iRec as code, coalesce(nullif(t3.cSAP, ''), 'REQ: '+t3.sCompName) as name, t3.iRec as id, t3.cSAP as sap, t4.nDefault as [default], t3.cStatus as [status], t3.sCompName as companyName, 
		t3.sPhone as phone, t3.sPhoneExt as phoneExt, t3.dtCreate as createDate
	from (
		select x1.kUser, x1.kCompany
		from tbUserCompany x1 
		where x1.kUser=@id
		union 
		select x2.kUser, x1.kFMCCompany as kCompany
		from tbOrder x1
		inner join tbUserCompany x2 on x1.kFMCCompany=x2.kCompany and x2.nDefault=1 and x2.kUser=@id
		union
		select x2.kUser, x1.kAllocateCompany as kCompany
		from tbOrder x1
		inner join tbUserCompany x2 on x1.kAllocateCompany=x2.kCompany and x2.nDefault=1 and x2.kUser=@id
	) t1
	inner join tbUser t2 on t1.kUser=t2.iRec
	inner join tbCompany t3 on t1.kCompany=t3.iRec
	left join tbUserCompany t4 on t1.kUser=t4.kUser and t1.kCompany=t4.kCompany
	where t2.cType='U' and t3.cStatus='A'
END


GO
/****** Object:  StoredProcedure [dbo].[spGetUserProfile]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Get User Profile Information
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserProfile] 
    @id int = null,
    @login varchar(60) = null
AS
BEGIN
	SET NOCOUNT ON;
	SELECT t1.iRec as id, t1.sLogin as [login], 
			t5.iRec as defaultCompanyId, t5.cSAP as sap, t5.cDealer as dealerCode, t5.sNameFirst as firstName,
			t5.sNameLast as lastName, t5.sCompName as companyName, 
			t3.cGroupCode as g_code, t3.iRec as g_id, t3.sDisplayName as g_name
		FROM tbUser t1
		left join tbUserLink t2 on t1.iRec=t2.kUser
		left join tbUser t3 on t3.cType='G' and t2.kGroup=t3.iRec 
		left join (
			select kUser, min(kCompany) as kCompany
			from tbUserCompany 
			where nDefault=1 group by kUser) t4 on t1.iRec=t4.kUser
		left join tbCompany t5 on t4.kCompany=t5.iRec		
		where t1.cType='U' and (t1.iRec=@id or @id is null)
			and (t1.sLogin=@login or @login is null)
			and not (@id is null and @login is null)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUsers]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Users
-- Modified: 8/30/2017 Daniel Lee * add subuser information.
-- =============================================
CREATE PROCEDURE [dbo].[spGetUsers] 
    @id_list varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
    select t1.iRec as id, t1.sLogin as [login], t1.sHPwd as hPwd, t1.cType as [type], t3.cGroupCode as groupCode, 
            t1.sSecurityQuestion as securityQuestion, t1.sHSecurityAnswer as hSecurityAnswer, t1.sFirstName as firstName,
			t1.sLastName as lastName
        from tbUser (NOLOCK) t1
        left join tbUserLink (NOLOCK) t2 on t1.iRec=t2.kUser
        left join tbUser (NOLOCK) t3 on t3.cType='G' and t2.kGroup=t3.iRec        
        where t1.sLogin is not null and t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserSecurity]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get User Security Information
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserSecurity] 
    @id int
AS
BEGIN
	SET NOCOUNT ON;
    -- tbUser: iRec
    -- tbUserLink: iRec,kUser,kGroup
    -- tbUserSTM: iRec,sKey,sDescription
    -- tbUserSTMLink: iRec,kUser,kUserSTM,nSecVal  nSecVal=256(Deny), 1=allow, 
    select t1.sKey as [key], t2.nSecVal as secValue
    from tbUserSTM t1 
    left join (
        select kUserSTM, max(nSecVal) as nSecVal 
        from tbUserSTMLink 
        where kUser=@id or kUser in (select kGroup from tbUserLink where kUser=@id) 
        group by kUserSTM 
    ) t2 on t1.iRec=t2.kUserSTM
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserSubUserLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Daniel Lee>
-- Create date: <7/6/2017>
-- Description:	<Get User Subuser Link>
-- =============================================

CREATE PROCEDURE  [dbo].[spGetUserSubUserLink]
	@uid int,
	@checkForSubuser int = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @returnValue int=0;

	if @checkForSubuser = 0
	begin
		select t1.iRec as id, t1.sFirstName as firstName, t1.sLastName as lastName, t1.sLogin as email,
			t1.dtSubuserActivated as subUserActivatedDate, t1.dtCreate as dateCreated 
		from tbUser (NOLOCK) t1 
			left join tbUserSubUserLink (NOLOCK) t2 on t1.iRec = t2.kSubUser
			where t2.kUser = @uid 
			and t1.sLogin is not null

		return 0
	end

	if @checkForSubuser = 1
	begin
		
		select @returnValue =	t1.kSubUser from tbUserSubUserLink (NOLOCK) t1 
								left join tbUser (NOLOCK) t2 on t2.iRec = t1.kSubUser
								where t1.kSubUser = @uid 

		if @returnValue = 0
		begin
			return -1
		end

		select t1.iRec as id, t1.sFirstName as firstName, t1.sLastName as lastName, t1.sLogin as email,
			t1.dtSubuserActivated as subUserActivatedDate, t1.dtCreate as dateCreated 
		from tbUser (NOLOCK) t1 
			left join tbUserSubUserLink (NOLOCK) t2 on t1.iRec = t2.kSubUser
			where t2.kSubUser = @uid
			and t1.sLogin is not null
		return 0
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spGetVehicleTrimsAndCodes]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Get getVehicleTrimsAndCodes
-- Modified: 8/23/2019, Erik, Added logic to fix nonunique series code
-- Modified: 9/25/2019, Erik, Removed endDate extension for 'EXTCLR'
-- Modified: 4/14/2020, Erik, Removed startdate shortening for exterior and interior colors
-- Modified: 11/6/2020 - Add startDate and endDate logic for color and packages
-- Modified: 2/5/2021 - Add 5 month extendsion to endDate and endDate logic for color and packages
-- Modified: 2/10/2021 - Rohit, HF#415 - Overriding the vehicle filter condition based on newly added Flag
-- Modified: 11/22/2022 - Erik, Removed endDate 5 month extension
-- =========================================================
--exec  [dbo].[spGetVehicleTrimsAndCodes] '960', 'INTCLR'

CREATE PROCEDURE [dbo].[spGetVehicleTrimsAndCodes] @uid                            INT,
                                                  @type                           VARCHAR(20),
                                                  @useVehicleModelIncentiveFilter INT         = 0
AS
     BEGIN
         SET NOCOUNT ON;
         SET @type = UPPER(@type);
         DECLARE @userGroup VARCHAR(5)=
         (
             SELECT t3.cGroupCode
             FROM tbUser AS t1
                  INNER JOIN tbUserLink AS t2 ON t1.iRec = t2.kUser
                                                 AND t1.cType = 'U'
                  INNER JOIN tbUser AS t3 ON t2.kGroup = t3.iRec
                                             AND t3.cType = 'G'
             WHERE t1.iRec = @uid
         );
         --"year=nYear, model=cModelCode, trim=cTrimCode, code=cCode, name=sName, filter=cFilter, filter2=cFilter2, filter3=cFilter3";
         --model year
         -- filter1 = extclr, filter2 = intclr, filter3 = package
         IF @uid IS NOT NULL
            AND UPPER(@userGroup) = 'ADM'
            AND @useVehicleModelIncentiveFilter = 1
             BEGIN
                 IF @type = 'YEAR'
                     BEGIN
                         SELECT DISTINCT
                                t1.nYear AS [year],
                                CAST(NULL AS VARCHAR(1)) AS model,
                                CAST(NULL AS VARCHAR(100)) AS trim,
                                CAST(t1.nYear AS VARCHAR(20)) AS code,
                                CAST(t1.nYear AS VARCHAR(500)) AS name,
                                CAST(NULL AS VARCHAR(50)) AS filter,
                                CAST(NULL AS VARCHAR(50)) AS filter2,
                                CAST(NULL AS VARCHAR(50)) AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                              AND t9.cAdminOrderStatus = 'A'
                         WHERE t1.nYear >= YEAR(GETDATE()) - 2
                         ORDER BY t1.nYear DESC;
                     END;
                 --model Only
                 IF @type = 'MODELONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                t1.cModelCode AS model,
                                NULL AS trim,
                                CAST(t1.cModelCode AS VARCHAR(100)) AS code,
                                MAX(CAST(t1.sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                              AND t9.cAdminOrderStatus = 'A'
                         WHERE t1.nYear >= YEAR(GETDATE()) - 2
                         GROUP BY t1.cModelCode
                         ORDER BY MAX(t1.sModelName),
                                  t1.cModelCode;
                     END;
                 --model name Only
                 IF @type = 'MODELNAMEONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                MAX(t1.cModelCode) AS model,
                                NULL AS trim,
                                CAST(t1.sModelName AS VARCHAR(100)) AS code,
                                CAST(t1.sModelName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                              AND t9.cAdminOrderStatus = 'A'
                         WHERE t1.nYear >= YEAR(GETDATE()) - 2
                         GROUP BY t1.sModelName
                         ORDER BY t1.sModelName;
                     END;
                 --model
                 IF @type = 'MODEL'
                     BEGIN
                         SELECT t1.nYear AS [year],
                                t1.cModelGroupCode AS model,
                                NULL AS trim,
                                CAST(t1.cModelGroupCode AS VARCHAR(100)) AS code,
                                MAX(CAST(t1.sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
															  AND t1.sModelName = t9.cModelName
                         WHERE t1.nYear >= YEAR(GETDATE()) - 2
                         GROUP BY t1.nYear,
                                  t1.cModelCode,
								  t1.cModelGroupCode
                         ORDER BY t1.nYear,
                                  MAX(t1.sModelName),
                                  t1.cModelCode;
                     END;
                 --trim
                 IF @type = 'TRIM'
                     BEGIN
                         SELECT t1.nYear AS [year],
                                t1.cModelGroupCode AS model,
                                t1.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                CAST(t1.sName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
															  AND t1.sModelName = t9.cModelName
                                                              AND t9.cAdminOrderStatus = 'A'
                         WHERE t1.nYear >= YEAR(GETDATE()) - 2
                         ORDER BY t1.nYear DESC,
                                  t1.cModelGroupCode,
                                  t1.cCode,
                                  t1.iRec;
                     END;
                 --interior color, exterior color, pio
                 IF @type = 'INTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.InteriorColor = t1.cSAP
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               --AND t10.enddate >= GETDATE()
                                                                                               --AND t10.startdate <= GETDATE()
                              INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
                                                           AND t2.nYear = t9.nModelYear
														   AND t2.sModelName = t9.cModelName
                                                           AND t9.cAdminOrderStatus = 'A'
                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                                                             AND t3.cCode = t10.ExteriorColor
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                         WHERE t1.cTable = @type
                               AND t2.nYear >= YEAR(GETDATE()) - 2
                               AND (t1.kVehicleXCode = 0
                                    OR (t1.kVehicleXCode > 0
                                        AND t3.iRec > 0))
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         --and t2.cCode='B2402A65' and t3.cCode='yb6'
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'EXTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.ExteriorColor = t1.ccode
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               --AND t10.enddate >= GETDATE()
                                                                                               --AND t10.startdate <= GETDATE()
                              INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
                                                           AND t2.nYear = t9.nModelYear
														   AND t2.sModelName = t9.cModelName
                                                           AND t9.cAdminOrderStatus = 'A'
                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                         WHERE t1.cTable = @type
                               AND t2.nYear >= YEAR(GETDATE()) - 2
                               AND (t1.kVehicleXCode = 0
                                    OR (t1.kVehicleXCode > 0
                                        AND t3.iRec > 0))
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         --and t2.cCode='B2402A65' and t1.cCode='yb6'
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'PIO'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN tbIncentive AS t9 ON t2.cModelCode = t9.cModelCode
                                                              AND t2.nYear = t9.nModelYear
															  AND t2.sModelName = t9.cModelName
                                                              AND t9.cAdminOrderStatus = 'A'
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                         WHERE t1.cTable = @type
                               AND t2.nYear >= YEAR(GETDATE()) - 2
                               AND (t1.kVehicleXCode = 0
                                    OR t1.kVehicleXCode > 0
                                    AND t3.iRec > 0)
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 -- package
                 IF @type = 'PAK'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN tbIncentive AS t9 ON t2.cModelCode = t9.cModelCode
                                                              AND t2.nYear = t9.nModelYear
															  and t2.sModelName = t9.cModelName
                                                              AND t9.cAdminOrderStatus = 'A'
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                         WHERE t1.cTable = @type
                               AND t2.nYear >= YEAR(GETDATE()) - 2
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t4.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 RETURN;
             END;
         ELSE
             BEGIN
                 IF @uid IS NOT NULL
                    AND UPPER(@userGroup) = 'ADM'
                     BEGIN
                         IF @type = 'YEAR'
                             BEGIN
                                 SELECT DISTINCT
                                        nYear AS [year],
                                        CAST(NULL AS VARCHAR(1)) AS model,
                                        CAST(NULL AS VARCHAR(100)) AS trim,
                                        CAST(nYear AS VARCHAR(20)) AS code,
                                        CAST(nYear AS VARCHAR(500)) AS name,
                                        CAST(NULL AS VARCHAR(50)) AS filter,
                                        CAST(NULL AS VARCHAR(50)) AS filter2,
                                        CAST(NULL AS VARCHAR(50)) AS filter3
                                 FROM tbVehicleTrim
                                 WHERE nYear >= YEAR(GETDATE()) - 2
                                 ORDER BY nYear DESC;
                             END;
                         --model Only
                         IF @type = 'MODELONLY'
                             BEGIN
                                 SELECT 0 AS [year],
                                        cModelCode AS model,
                                        NULL AS trim,
                                        CAST(cModelCode AS VARCHAR(100)) AS code,
                                        MAX(CAST(sModelName AS  VARCHAR(500))) AS name,
                                        NULL AS filter,
                                        NULL AS filter2,
                                        NULL AS filter3
                                 FROM tbVehicleTrim
                                 WHERE nYear >= YEAR(GETDATE()) - 2
                                 GROUP BY cModelCode
                                 ORDER BY MAX(sModelName),
                                          cModelCode;
                             END;
                         --model name Only
                         IF @type = 'MODELNAMEONLY'
                             BEGIN
                                 SELECT 0 AS [year],
                                        MAX(cModelCode) AS model,
                                        NULL AS trim,
                                        CAST(sModelName AS VARCHAR(100)) AS code,
                                        CAST(sModelName AS VARCHAR(500)) AS name,
                                        NULL AS filter,
                                        NULL AS filter2,
                                        NULL AS filter3
                                 FROM tbVehicleTrim
                                 WHERE nYear >= YEAR(GETDATE()) - 2
                                 GROUP BY sModelName
                                 ORDER BY sModelName;
                             END;
                         --model
                         IF @type = 'MODEL'
                             BEGIN
                                 SELECT nYear AS [year],
                                        cModelGroupCode AS model,
                                        NULL AS trim,
                                        CAST(cModelCode AS VARCHAR(100)) AS code,
                                        MAX(CAST(sModelName AS  VARCHAR(500))) AS name,
                                        NULL AS filter,
                                        NULL AS filter2,
                                        NULL AS filter3
                                 FROM tbVehicleTrim
                                 WHERE nYear >= YEAR(GETDATE()) - 2
                                 GROUP BY nYear,
                                          cModelCode,
										  cModelGroupCode
                                 ORDER BY nYear,
                                          MAX(sModelName),
                                          cModelCode;
                             END;
                         --trim
                         IF @type = 'TRIM'
                             BEGIN
                                 SELECT nYear AS [year],
                                        cModelGroupCode AS model,
                                        cCode AS trim,
                                        CAST(cCode AS VARCHAR(100)) AS code,
                                        CAST(sName AS VARCHAR(500)) AS name,
                                        NULL AS filter,
                                        NULL AS filter2,
                                        NULL AS filter3
                                 FROM tbVehicleTrim
                                 WHERE nYear >= YEAR(GETDATE()) - 2
                                 ORDER BY nYear DESC,
                                          cModelGroupCode,
                                          cCode,
                                          iRec;
                             END;
                         --interior color, exterior color, pio
                         IF @type = 'INTCLR'
                             BEGIN
                                 SELECT DISTINCT
                                        t2.nYear AS [year],
                                        t2.cModelGroupCode AS model,
                                        t4.cCode AS trim,
                                        CAST(t1.cCode AS VARCHAR(100)) AS code,
                                        t1.sDesc AS name,
                                        t3.cCode AS filter,
                                        t5.cCode AS filter2,
                                        t10.AccessoryGroup AS filter3
                                 FROM tbVehicleXCode t1
                                      INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
                                      INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                                       AND t10.InteriorColor = t1.cSAP
                                                                                                       AND t10.ModelYear = t2.nYear
                                                                                                       --AND t10.enddate >= GETDATE()
                                                                                                       --AND t10.startdate <= GETDATE()
                                      INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                               AND t1.kVehicleTrimEquivalent = t4.iRec
                                      LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                                     AND t1.kVehicleXCode > 0
                                                                     AND t3.cCode = t10.ExteriorColor
                                      LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                     AND t1.kVehicleXCodeIntClr > 0
                                      LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                     AND t1.kVehicleXCodePackage > 0
                                 WHERE t1.cTable = @type
                                       AND t2.nYear >= YEAR(GETDATE()) - 2
                                       AND (t1.kVehicleXCode = 0
                                            OR (t1.kVehicleXCode > 0
                                                AND t3.iRec > 0))
                                 --and t2.cCode='B2402A65' and t3.cCode='yb6'
                                 --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                                 ORDER BY t2.nYear DESC,
                                          t2.cModelGroupCode,
                                          t3.cCode,
                                          CAST(t1.cCode AS VARCHAR(100));
                             END;
                         IF @type = 'EXTCLR'
                             BEGIN
                                 SELECT DISTINCT
                                        t2.nYear AS [year],
                                        t2.cModelGroupCode AS model,
                                        t4.cCode AS trim,
                                        CAST(t1.cCode AS VARCHAR(100)) AS code,
                                        t1.sDesc AS name,
                                        t3.cCode AS filter,
                                        t5.cCode AS filter2,
                                        t10.AccessoryGroup AS filter3
                                 FROM tbVehicleXCode t1
                                      INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
                                      INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                                       AND t10.ExteriorColor = t1.ccode
                                                                                                       AND t10.ModelYear = t2.nYear
                                                                                                       --AND t10.enddate >= GETDATE()
                                                                                                       --AND t10.startdate <= GETDATE()
                                      INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                               AND t1.kVehicleTrimEquivalent = t4.iRec
                                      LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                                     AND t1.kVehicleXCode > 0
                                      LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                     AND t1.kVehicleXCodeIntClr > 0
                                      LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                     AND t1.kVehicleXCodePackage > 0
                                 WHERE t1.cTable = @type
                                       AND t2.nYear >= YEAR(GETDATE()) - 2
                                       AND (t1.kVehicleXCode = 0
                                            OR (t1.kVehicleXCode > 0
                                                AND t3.iRec > 0))
                                 --and t2.cCode='B2402A65' and t1.cCode='yb6'
                                 --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                                 ORDER BY t2.nYear DESC,
                                          t2.cModelGroupCode,
                                          t3.cCode,
                                          CAST(t1.cCode AS VARCHAR(100));
                             END;
                         IF @type = 'PIO'
                             BEGIN
                                 SELECT DISTINCT
                                        t2.nYear AS [year],
                                        t2.cModelGroupCode AS model,
                                        t4.cCode AS trim,
                                        CAST(t1.cCode AS VARCHAR(100)) AS code,
                                        t1.sDesc AS name,
                                        t3.cCode AS filter,
                                        t5.cCode AS filter2,
                                        t6.cCode AS filter3
                                 FROM tbVehicleXCode AS t1
                                      INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                                      INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                                  AND t1.kVehicleTrimEquivalent = t4.iRec
                                      LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                        AND t1.kVehicleXCode > 0
                                      LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                        AND t1.kVehicleXCodeIntClr > 0
                                      LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                        AND t1.kVehicleXCodePackage > 0
                                 WHERE t1.cTable = @type
                                       AND t2.nYear >= YEAR(GETDATE()) - 2
                                       AND (t1.kVehicleXCode = 0
                                            OR t1.kVehicleXCode > 0
                                            AND t3.iRec > 0)
                                 --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                                 ORDER BY t2.nYear DESC,
                                          t2.cModelGroupCode,
                                          t3.cCode,
                                          CAST(t1.cCode AS VARCHAR(100));
                             END;
                         -- package
                         IF @type = 'PAK'
                             BEGIN
                                 SELECT DISTINCT
                                        t2.nYear AS [year],
                                        t2.cModelGroupCode AS model,
                                        t4.cCode AS trim,
                                        CAST(t1.cCode AS VARCHAR(100)) AS code,
                                        t1.sDesc AS name,
                                        t3.cCode AS filter,
                                        t5.cCode AS filter2,
                                        t6.cCode AS filter3
                                 FROM tbVehicleXCode AS t1
                                      INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                                      INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                                  AND t1.kVehicleTrimEquivalent = t4.iRec
                                      LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                        AND t1.kVehicleXCode > 0
                                      LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                        AND t1.kVehicleXCodeIntClr > 0
                                      LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                        AND t1.kVehicleXCodePackage > 0
                                 WHERE t1.cTable = @type
                                       AND t2.nYear >= YEAR(GETDATE()) - 2
                                 ORDER BY t2.nYear DESC,
                                          t2.cModelGroupCode,
                                          t4.cCode,
                                          CAST(t1.cCode AS VARCHAR(100));
                             END;
                         RETURN;
                     END;
             END;
         IF @useVehicleModelIncentiveFilter = 1
            AND @uid IS NULL
            OR UPPER(@uid) <> 'ADM'
             BEGIN
                 IF @type = 'YEAR'
                     BEGIN
                         SELECT DISTINCT
                                t1.nYear AS [year],
                                CAST(NULL AS VARCHAR(1)) AS model,
                                CAST(NULL AS VARCHAR(100)) AS trim,
                                CAST(t1.nYear AS VARCHAR(20)) AS code,
                                CAST(t1.nYear AS VARCHAR(500)) AS name,
                                CAST(NULL AS VARCHAR(50)) AS filter,
                                CAST(NULL AS VARCHAR(50)) AS filter2,
                                CAST(NULL AS VARCHAR(50)) AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                             -- AND t9.cStatus = 'A'															  														    
															  AND 'A'=
																(CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																 WHEN (t9.cStatus = 'A' AND t1.cStatus = 'A') THEN 'A'
																ELSE 'I' END )
															  
															 
                         --WHERE t1.cStatus = 'A'
                         ORDER BY t1.nYear DESC;
                     END;
                 --model Only
                 IF @type = 'MODELONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                t1.cModelCode AS model,
                                NULL AS trim,
                                CAST(t1.cModelCode AS VARCHAR(100)) AS code,
                                MAX(CAST(t1.sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                              --AND t9.cStatus = 'A'
															   AND 'A'=
																(CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																 WHEN (t9.cStatus = 'A' AND t1.cStatus = 'A') THEN 'A'
																ELSE 'I' END )
                         --WHERE t1.cStatus = 'A'
                         GROUP BY t1.cModelCode
                         ORDER BY MAX(t1.sModelName),
                                  t1.cModelCode;
                     END;
                 --model name Only
                 IF @type = 'MODELNAMEONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                MAX(t1.cModelCode) AS model,
                                NULL AS trim,
                                CAST(t1.sModelName AS VARCHAR(100)) AS code,
                                CAST(t1.sModelName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
                                                              --AND t9.cStatus = 'A'
															   AND 'A'=
																(CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																 WHEN (t9.cStatus = 'A' AND t1.cStatus = 'A')THEN 'A'
																ELSE 'I' END )
                         --WHERE t1.cStatus = 'A'
                         GROUP BY t1.sModelName
                         ORDER BY t1.sModelName;
                     END;
                 --model
                 IF @type = 'MODEL'
                     BEGIN
                         SELECT t1.nYear AS [year],
                                t1.cModelGroupCode AS model,
                                NULL AS trim,
                                CAST(t1.cModelGroupCode AS VARCHAR(100)) AS code,
                                MAX(CAST(t1.sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
															  AND t1.sModelName = t9.cModelName
                                                              --AND t9.cStatus = 'A'
															   AND 'A'=
																(CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																 WHEN (t9.cStatus = 'A' AND t1.cStatus = 'A') THEN 'A'
																ELSE 'I' END )
                         --WHERE t1.cStatus = 'A'
                         GROUP BY t1.nYear,
                                  t1.cModelCode,
								  t1.cModelGroupCode
                         ORDER BY t1.nYear,
                                  MAX(t1.sModelName),
                                  t1.cModelCode;
                     END;
                 --trim
                 IF @type = 'TRIM'
                     BEGIN
                         SELECT t1.nYear AS [year],
                                t1.cModelGroupCode AS model,
                                t1.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                CAST(t1.sName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim AS t1
                              INNER JOIN tbIncentive AS t9 ON t1.cModelCode = t9.cModelCode
                                                              AND t1.nYear = t9.nModelYear
															  AND t1.sModelName = t9.cModelName
                                                              --AND t9.cStatus = 'A'
															   AND 'A'=
																(CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																 WHEN (t9.cStatus = 'A' AND t1.cStatus = 'A') THEN 'A'
																ELSE 'I' END )
                         --WHERE t1.cStatus = 'A'
                         ORDER BY t1.nYear DESC,
                                  t1.cModelGroupCode,
                                  t1.cCode,
                                  t1.iRec;
                     END;
                 --interior color, exterior color, pio
                 IF @type = 'INTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
								AND t2.nYear = t9.nModelYear
								AND t2.sModelName = t9.cModelName
								--AND t9.cStatus = 'A'
								 AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
										        WHEN t9.cStatus = 'A' THEN 'A'
												ELSE 'I' END )
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.InteriorColor = t1.cSAP
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               --AND startdate <= dateadd(mm,2,getdate())
																							   --AND enddate >= DATEADD(MONTH, 5, getdate())
																							     AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																												--WHEN enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																												WHEN enddate >= getdate() THEN 'A'
																												ELSE 'I' END )

                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                                                             AND t3.cStatus = 'A'
                                                             AND t3.cCode = t10.ExteriorColor
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                                                             AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                                                             AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
                               AND (t1.kVehicleXCode = 0 OR (t1.kVehicleXCode > 0 AND t3.iRec > 0))
							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
										        WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
												ELSE 'I' END )
                         --and t2.cCode='B2402A65' and t3.cCode='yb6'
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'EXTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
                                                           AND t2.nYear = t9.nModelYear
														   AND t2.sModelName = t9.cModelName
                                                           --AND t9.cStatus = 'A'
														   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																		  WHEN t9.cStatus = 'A' THEN 'A'
																		  ELSE 'I' END )
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.ExteriorColor = t1.ccode
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               --AND startdate <= dateadd(mm,2,getdate())
																							   --AND enddate >= DATEADD(MONTH, 5, getdate())
																							   --AND enddate >= dateadd(mm,-3,datediff(d,0,getdate()))
																							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																											  --WHEN enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																											  WHEN enddate >= getdate() THEN 'A'
																											  ELSE 'I' END )
                              
                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                                                             AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                                                             AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                                                             AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
                               AND (t1.kVehicleXCode = 0
                                    OR (t1.kVehicleXCode > 0
                                        AND t3.iRec > 0))
								AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
										        WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
												ELSE 'I' END )
                         --and t2.cCode='B2402A65' and t1.cCode='yb6'
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'PIO'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN tbIncentive AS t9 ON t2.cModelCode = t9.cModelCode
                                                              AND t2.nYear = t9.nModelYear
															  AND t2.sModelName = t9.cModelName
                                                              --AND t9.cStatus = 'A'
															  AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																			 WHEN t9.cStatus = 'A' THEN 'A'
																			 ELSE 'I' END )
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                                                                AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                                                                AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                                                                AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
                               AND (t1.kVehicleXCode = 0
                                    OR t1.kVehicleXCode > 0
                                    AND t3.iRec > 0)
							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
											WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
											ELSE 'I' END )
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 -- package
                 IF @type = 'PAK'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1 
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive AS t9 ON t2.cModelCode = t9.cModelCode
                                                              AND t2.nYear = t9.nModelYear
															  and t2.sModelName = t9.cModelName
                                                              --AND t9.cStatus = 'A'
															  AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																			 WHEN t9.cStatus = 'A' THEN 'A'
																			 ELSE 'I' END )
							  INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] AS MPC
															ON t2.cCode = MPC.ModelCode
															AND t2.nYear = MPC.ModelYear
															AND t1.cCode = MPC.AccessoryGroup
															--AND MPC.enddate >= DATEADD(MONTH, 5, getdate())
															AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																		   --WHEN MPC.enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																		   WHEN MPC.enddate >= getdate() THEN 'A'
																		   ELSE 'I' END )
                              
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                                                                AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                                                                AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                                                                AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
							    AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
											WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
											ELSE 'I' END )
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t4.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 RETURN;
             END;
         ELSE
             BEGIN
                 IF @type = 'YEAR'
                     BEGIN
                         SELECT DISTINCT
                                nYear AS [year],
                                CAST(NULL AS VARCHAR(1)) AS model,
                                CAST(NULL AS VARCHAR(100)) AS trim,
                                CAST(nYear AS VARCHAR(20)) AS code,
                                CAST(nYear AS VARCHAR(500)) AS name,
                                CAST(NULL AS VARCHAR(50)) AS filter,
                                CAST(NULL AS VARCHAR(50)) AS filter2,
                                CAST(NULL AS VARCHAR(50)) AS filter3
                         FROM tbVehicleTrim
                         WHERE cStatus = 'A'
                         ORDER BY nYear DESC;
                     END;
                 --model Only
                 IF @type = 'MODELONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                cModelCode AS model,
                                NULL AS trim,
                                CAST(cModelCode AS VARCHAR(100)) AS code,
                                MAX(CAST(sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim
                         WHERE cStatus = 'A'  
                         GROUP BY cModelCode
                         ORDER BY MAX(sModelName),
                                  cModelCode;
                     END;
                 --model name Only
                 IF @type = 'MODELNAMEONLY'
                     BEGIN
                         SELECT 0 AS [year],
                                MAX(cModelCode) AS model,
                                NULL AS trim,
                                CAST(sModelName AS VARCHAR(100)) AS code,
                                CAST(sModelName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim
                         WHERE cStatus = 'A'
                         GROUP BY sModelName
                         ORDER BY sModelName;
                     END;
                 --model
                 IF @type = 'MODEL'
                     BEGIN
                         SELECT nYear AS [year],
                                cModelGroupCode AS model,
                                NULL AS trim,
                                CAST(cModelGroupCode AS VARCHAR(100)) AS code,
                                MAX(CAST(sModelName AS  VARCHAR(500))) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim
                         WHERE cStatus = 'A'
                         GROUP BY nYear,
                                  cModelGroupCode
                         ORDER BY nYear,
                                  MAX(sModelName),
                                  cModelGroupCode;
                     END;
                 --trim
                 IF @type = 'TRIM'
                     BEGIN
                         SELECT nYear AS [year],
                                cModelGroupCode AS model,
                                cCode AS trim,
                                CAST(cCode AS VARCHAR(100)) AS code,
                                CAST(sName AS VARCHAR(500)) AS name,
                                NULL AS filter,
                                NULL AS filter2,
                                NULL AS filter3
                         FROM tbVehicleTrim
                         WHERE cStatus = 'A'
                         ORDER BY nYear DESC,
                                  cModelGroupCode,
                                  cCode,
                                  iRec;
                     END;
                 --interior color, exterior color, pio
                 IF @type = 'INTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
															AND t2.nYear = t9.nModelYear
															AND t2.sModelName = t9.cModelName															
															AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																			WHEN t9.cStatus = 'A' THEN 'A'
																			ELSE 'I' END )
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.InteriorColor = t1.cSAP
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               ----AND startdate <= dateadd(mm,2,getdate())
																							   --AND enddate >= DATEADD(MONTH, 5, getdate())
																							  AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																											 --WHEN enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																											 WHEN enddate >= getdate() THEN 'A'
																											 ELSE 'I' END )
                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                                                             AND t3.cStatus = 'A'
                                                             AND t3.cCode = t10.ExteriorColor
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                                                             AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                                                             AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
                               AND (t1.kVehicleXCode = 0
                                    OR (t1.kVehicleXCode > 0
                                        AND t3.iRec > 0))
							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
											WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
											ELSE 'I' END )
                         --and t2.cCode='B2402A65' and t3.cCode='yb6'
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'EXTCLR'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t10.AccessoryGroup AS filter3
                         FROM tbVehicleXCode t1
                              INNER JOIN tbVehicleTrim t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
															AND t2.nYear = t9.nModelYear
															AND t2.sModelName = t9.cModelName															
															AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																			WHEN t9.cStatus = 'A' THEN 'A'
																			ELSE 'I' END )
                              INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10 ON t10.ModelCode = t2.cCode
                                                                                               AND t10.ExteriorColor = t1.ccode
                                                                                               AND t10.ModelYear = t2.nYear
                                                                                               --AND startdate <= dateadd(mm,2,getdate())
																							   --AND enddate >= DATEADD(MONTH, 5, getdate())
																							   --AND enddate >= dateadd(mm,-3,datediff(d,0,getdate()))
																							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																							               --WHEN enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																										   WHEN enddate >= getdate() THEN 'A'
																							              ELSE 'I' END )
                              INNER JOIN tbVehicleTrimEquivalent t4 ON t4.kVehicleTrim = t2.iRec
                                                                       AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode t3 ON t1.kVehicleXCode = t3.iRec
                                                             AND t1.kVehicleXCode > 0
                                                             AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                             AND t1.kVehicleXCodeIntClr > 0
                                                             AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                             AND t1.kVehicleXCodePackage > 0
                                                             AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
                               AND (t1.kVehicleXCode = 0
                                    OR (t1.kVehicleXCode > 0
                                        AND t3.iRec > 0))
								AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
											WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
											ELSE 'I' END )
                         --and t2.cCode='B2402A65' and t1.cCode='yb6'
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 IF @type = 'PIO'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                                                                AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                                                                AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                                                                AND t6.cStatus = 'A'
                         WHERE t1.cStatus = 'A'
                               AND t2.cStatus = 'A'
                               AND t1.cTable = @type
                               AND (t1.kVehicleXCode = 0
                                    OR t1.kVehicleXCode > 0
                                    AND t3.iRec > 0)
                         --order by t2.nYear desc, t2.cModelCode, t1.sDesc, t4.cCode, cast(t1.cCode as varchar(100));
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t3.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 -- package
                 IF @type = 'PAK'
                     BEGIN
                         SELECT DISTINCT
                                t2.nYear AS [year],
                                t2.cModelGroupCode AS model,
                                t4.cCode AS trim,
                                CAST(t1.cCode AS VARCHAR(100)) AS code,
                                t1.sDesc AS name,
                                t3.cCode AS filter,
                                t5.cCode AS filter2,
                                t6.cCode AS filter3
                         FROM tbVehicleXCode AS t1
                              INNER JOIN tbVehicleTrim AS t2 ON t1.kVehicleTrim = t2.iRec
							  INNER JOIN tbIncentive t9 ON t2.cModelCode = t9.cModelCode
															AND t2.nYear = t9.nModelYear
															AND t2.sModelName = t9.cModelName															
															AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																			WHEN t9.cStatus = 'A' THEN 'A'
																			ELSE 'I' END )
							  INNER JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] AS MPC
															ON t2.cCode = MPC.ModelCode
															AND t2.nYear = MPC.ModelYear
															AND t1.cCode = MPC.AccessoryGroup
															--AND MPC.enddate >= DATEADD(MONTH, 5, getdate())
															AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
																		--WHEN MPC.enddate >= DATEADD(MONTH, 5, getdate()) THEN 'A'
																		WHEN MPC.enddate >= getdate() THEN 'A'
																		ELSE 'I' END )
                              INNER JOIN tbVehicleTrimEquivalent AS t4 ON t4.kVehicleTrim = t2.iRec
                                                                          AND t1.kVehicleTrimEquivalent = t4.iRec
                              LEFT JOIN tbVehicleXCode AS t3 ON t1.kVehicleXCode = t3.iRec
                                                                AND t1.kVehicleXCode > 0
                                                                AND t3.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t5 ON t1.kVehicleXCodeIntClr = t5.iRec
                                                                AND t1.kVehicleXCodeIntClr > 0
                                                                AND t5.cStatus = 'A'
                              LEFT JOIN tbVehicleXCode AS t6 ON t1.kVehicleXCodePackage = t6.iRec
                                                                AND t1.kVehicleXCodePackage > 0
                                                                AND t6.cStatus = 'A'
                         WHERE t1.cTable = @type
							   AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
											WHEN (t1.cStatus = 'A' AND t2.cStatus = 'A') THEN 'A'
											ELSE 'I' END )
                         ORDER BY t2.nYear DESC,
                                  t2.cModelGroupCode,
                                  t4.cCode,
                                  CAST(t1.cCode AS VARCHAR(100));
                     END;
                 RETURN;
             END;
     END;


GO
/****** Object:  StoredProcedure [dbo].[spGetXCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/14/2012
-- Description:	Get XCodes
-- =============================================
CREATE PROCEDURE [dbo].[spGetXCode]
    @table varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	select cCode as code, sDesc as [desc]
    from tbXCode 
    where cTable=@table
    order by nOrder
END
GO
/****** Object:  StoredProcedure [dbo].[spRejectOrder]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 12/16/2013
-- Description:	Reject Order 
-- =========================================================
CREATE PROCEDURE [dbo].[spRejectOrder]
	@uid int,
	@id_list varchar(3000)
AS
BEGIN
	-- E1 : deleted partially
	update tbOrder set 
		cStatus = (case when t3.nCntHMA>0 and t3.nCnt>t3.nCntHMA then 'PP' else 'OP' end),
		dtOrder = (case when t3.nCntHMA>0 and t3.nCnt>t3.nCntHMA then t1.dtOrder else null end)
	from tbOrder t1
	inner join (
		select x2.kOrder, count(x3.iRec) as nCnt, count(case when len(coalesce(x3.sHmaOrderNo, ''))>0 then x3.iRec end) as nCntHMA
		from tbOrderDS x2 
		inner join tbOrderDT x3 on x2.iRec = x3.kOrderDS
		group by x2.kOrder) t3 on t1.iRec = t3.kOrder
	where t1.cStatus in ('CM', 'IP', 'PP') and (t3.nCntHMA=0 or t3.nCnt>t3.nCntHMA) 
		and t1.iRec in (select cast(s as int) from dbo.SplitString(@id_list, ','));
	return @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetAllocateDealer]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 7/30/2014
-- Description:	Set Allocate Dealer
-- =============================================
CREATE PROCEDURE [dbo].[spSetAllocateDealer] 
    @uid int=0,
    @id int=0,   -- company id
	@allocateId int=0 -- allocate company id, if 0 then, make it unassign
AS
BEGIN
	SET NOCOUNT OFF;
	declare @returnValue int = 0;

	if EXISTS 
		(select  t1.iRec
		from tbUserCompany t1 
		inner join tbUserLink t2 on t1.kUser=t2.kUser and t1.nDefault=1
		inner join tbUser t3 on t2.kGroup=t3.iRec and t3.cGroupCode in ('FMC', 'FMS')
		left join (
			select x1.kCompany, count(x2.iRec) as nCntSub
			from tbUserCompany x1 
			inner join tbUserCompany x2 on x1.kUser=x2.kUser and x1.nDefault=1 and x2.nDefault=0
			group by x1.kCompany
		) t4 on t1.kCompany=t4.kCompany
		left join (
			select kCompany, count(*) as nCnt
			from tbUserCompany
			where nDefault=0
			group by kCompany
		) t5 on @allocateId>0 and t5.kCompany=@allocateId
		where t4.kCompany is null and t1.kCompany = @id and t5.kCompany is null) 
	begin 
		update tbUserLink set
			kGroup = t3.iRec
		from tbUserLink t1
		inner join tbUserCompany t2 on t1.kUser=t2.kUser and t2.nDefault=1
		inner join tbUser t3 on cGroupCode=(case coalesce(@allocateId,0) when 0 then 'FMC' else 'FMS' end)
		where t2.kCompany = @id;

		if @@ROWCOUNT>0
		begin
			if @returnValue = 0
			begin
				delete tbUserCompany where kCompany = @id and nDefault=0;
				if @@ERROR<>0
					set @returnValue = -2;
			end

			if @returnValue = 0
			begin
				insert into tbUserCompany (kUser, kCompany, nDefault)
				select top 1 kUser, @id, 0
				from tbUserCompany 
				where nDefault=1 and kCompany>0 and kCompany=@allocateId;
				if @@ERROR<>0
					set @returnValue = -2;
			end

			if @returnValue = 0
			begin
				update tbCompany set
					cDealer = t2.cDealer
				from tbCompany t1
				inner join (
					select iRec, cDealer from tbCompany
				) t2 on t2.iRec>0 and t2.iRec=@allocateId
				where t1.iRec=@id;
				if @@ERROR<>0
					set @returnValue = -2;
			end

			if @returnValue = 0
				set @returnValue = 1;
		end
	end

	return @returnValue;
END

GO
/****** Object:  StoredProcedure [dbo].[spSetCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Set Company Information 
-- =============================================
CREATE PROCEDURE [dbo].[spSetCompany] 
    @updateUid int=0,
    @id int=0,
    @categories varchar(100),
	@type varchar(3),
	@sapCode varchar(8),
	@dealerCode varchar(20),
	@status varchar(1),
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@phone varchar(10),
	@phoneExt varchar(5),
	@fax varchar(10),
	@confirmEmail varchar(60),
	@companyName varchar(100),
	@street varchar(50),
	@street2 varchar(50),
	@city varchar(50),
	@state varchar(2),
	@zip varchar(10),
	@url varchar(100),
	@fleetType varchar(50),
	@fleetSize varchar(50),
	@vmSedan varchar(50),
	@vmSUV varchar(50),
	@vmOther varchar(50) ,
	@serviceTerm varchar(50),
	@serviceMile varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int = 0;
	if @status='' or @status is null
		set @status='I';
	if @id=0 
	begin
		insert into tbCompany (
			cSAP, cDealer, cCompType, cStatus, sNameFirst, sNameLast, 
			sPhone, sPhoneExt, sFax, sConfirmEmail, sCompName, sCompStreet, sCompStreet2, sCompCity, cCompState, 
			sCompZip, sCompURL, sGenFleetType, sGenSizeOfFleet, 
			sGenVmSedan, sGenVmSUV, sGenVmOther, sGenHmPeriod, sGenHmMiles, kCreate, dtCreate, 
			kModify, dtModify
		) values (
			@sapCode, @dealerCode, @type, @status, @firstName, @lastName, 
			@phone, @phoneExt, @fax, @confirmEmail, @companyName, @street, @street2, @city, @state, 
			@zip, @url, @fleetType, @fleetSize, 
			@vmSedan, @vmSUV, @vmOther, @serviceTerm, @serviceMile, @updateUid, getdate(), 
			@updateUid, getdate()
		)
		if @@ERROR=0
		begin
			select @returnValue=cast(@@IDENTITY as int);
		end 
	end
	else
	begin
		set @categories = UPPER(','+@categories+',');
		if @categories =',ALL,' or CHARINDEX('SETTING',@categories) > 0
		begin
			update tbCompany
			set cSAP = @sapCode,
				cStatus = @status
			where iRec=@id;
		end
		if @categories =',ALL,' or CHARINDEX(',DEALER,',@categories) > 0
			update tbCompany
			set cDealer = @dealerCode
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',COMPANY,',@categories) > 0
			update tbCompany
			set sCompName = @companyName,
				sNameFirst = @firstName,
				sNameLast = @lastName,
				sCompStreet = @street,
				sCompStreet2 = @street2,
				sCompCity = @city,
				cCompState = @state,
				sCompZip = @zip,
				sCompURL = @url,
				sPhone = @phone,
				sPhoneExt = @phoneExt,
				sFax = @fax
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',GENERAL,',@categories) > 0
			update tbCompany
			set sGenFleetType = @fleetType,
				sGenSizeOfFleet = @fleetSize,
				sGenVmSedan = @vmSedan,
				sGenVmSUV = @vmSUV,
				sGenVmOther = @vmOther,
				sGenHmPeriod = @serviceTerm,
				sGenHmMiles = @serviceMile
			where iRec=@id;
		if @categories = ',ALL,' or CHARINDEX(',CONFIRMEMAIL,',@categories) > 0
			update tbCompany
			set sConfirmEmail = @confirmEmail
			where iRec = @id;
		if @@ERROR=0
			update tbCompany
			set kModify = @updateUid,
				dtModify = getdate()
			where iRec=@id;
		set @returnValue = @id;
	end
	if @@ERROR=0
		return @returnValue;
	else
		return 0;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetCompanyBySapCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		
-- Create date: 06/18/2014
-- Description:	Update Company Information 
-- =============================================
CREATE PROCEDURE [dbo].[spSetCompanyBySapCode] 
    @updateUid int=0,
    @categories varchar(100),
	@type varchar(3),
	@sapCode varchar(8),
	@dealerCode varchar(20),
	@status varchar(1),
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@phone varchar(10),
	@phoneExt varchar(5),
	@fax varchar(10),
	@companyName varchar(60),
	@street varchar(50),
	@street2 varchar(50),
	@city varchar(50),
	@state varchar(2),
	@zip varchar(10),
	@url varchar(100),
	@fleetType varchar(50),
	@fleetSize varchar(50),
	@vmSedan varchar(50),
	@vmSUV varchar(50),
	@vmOther varchar(50) ,
	@serviceTerm varchar(50),
	@serviceMile varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int = 0;
    declare @id int=0;
	
	begin
		set @categories = UPPER(','+@categories+',');

		select top 1 @id = iRec from tbCompany where cSAP=@sapCode;

		if @categories =',ALL,' or CHARINDEX(',DEALER,',@categories) > 0
			update tbCompany
			set cDealer = @dealerCode
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',COMPANY,',@categories) > 0
			update tbCompany
			set sCompName = @companyName,
				sNameFirst = @firstName,
				sNameLast = @lastName,
				sCompStreet = @street,
				sCompStreet2 = @street2,
				sCompCity = @city,
				cCompState = @state,
				sCompZip = @zip,
				sCompURL = @url,
				sPhone = @phone,
				sPhoneExt = @phoneExt,
				sFax = @fax
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',GENERAL,',@categories) > 0
			update tbCompany
			set sGenFleetType = @fleetType,
				sGenSizeOfFleet = @fleetSize,
				sGenVmSedan = @vmSedan,
				sGenVmSUV = @vmSUV,
				sGenVmOther = @vmOther,
				sGenHmPeriod = @serviceTerm,
				sGenHmMiles = @serviceMile
			where iRec=@id;
		if @@ERROR=0
			update tbCompany
			set kModify = @updateUid,
				dtModify = getdate()
			where iRec=@id;
		if @@ERROR=0
			set @returnValue = @id;
	end
	if @@ERROR=0
		return @returnValue;
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetCompanyFromSAP]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,George>
-- Create date: <Create 3,31,2014>
-- Description:	<Description,, This Procedure is made specially for SAP which allow admin to create a user account dynamically on SAP>
-- =============================================
CREATE PROCEDURE [dbo].[spSetCompanyFromSAP]
	@compnaySAP varchar(4000)
AS
BEGIN
	DECLARE @returnValue int = 0;

	UPDATE dbo.tbCompany SET cSAP = XX.cSAP, cStatus = 'A'
	FROM dbo.tbCompany 
	INNER JOIN (
		select 
			SUBSTRING(item,CHARINDEX('=', item, 0)+1,4000) as cSAP,
			CONVERT(int, substring(item,1,CHARINDEX('=', item, 0)-1)) as iRec 
		FROM dbo.SplitAndSelect(@compnaySAP, ',')
	) XX ON dbo.tbCompany.iRec = XX.iRec
	SET @returnValue = 1;

ENDProc:
	if @@ERROR<>0 
		SET @returnValue = 0;

	return @returnValue;
END




GO
/****** Object:  StoredProcedure [dbo].[spSetContactUs]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Contact Us Information 
-- =============================================
CREATE PROCEDURE [dbo].[spSetContactUs]
	@uid int, 
	@finCode varchar(20), 
	@firstName nvarchar(50), 
	@lastName nvarchar(50), 
	@phone varchar(10), 
	@email varchar(100), 
	@message nvarchar(4000)
AS
BEGIN
	SET NOCOUNT ON;
	insert into tbContactUs 
        (cFinCode, sFirstName, sLastName, sPhone, sEmailAddress, sMessage, kCreate, dtCreate) 
    VALUES 
		(@finCode,@firstName,@lastName,@phone,@email,@message,@uid,getdate());
	return cast(@@IDENTITY as int);
END
GO
/****** Object:  StoredProcedure [dbo].[spSetCourtesyDealer]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:           Sudhir Sharma
-- Create date: 07/22/2020
-- Description:      Set Courtesy Dealer 
-- exec [dbo].[spSetCourtesyDealer] 'AK002,AK003', 0
-- DTon_8/20/2020: redo the update 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetCourtesyDealer]
       @dealerlist varchar(5000),
       @status int
AS
BEGIN
       SET NOCOUNT ON;
              
       DECLARE @returnValue INT = 1;


	   --INSERT INTO  [ORDAGLISTENER.HKE.LOCAL].Hyundaiusa.dbo.tmpCourtesyDealerList (CourtesyDealerList, UpdatedStatus) VALUES (@dealerlist, @status) 
	   --EXEC  [ORDAGLISTENER.HKE.LOCAL].Hyundaiusa.[dbo].[spSetCourtesyDealerWorkaroud]
	   
       UPDATE Hyundaiusa.[Dealer].[DealerInfo] SET CourtesyDealerFlag= CASE @status WHEN 1 THEN 'Y' ELSE NULL END 
       WHERE DealerCode in (SELECT [Value] FROM [dbo].[udf_Util_Split](@dealerlist, ','))                                                

       UPDATE HUSA.dbo.DlrInfo SET [IsAcceptsFleet] = CASE @status WHEN 1 THEN 1 ELSE NULL END 
       WHERE DealerCd in (SELECT [Value] FROM [dbo].[udf_Util_Split](@dealerlist, ','))  


       IF @@ERROR=0 RETURN @returnValue;
       ELSE RETURN 0;
	   


END

GO
/****** Object:  StoredProcedure [dbo].[spSetDeliveryConfirmationHeader]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Delivery Confirmation Header Information 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetDeliveryConfirmationHeader]
	@uid int,
	@id int,
	@reqUserId int,
	@dealerCode varchar(20),
	@dealerName varchar(100),
	@street varchar(50),
	@street2 varchar(50),
	@city varchar(50),
	@state varchar(2),
	@zip varchar(10),
	@contact nvarchar(100),
	@phone varchar(10),
	@phoneExt varchar(5)
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int = 0;
	if @id=0
	begin
		insert into tbDelConfirm 
			(kUser, cDealer, sDealerName, sStreet, sStreet2, sCity, cState, sZip, 
			sContact, sPhone, sPhoneExt, kCreate, dtCreate) 
			select @reqUserId,@dealerCode, @dealerName, @street, @street2, @city, @state, @zip,
			@contact,@phone,@phoneExt,@uid,getdate();
		if @@ERROR=0
			set @returnValue = cast(@@IDENTITY as int);
	end
	else
	begin
		update tbDelConfirm set
			cDealer=@dealerCode, 
			sDealerName=@dealerName, 
			sStreet=@street, 
			sStreet2=@street2, 
			sCity=@city, 
			cState=@state, 
			sZip=@zip, 
			sContact=@contact, 
			sPhone=@phone, 
			sPhoneExt=@phoneExt
			where iRec=@id;
		if @@ERROR=0
			delete from tbDelConfirmItem where kDelConfirm = @id;
		if @@ERROR=0
			set @returnValue = @id;
	end
	return @returnValue;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetDeliveryConfirmationItem]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Delivery Confirmation Item Information 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetDeliveryConfirmationItem]
	@hid int,
	@year int,
	@model varchar(1),
	@vin varchar(17),
	@deliveryDate datetime,
	@mileage int
AS
BEGIN
	SET NOCOUNT ON;
    insert into tbDelConfirmItem 
        (kDelConfirm, nYear, cModel, sVIN, dtDelDate, nMileage) 
        values
        (@hid,@year,@model,@vin,@deliveryDate,@mileage);
	if @@ERROR=0
		return cast(@@IDENTITY as int);
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Drop Ship Information
-- Modified: 7/18/2018, Erik Mildner, added dropship data.
-- =========================================================
CREATE PROCEDURE [dbo].[spSetDropship]
	@updateUid int,
    @categories varchar(100),
	@uid int,
	@id int,
	@status varchar(1),
	@code varchar(20),
	@companyName nvarchar(50),
	@contact nvarchar(50),
	@street varchar(50),
	@street2 varchar(50),
	@city varchar(50),
	@state varchar(2),
	@zip varchar(10),
	@phone varchar(20),
	@phone2 varchar(20),
	@monOpenHours varchar(10),
	@monCloseHours varchar(10),
	@tuesOpenHours varchar(10),
	@tuesCloseHours varchar(10),
	@wedOpenHours varchar(10),
	@wedCloseHours varchar(10),
	@thrsOpenHours varchar(10),
	@thrsCloseHours varchar(10),
	@friOpenHours varchar(10),
	@friCloseHours varchar(10),
	@satOpenHours varchar(10),
	@satCloseHours varchar(10),
	@sunOpenHours varchar(10),
	@sunCloseHours varchar(10),
	@specialInstructions varchar(30),
	@afterHoursDelivery varchar(1)
AS
BEGIN
	SET NOCOUNT ON;
	declare @updateGroup int = 0;
	declare @returnValue int = 0;
	if @status='' or @status is null
		set @status='I';
	if @id=0 
	begin
		insert into tbDropship (
			cStatus, kUser, cCode, sCompanyName, sContactName, sCompStreet, sCompStreet2, sCompCity,
            cCompState, sCompZip, sPhone, sPhone2, kCreate, dtCreate, kModify, dtModify, specialInstructions, afterHoursDelivery
		) values (
			@status, @uid, @code, @companyName, @contact, @street, @street2, @city,
            @state, @zip, @phone, @phone2, @updateUid, getdate(), @updateUid, getdate(), @specialInstructions, @afterHoursDelivery
		);
		if @@ERROR=0
			begin
				set @returnValue=cast(@@IDENTITY as int);
				insert into tbDropshipWorkingHour (
					kDropship, dayOfWeek, openTime, closeTime
				) values (@returnValue, 0, @monOpenHours, @monCloseHours),
							(@returnValue, 1, @tuesOpenHours, @tuesCloseHours),
							(@returnValue, 2, @wedOpenHours, @wedCloseHours),
							(@returnValue, 3, @thrsOpenHours, @thrsCloseHours),
							(@returnValue, 4, @friOpenHours, @friCloseHours),
							(@returnValue, 5, @satOpenHours, @satCloseHours),
							(@returnValue, 6, @sunOpenHours, @sunCloseHours);
			end
		if @@ERROR>0
			set @returnValue = 0;
	end
	else
	begin
		set @categories = UPPER(','+@categories+',');
		if @categories =',ALL,' or CHARINDEX(',SETTING,',@categories) > 0
			update tbDropship
			set cStatus = @status,
				cCode = @code
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',COMPANY,',@categories) > 0
			update tbDropship
			set sCompanyName=@companyName, 
				sContactName=@contact, 
				sCompStreet=@street, 
				sCompStreet2=@street2, 
				sCompCity=@city,
				cCompState=@state, 
				sCompZip=@zip, 
				sPhone=@phone, 
				sPhone2=@phone2,
				specialInstructions=@specialInstructions,
				afterHoursDelivery=@afterHoursDelivery
			where iRec=@id;
		if @categories =',ALL,' or CHARINDEX(',COMPANYHOURS,',@categories) > 0
			begin
				update tbDropshipWorkingHour
				set openTime = CASE
									WHEN dayOfWeek = 0 THEN @monOpenHours
									WHEN dayOfWeek = 1 THEN @tuesOpenHours
									WHEN dayOfWeek = 2 THEN @wedOpenHours
									WHEN dayOfWeek = 3 THEN @thrsOpenHours
									WHEN dayOfWeek = 4 THEN @friOpenHours
									WHEN dayOfWeek = 5 THEN @satOpenHours
									WHEN dayOfWeek = 6 THEN @sunOpenHours
							   END,
					closeTime =	CASE
									WHEN dayOfWeek = 0 THEN @monCloseHours
									WHEN dayOfWeek = 1 THEN @tuesCloseHours
									WHEN dayOfWeek = 2 THEN @wedCloseHours
									WHEN dayOfWeek = 3 THEN @thrsCloseHours
									WHEN dayOfWeek = 4 THEN @friCloseHours
									WHEN dayOfWeek = 5 THEN @satCloseHours
									WHEN dayOfWeek = 6 THEN @sunCloseHours
								END
				where kDropship=@id
			end
		if @@ERROR=0
			update tbDropship
			set kModify = @updateUid,
				dtModify = getdate()
			where iRec=@id;
		if @@ERROR=0
			set @returnValue = @id;
	end

	if @@ERROR=0
		return @returnValue;
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetDropshipFlag]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =========================================================
-- Author:		Erik Mildner
-- Create date: 08/06/2020
-- Description:	Set Dropship Flag 
-- exec [dbo].[spSetDropshipFlag] 'AK002,AK003', 0
-- DTON_08/20/2020: Using existing split so we don't need to parse it here 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetDropshipFlag]
	@Dropshiplist varchar(5000),
	@status int
AS
BEGIN
	SET NOCOUNT ON;

	declare @returnValue int = 1;
	/*
	declare @SplitOn char(1)=',';


	declare @RtnValue table 
	(
		
	Id int identity(1,1),
	Value varchar(100)
	) 
 
	BEGIN
		While (Charindex(@SplitOn,@Dropshiplist)>0)
		Begin 
			Insert Into @RtnValue (value)
			Select 
			Value = ltrim(rtrim(Substring(@Dropshiplist,1,Charindex(@SplitOn,@Dropshiplist)-1))) 
			Set @Dropshiplist = Substring(@Dropshiplist,Charindex(@SplitOn,@Dropshiplist)+len(@SplitOn),len(@Dropshiplist))
		End 

		Insert Into @RtnValue (Value)
			Select Value = ltrim(rtrim(@Dropshiplist))
	END


	update DS
		set DS.isActive = @status
	from  tbDropship DS
	inner join @RtnValue rv
		on DS.cCode=rv.Value
	*/

	UPDATE dbo.tbDropship SET isActive = @status 
	WHERE cCode IN (SELECT [Value] FROM [dbo].[udf_Util_Split](@Dropshiplist, ','))

	IF @@ERROR=0 RETURN @returnValue;
	ELSE RETURN 0;

END
GO
/****** Object:  StoredProcedure [dbo].[spSetFile]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set File Information 
-- =============================================
CREATE PROCEDURE [dbo].[spSetFile] 
    @uid int,
    @name nvarchar(500),
    @type varchar(100),
    @size bigint,
    @md5 varchar(40)=null
AS
BEGIN
	SET NOCOUNT ON;
	declare @duplicateCount int = 0;
	if LEN(@md5)>0
		select @duplicateCount =count(*) 
			from tbDatafile 
			where nSize=@size and sMD5=@md5;
	insert into tbDatafile (kUser, sFilename, sContentType, nSize, sMD5, tsRec) 
		VALUES (@uid,@name,@type,@size,@md5,getdate());
	select @duplicateCount as nDuplicateCount, cast(@@IDENTITY as int) as iNewID;
	return cast(@@IDENTITY as int);
END
GO
/****** Object:  StoredProcedure [dbo].[spSetFlag]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Flag 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetFlag]
	@updateUid int,
    @table varchar(20),
	@linkList varchar(3000),
	@typeList varchar(3000)
AS
BEGIN
	SET NOCOUNT ON;
    delete from tbFlag
        where cTable=@table and kLink in (select cast(s as int) from dbo.SplitString(@linkList, ',')) and kCreate=@updateUid
	if @@ERROR=0
		insert into tbFlag
			(cTable, kLink, cType, kCreate, dtCreate)
		select @table, cast(t1.s as int), t2.s, @updateUid, getdate()
		from dbo.SplitString(@linkList, ',') t1
		inner join dbo.SplitString(@typeList, ',') t2 on t1.idx=t2.idx;
	if @@ERROR=0
		return 1;
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetImportHistory]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Set Import History
-- =================================================================
CREATE PROCEDURE [dbo].[spSetImportHistory]
	@uid int,
	@type varchar(20),
	@fileId int
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int = 0;

	insert into tbImportHistory(kUser, cType, tsRec) 
        values (@uid, @type, getdate());

	if @@ERROR = 0
	begin
		set @returnValue = cast(@@IDENTITY as int);
		insert into tbDatafileLink (kDatafile, cTable,  kLink, nOrder, nPrimary, tsRec) 
			values (@fileId, 'IMPHIST', @returnValue, 0, 1, getdate());
	end

	if @@ERROR = 0
		return @returnValue;
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetIncentive]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set Incentive Information 
-- Modified: 8/23/2019, Erik, Added modelname to fix series code nonuniqueness
-- Modified: 02/08/2021, Rohit Srivastava , HF#415 - Include newly added column ('masterStatusOverride')
-- =========================================================
CREATE PROCEDURE [dbo].[spSetIncentive]
	@updateUid int,
    @categories varchar(100),
	@modelCode varchar(1),
	@modelYear int,
	@status varchar(1),
	@masterstatusoverride varchar(1),
	@adminOrderStatus varchar(1) = null,
	@incentive decimal(10, 4),
	@sopDate datetime,
	@finalOrderDate datetime,
	@fileId int,
	@modelName varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	declare @iRec int = 0;
	declare @updateFile int = 0;
	declare @returnValue int = 0;
    select @iRec=iRec from tbIncentive where cModelCode=@modelCode and nModelYear=@modelYear and cModelName=@modelName;
	if @status='' or @status is null
		set @status='I';

	if @adminOrderStatus='' or @adminOrderStatus is null
		set @adminOrderStatus='I';

	if @masterstatusoverride='' or @masterstatusoverride is null
		set @masterstatusoverride='I';

	if @iRec=0 
	begin
		insert into tbIncentive(
			cModelCode,nModelYear,cStatus,cAdminOrderStatus,cMasterStatusOverride,cyIncentive,dtSOP,dtFinalOrder,kCreate,dtCreate,kModify,dtModify, cModelName
		) values (
			@modelCode,@modelYear,@status,@adminOrderStatus,@masterstatusoverride,@incentive,@sopDate,@finalOrderDate,@updateUid,getdate(),@updateUid,getdate(), @modelName
		);
		if @@ERROR=0
		begin
			select @returnValue=cast(@@IDENTITY as int);
			set @updateFile=1;
		end
	end
	else
	begin
		set @categories = UPPER(','+@categories+',');
		if @categories =',ALL,' or CHARINDEX(',DATA,',@categories) > 0
			update tbIncentive
			set cStatus = @status,
				cAdminOrderStatus = @adminOrderStatus,
				cMasterStatusOverride = @masterstatusoverride,
				cyIncentive = @incentive,
				dtSOP = @sopDate,
				dtFinalOrder = @finalOrderDate
			where iRec=@iRec;
		if @categories =',ALL,' or CHARINDEX(',FILE,',@categories) > 0
		begin
			delete from tbDatafileLink where cTable='INCENTIVE' and kLink=@iRec;
			set @updateFile=1;
		end
		if @@ERROR=0
			update tbIncentive
			set kModify = @updateUid,
				dtModify = getdate()
			where iRec=@iRec;
		if @@ERROR=0
			set @returnValue = @iRec;
	end

	if @@ERROR=0 and @updateFile=1 and @fileId<>0
		insert into tbDatafileLink 
			(kDatafile, cTable,  kLink, nOrder, nPrimary, tsRec) 
		values 
			(@fileId, 'INCENTIVE', @returnValue, 0, 1, getdate());

	if @@ERROR=0
		return @returnValue;
	else
		return 0;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetOrderAction]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Set Order Action (Change Order Status) 
-- Modified: 6/30/2017 - Daniel Lee (update tbCompanyDropshipLink and tbCompanyFmcEnuLink)
-- Modified: 09/01/2021 - Kumaraswamy K (Allowed other sub users to submit the order) 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderAction]
	@uid int,
	@id int,
	@action varchar(2)
AS
BEGIN
	declare @returnValue int = 0;
	if @id>0
	begin
		DECLARE @currOrderUser int;
		DECLARE @currOrderStatus varchar(2);
        select @currOrderUser=kOrderUser, @currOrderStatus=cStatus
            from tbOrder 
            where iRec=@id;
		if @@ROWCOUNT=0
			set @returnValue = -4;  --  no record
		else
		begin
			--if @uid<>@currOrderUser
			--	set @returnValue = -2;  --  allow only ordered user
			if @currOrderStatus<>'OP'
				set @returnValue = -3;  --  edit only 'open' status
		end
		if @returnValue=0
		begin
			if @action='CM'
			begin
				update tbOrder set
                        cStatus		=@action, 
                        kOrderUser	=@uid, 
                        dtOrder		=getdate(),
						kModify     =@uid, 
						dtModify    =getdate()
                    from tbOrder t0
                    inner join tbCompany t2 on t0.kFMCCompany=t2.iRec
                    inner join tbUserCompany t3 on t2.iRec=t3.kCompany
                    inner join tbUser t1 on t1.sLogin is not null and t3.kUser=t1.iRec
                    where t0.cStatus<>'XX' and t0.iRec=@id

				if @@ROWCOUNT>0 and @@ERROR=0
					set @returnValue = @id;

				-- //Daniel Lee 6/29/2017 - insert into tbCompanyDropshipLink if FMC and Dropship are not linked
				INSERT INTO tbCompanyDropshipLink (kCompany, kDropship, cStatus, kCreate, dtCreate, kModify, dtModify)
				select t1.kFMCCompany, t2.kDropship, t3.cStatus, t3.kCreate, getdate(), t3.kModify, getdate()
					from tbOrder t1
					left join tbOrderDS t2 on t1.iRec = t2.kOrder
					left join tbDropship t3 on t2.kDropship = t3.iRec
					where t1.iRec = @id
						and t3.DealerInd = 0
						and (t2.kDropship not in (select t4.kDropship from tbCompanyDropshipLink t4 where t4.kCompany = t1.kFMCCompany))

				-- //Daniel Lee 6/30/2017 - insert into tbCompanyFmcEnuLink if FMC and ENU are not linked
				insert into tbCompanyFmcEnuLink (kCompanyFMC, kCompanyENU, sLoginENU, cStatus, kCreate, dtCreate, kModify, dtModify)
				select t1.kFMCCompany, t1.kENUCompany, t2.sConfirmEmail, t2.cStatus, t1.kFMCCompany, getdate(), t1.kFMCCompany, getdate()
					from tbOrder t1
					left join tbCompany t2 on t1.kENUCompany = t2.iRec
					where t1.iRec = @id
						and t2.cStatus = 'A'
						and t2.cCompType = 'ENU'
						and (t1.kENUCompany not in (select t3.kCompanyENU from tbCompanyFmcEnuLink t3 where t3.kCompanyFMC = t1.kFMCCompany))

			end
			if @action='OP'
			begin
				update tbOrder set
                        cStatus     =@action, 
                        dtOrder		=null,
                        kModify     =@uid, 
                        dtModify    =getdate()
                    from tbOrder t0
                    inner join tbCompany t2 on t0.kFMCCompany=t2.iRec
                    inner join tbUserCompany t3 on t2.iRec=t3.kCompany
                    inner join tbUser t1 on t1.sLogin is not null and t3.kUser=t1.iRec
                    where t0.cStatus<>'XX' and t0.iRec=@id
				if @@ROWCOUNT>0 and @@ERROR=0
					set @returnValue = @id;

				-- //Daniel Lee 6/29/2017 - insert into tbCompanyDropshipLink if FMC and Dropship are not linked
				INSERT INTO tbCompanyDropshipLink (kCompany, kDropship, cStatus, kCreate, dtCreate, kModify, dtModify)
				select t1.kFMCCompany, t2.kDropship, t3.cStatus, t3.kCreate, getdate(), t3.kModify, getdate()
					from tbOrder t1
					left join tbOrderDS t2 on t1.iRec = t2.kOrder
					left join tbDropship t3 on t2.kDropship = t3.iRec
					where t1.iRec = @id
						and t3.DealerInd = 0
						and (t2.kDropship not in (select t4.kDropship from tbCompanyDropshipLink t4 where t4.kCompany = t1.kFMCCompany))

				-- //Daniel Lee 6/30/2017 - insert into tbCompanyFmcEnuLink if FMC and ENU are not linked
				insert into tbCompanyFmcEnuLink (kCompanyFMC, kCompanyENU, sLoginENU, cStatus, kCreate, dtCreate, kModify, dtModify)
				select t1.kFMCCompany, t1.kENUCompany, t2.sConfirmEmail, t2.cStatus, t1.kFMCCompany, getdate(), t1.kFMCCompany, getdate()
					from tbOrder t1
					left join tbCompany t2 on t1.kENUCompany = t2.iRec
					where t1.iRec = @id
						and t2.cStatus = 'A'
						and t2.cCompType = 'ENU'
						and (t1.kENUCompany not in (select t3.kCompanyENU from tbCompanyFmcEnuLink t3 where t3.kCompanyFMC = t1.kFMCCompany))
			end
		end
	end
	else
		set @returnValue = -1;
	return @returnValue;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetOrderBatch]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Erik Mildner
-- Create date: 11/15/2018
-- Description:	Create multiple orders off uploaded CSV
-- Modified: 3/7/2019 - Erik upper case [exteriorColorCode] and group by unique active dropship
-- Modified: 4/8/2019 - Erik, Fixed FMC user validation and used different style to validate
-- Modified: 8/29/2019 - Erik, Fixed dwh.PIO_ExclusiveRules nonunique series code by using model group code
-- Modified: 9/18/2019 - Erik, Changed interiorColorCode length from 20 to 100
-- Modified: 10/17/2019 - Erik, Removed enu from unique PO check.  unique PO = PO + fmc.
-- Modified: 4/28/2020 - Remove startDate and endDate logic
-- Modified: 11/6/2020 - Add startDate and endDate logic for color and packages 
-- Modified: 2/22/2021 - Rohit, HF#415 - Overriding the vehicle filter condition ('end date') based on newly added Flag
-- Modified: 3/10/2021 - Rohit, HF#415 - Override the filter of (VehicleTrim - cStatus) based on MasterOverrideFlag. 
-- Modified: 6/20/2023 - Erik,  HF-432 Fix interior color cMasterStatusOverride
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderBatch]
	@uid int,
	@idBatchOrder int

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @returnValue int = 0;

	CREATE TABLE #TempBatchOrderDT
	(
		iRec int,
		poNo varchar(30),
		salesType varchar(1),
		fmcUser varchar(20),
		enuUser varchar(20),
		dropshipCode varchar(20),
		modelYear int,
		modelCode varchar(20),
		packageCode varchar(2),
		exteriorColorCode varchar(3),
		interiorColorCode varchar(100),
		portPDI varchar(1),
		quantity int,
		requestDeliveryDate datetime,
		pio1 varchar(10),
		pio2 varchar(10),
		pio3 varchar(10),
		pio4 varchar(10),
		pio5 varchar(10),
		pio6 varchar(10),
		pio7 varchar(10),
		pio8 varchar(10),
		pio9 varchar(10),
		pio10 varchar(10),
		kDataFile int,
		errorFlag int,
		errorMessage varchar(200),
		errorColumn varchar(50),
		fmcUserId int,
		enuUserId int
	)

	DECLARE @insertedBatchOrders TABLE (orderIds INT )
	DECLARE @insertedDSOrders TABLE (dsOrderIds INT )
	DECLARE @currDate datetime = getdate();
	DECLARE @startDeliveryDate datetime = CASE WHEN (DAY(@currDate) + 14) < 16 THEN DATEADD(month, DATEDIFF(month, 0, @currDate), 15)
											   ELSE DATEADD(month, DATEDIFF(month, 0, DATEADD(month, 1, @currDate)), 0)
										  END;
	DECLARE @endDeliveryDate datetime = CASE WHEN (DAY(@startDeliveryDate)) < 16 THEN dateadd(day, 15, dateadd(year, 1, @startDeliveryDate))
											   ELSE DATEADD(year, 1,DATEADD(month, DATEDIFF(month, -1, @startDeliveryDate), 0))
										  END;
	
	insert into #TempBatchOrderDT
		(iRec,
		poNo,
		salesType,
		fmcUser,
		enuUser,
		dropshipCode,
		modelYear,
		modelCode,
		packageCode,
		exteriorColorCode,
		interiorColorCode,
		portPDI,
		quantity,
		requestDeliveryDate,
		pio1,
		pio2,
		pio3,
		pio4,
		pio5,
		pio6,
		pio7,
		pio8,
		pio9,
		pio10,
		kDataFile,
		errorFlag,
		errorMessage,
		errorColumn,
		fmcUserId,
		enuUserId
		)
	SELECT [iRec],
		   [poNo],
		   [salesType],
		   [fmcUser],
		   [enuUser],
		   [dropshipCode],
		   [modelYear],
		   [modelCode],
		   [packageCode],
		   UPPER([exteriorColorCode]),
		   [interiorColorCode],
		   [portPDI],
		   [quantity],
		   [requestDeliveryDate],
		   [pio1],
		   [pio2],
		   [pio3],
		   [pio4],
		   [pio5],
		   [pio6],
		   [pio7],
		   [pio8],
		   [pio9],
		   [pio10],
		   [kDataFile],
		   [errorFlag],
		   [errorMessage],
		   [errorColumn],
		   NULL,
		   NULL
	FROM [tbOrderDTBatch] tBatch
	WHERE tBatch.kDataFile = @idBatchOrder

	-- FMC user validation
	UPDATE tmpBatch
    SET tmpBatch.errorFlag = 1,
            tmpBatch.errorMessage = 'Invalid FMC User',
            tmpBatch.errorColumn = 'fmcUser'
    FROM #TempBatchOrderDT tmpBatch
    WHERE NOT EXISTS ( select TOP 1 * from tbUser t1
					   inner join tbUserCompany t2
							on t2.kUser=t1.iRec
					   inner join tbCompany fmc
							on t2.kCompany=fmc.iRec
							and tmpBatch.fmcUser = fmc.cSAP
							and fmc.cStatus = 'A'
					   where t1.irec = @uid )
		and tmpBatch.errorFlag = 0
	
	-- insert fmc user id
	UPDATE tmpBatch
	SET tmpBatch.fmcUserId = fmc.iRec
	FROM #TempBatchOrderDT tmpBatch
	inner join tbUser t1
		on t1.iRec = @uid
	left join tbUserCompany t2
		on t2.kUser=t1.iRec
	inner join tbCompany fmc
		on t2.kCompany=fmc.iRec
		and tmpBatch.fmcUser = fmc.cSAP
		and fmc.cStatus = 'A'

	-- ENU user validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid ENU User',
		tmpBatch.errorColumn = 'enuUser'
	FROM #TempBatchOrderDT tmpBatch
	left join tbCompany enu
		on enu.cSAP = tmpBatch.enuUser
	WHERE (enu.iRec is NULL
		or enu.cStatus = 'X')
		and tmpBatch.errorFlag = 0

	-- insert ENU user id
	UPDATE tmpBatch
	SET tmpBatch.enuUserId = enu.iRec
	FROM #TempBatchOrderDT AS tmpBatch
	inner join tbCompany enu
		on enu.cSAP = tmpBatch.enuUser

	-- duplicate po validation FROM CSV
	/* this validation prevents a one to many creation of orders because in CSV, multiple duplicate PO rows are needed to create multiple tbOrderDT.
	   [spSetOrderBatch] was built to create many tbOrderDT per PO because that's how current ordering system works.
	   By making validation less strict by adding columns in GROUP BY subquery, a one to many orders can be created.
	*/
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Duplicate PO in CSV',
		tmpBatch.errorColumn = 'poNo'
	FROM #TempBatchOrderDT AS tmpBatch
	WHERE tmpBatch.iRec not in
	(
		SELECT min(tmpB1.iRec)
		FROM #TempBatchOrderDT AS tmpB1 
		GROUP BY tmpB1.poNo, tmpB1.fmcUser
	);

	-- duplicate po validation FROM database
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Duplicate PO in System',
		tmpBatch.errorColumn = 'poNo'
	FROM #TempBatchOrderDT AS tmpBatch
    INNER JOIN tbOrder AS tbO
        ON tbO.sPONo = tmpBatch.poNo
	    and tbo.kFMCCompany = tmpBatch.fmcUserId
	LEFT JOIN tbUser t1
		ON t1.iRec = @uid
	LEFT JOIN tbCompany fmc
		ON fmc.iRec=tmpBatch.fmcUserId
	WHERE tmpBatch.errorFlag = 0

	-- salesType validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid sales type',
		tmpBatch.errorColumn = 'salesType'
	FROM #TempBatchOrderDT AS tmpBatch
	WHERE (tmpBatch.salesType not in ('C','G','L'))
	and tmpBatch.errorFlag = 0

	-- package validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid package',
		tmpBatch.errorColumn = 'packageCode'
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
		AND vT.nYear = tmpBatch.modelYear
		--AND vT.cStatus = 'A'
	INNER JOIN tbIncentive t9 ON vT.cModelCode = t9.cModelCode
								AND vT.nYear = t9.nModelYear
								AND vT.sModelName = t9.cModelName
	LEFT JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] AS MPC
		ON vT.cCode = MPC.ModelCode
		AND vT.nYear = MPC.ModelYear
		AND tmpBatch.packageCode = MPC.AccessoryGroup
		--AND MPC.enddate >= getdate()
		AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
		--WHEN MPC.enddate >= getdate() THEN 'A'
		WHEN ( (MPC.enddate >= getdate()) AND vT.cStatus = 'A') THEN 'A'
		ELSE 'I' END )
	LEFT JOIN tbVehicleXCode AS vXC
		ON vXC.cCode = tmpBatch.packageCode 
		and vXC.kVehicleTrim = vT.iRec
		and vXC.cTable = 'PAK'
		and vXC.cStatus = 'A'
    WHERE (vT.iRec is NULL or MPC.EndDate is NULL or vXC.irec is NULL)
	and tmpBatch.errorFlag = 0
	
	-- exterior color validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid exterior color',
		tmpBatch.errorColumn = 'exteriorColorCode'
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
		AND vT.nYear = tmpBatch.modelYear
		AND vT.cStatus = 'A'
	INNER JOIN tbIncentive t9 ON vT.cModelCode = t9.cModelCode
							AND vT.nYear = t9.nModelYear
							AND vT.sModelName = t9.cModelName
	LEFT JOIN tbVehicleXCode AS vXC
		ON vXC.cCode = tmpBatch.exteriorColorCode 
		and vXC.kVehicleTrim = vT.iRec
		and vXC.cTable = 'EXTCLR'
		--and vXC.cStatus = 'A'
    LEFT JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10
		ON t10.ModelCode = vT.cCode
        AND t10.ExteriorColor = vXC.cSAP
        AND t10.ModelYear = vT.nYear
		----AND startdate <= dateadd(mm,2,getdate())
		--AND enddate >= getdate()                                             
		AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
					   --WHEN enddate >= getdate() THEN 'A'
					   WHEN ((enddate >= getdate()) AND vXC.cStatus = 'A') THEN 'A'
				   ELSE 'I' END )
    WHERE  (vT.iRec is NULL or vXC.irec is NULL or t10.ExteriorColor is NULL)  
        and tmpBatch.errorFlag = 0

	-- interior color validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid interior color',
		tmpBatch.errorColumn = 'interiorColorCode'
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
		AND vT.nYear = tmpBatch.modelYear
		AND vT.cStatus = 'A'
	INNER JOIN tbIncentive t9 ON vT.cModelCode = t9.cModelCode
						AND vT.nYear = t9.nModelYear
						AND vT.sModelName = t9.cModelName
	LEFT JOIN tbVehicleXCode AS vXC
		ON vXC.cSAP = tmpBatch.interiorColorCode 
		and vXC.kVehicleTrim = vT.iRec
		and vXC.cTable = 'INTCLR'
		and vXC.cStatus = 'A'
    LEFT JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10
		ON t10.ModelCode = vT.cCode
        AND t10.InteriorColor = vXC.cSAP
        AND t10.ModelYear = vT.nYear
		----AND startdate <= dateadd(mm,2,getdate())
		--AND enddate >= getdate() 
		AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
					   --WHEN enddate >= getdate() THEN 'A'
					   WHEN ((enddate >= getdate()) AND vXC.cStatus = 'A') THEN 'A'
					 ELSE 'I' END )                                           
    WHERE  ((vT.iRec is NULL or vXC.irec is NULL or t10.InteriorColor is NULL) and t9.cMasterStatusOverride != 'A') 
        AND tmpBatch.errorFlag = 0

	-- update tmpBatch.interiorColorCode with tbVehicleXCode.cCode because users know tbVehicleXCode.cSAP but hyundai system uses tbVehicleXCode.cCode
	-- ex. cSAP: YAK, ex. cCode: YAK-BEIGE (YAK)
	UPDATE tmpBatch
	SET tmpBatch.interiorColorCode = vXC.cCode
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
		AND vT.nYear = tmpBatch.modelYear
		AND vT.cStatus = 'A'
	LEFT JOIN tbVehicleXCode AS vXC
		ON vXC.cSAP = tmpBatch.interiorColorCode 
		and vXC.kVehicleTrim = vT.iRec
		and vXC.cTable = 'INTCLR'
		and vXC.cStatus = 'A'
    LEFT JOIN [HyundaiApp].[dwh].[ModelPackageColor_InBound] t10
		ON t10.ModelCode = vT.cCode
        AND t10.InteriorColor = vXC.cSAP
        AND t10.ModelYear = vT.nYear
		----AND startdate <= dateadd(mm,2,getdate())
		--AND enddate >= getdate()                                             
    WHERE  (vT.iRec is not NULL or vXC.irec is not NULL or t10.InteriorColor is not NULL)  
        AND tmpBatch.errorFlag = 0
	
	-- Port PDI validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid port PDI',
		tmpBatch.errorColumn = 'portPDI'
	FROM #TempBatchOrderDT tmpBatch
	WHERE tmpBatch.portPDI not in ('Y','N')
		and tmpBatch.errorFlag = 0

	-- request delivery date validation
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid request delivery date',
		tmpBatch.errorColumn = 'requestDeliveryDate'
	FROM #TempBatchOrderDT AS tmpBatch
    WHERE (DAY(tmpBatch.requestDeliveryDate) not in (1,16)
		  OR (tmpBatch.requestDeliveryDate < @startDeliveryDate or tmpBatch.requestDeliveryDate > @endDeliveryDate))
		  AND tmpBatch.errorFlag = 0
		   
	-- PIO validation #1, check if active, inactive, or exists
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid PIO',
		tmpBatch.errorColumn = CASE
									WHEN tmpbatch.pio1 is not NULL and vXCPIO1.iRec is NULL THEN 'pio1'
									WHEN tmpbatch.pio2 is not NULL and vXCPIO2.iRec is NULL THEN 'pio2'
									WHEN tmpbatch.pio3 is not NULL and vXCPIO3.iRec is NULL THEN 'pio3'
									WHEN tmpbatch.pio4 is not NULL and vXCPIO4.iRec is NULL THEN 'pio4'
									WHEN tmpbatch.pio5 is not NULL and vXCPIO5.iRec is NULL THEN 'pio5'
									WHEN tmpbatch.pio6 is not NULL and vXCPIO6.iRec is NULL THEN 'pio6'
									WHEN tmpbatch.pio7 is not NULL and vXCPIO7.iRec is NULL THEN 'pio7'
									WHEN tmpbatch.pio8 is not NULL and vXCPIO8.iRec is NULL THEN 'pio8'
									WHEN tmpbatch.pio9 is not NULL and vXCPIO9.iRec is NULL THEN 'pio9'
									WHEN tmpbatch.pio10 is not NULL and vXCPIO10.iRec is NULL THEN 'pio10'
									ELSE ''
								END
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
		AND vT.nYear = tmpBatch.modelYear
		AND vT.cStatus = 'A'
	LEFT JOIN tbVehicleXCode AS vXCPIO1
		ON vXCPIO1.kVehicleTrim = vT.iRec
		and vXCPIO1.cTable = 'PIO'
		and vXCPIO1.cStatus = 'A'
		AND vXCPIO1.cCode = tmpBatch.pio1
	LEFT JOIN tbVehicleXCode AS vXCPIO2
		ON vXCPIO2.kVehicleTrim = vT.iRec
		and vXCPIO2.cTable = 'PIO'
		and vXCPIO2.cStatus = 'A'
		AND vXCPIO2.cCode = tmpBatch.pio2
	LEFT JOIN tbVehicleXCode AS vXCPIO3
		ON vXCPIO3.kVehicleTrim = vT.iRec
		and vXCPIO3.cTable = 'PIO'
		and vXCPIO3.cStatus = 'A'
		AND vXCPIO3.cCode = tmpBatch.pio3
	LEFT JOIN tbVehicleXCode AS vXCPIO4
		ON vXCPIO4.kVehicleTrim = vT.iRec
		and vXCPIO4.cTable = 'PIO'
		and vXCPIO4.cStatus = 'A'
		AND vXCPIO4.cCode = tmpBatch.pio4
	LEFT JOIN tbVehicleXCode AS vXCPIO5
		ON vXCPIO5.kVehicleTrim = vT.iRec
		and vXCPIO5.cTable = 'PIO'
		and vXCPIO5.cStatus = 'A'
		AND vXCPIO5.cCode = tmpBatch.pio5
	LEFT JOIN tbVehicleXCode AS vXCPIO6
		ON vXCPIO6.kVehicleTrim = vT.iRec
		and vXCPIO6.cTable = 'PIO'
		and vXCPIO6.cStatus = 'A'
		AND vXCPIO6.cCode = tmpBatch.pio6
	LEFT JOIN tbVehicleXCode AS vXCPIO7
		ON vXCPIO7.kVehicleTrim = vT.iRec
		and vXCPIO7.cTable = 'PIO'
		and vXCPIO7.cStatus = 'A'
		AND vXCPIO7.cCode = tmpBatch.pio7
	LEFT JOIN tbVehicleXCode AS vXCPIO8
		ON vXCPIO8.kVehicleTrim = vT.iRec
		and vXCPIO8.cTable = 'PIO'
		and vXCPIO8.cStatus = 'A'
		AND vXCPIO8.cCode = tmpBatch.pio8
	LEFT JOIN tbVehicleXCode AS vXCPIO9
		ON vXCPIO9.kVehicleTrim = vT.iRec
		and vXCPIO9.cTable = 'PIO'
		and vXCPIO9.cStatus = 'A'
		AND vXCPIO9.cCode = tmpBatch.pio9
	LEFT JOIN tbVehicleXCode AS vXCPIO10
		ON vXCPIO10.kVehicleTrim = vT.iRec
		and vXCPIO10.cTable = 'PIO'
		and vXCPIO10.cStatus = 'A'
		AND vXCPIO10.cCode = tmpBatch.pio10
    WHERE (coalesce(tmpBatch.pio1, 
					tmpBatch.pio2, 
					tmpBatch.pio3,  
					tmpBatch.pio4,  
					tmpBatch.pio5,  
					tmpBatch.pio6,  
					tmpBatch.pio7, 
					tmpBatch.pio8, 
					tmpBatch.pio9,
					tmpBatch.pio10) is not NULL
			and (vT.iRec is NULL
				or (tmpbatch.pio1 is not NULL and vXCPIO1.iRec is NULL)
				or (tmpbatch.pio2 is not NULL and vXCPIO2.iRec is NULL)
				or (tmpbatch.pio3 is not NULL and vXCPIO3.iRec is NULL)
				or (tmpbatch.pio4 is not NULL and vXCPIO4.iRec is NULL)
				or (tmpbatch.pio5 is not NULL and vXCPIO5.iRec is NULL)
				or (tmpbatch.pio6 is not NULL and vXCPIO6.iRec is NULL)
				or (tmpbatch.pio7 is not NULL and vXCPIO7.iRec is NULL)
				or (tmpbatch.pio8 is not NULL and vXCPIO8.iRec is NULL)
				or (tmpbatch.pio9 is not NULL and vXCPIO9.iRec is NULL)
				or (tmpbatch.pio10 is not NULL and vXCPIO10.iRec is NULL))
			)
        AND tmpBatch.errorFlag = 0

	-- PIO validation #2, check if part of ExclusiveRules pio
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Invalid Exclusive PIO',
		tmpBatch.errorColumn = (STUFF((
									SELECT ', ' + colName
									FROM (
									SELECT top 2 colName
									   FROM #TempBatchOrderDT tmpBatch1
									   CROSS apply(VALUES('pio1',tmpBatch1.pio1),
														 ('pio2',tmpBatch1.pio2),
														 ('pio3',tmpBatch1.pio3),
														 ('pio4',tmpBatch1.pio4),
														 ('pio5',tmpBatch1.pio5),
														 ('pio6',tmpBatch1.pio6),
														 ('pio7',tmpBatch1.pio7),
														 ('pio8',tmpBatch1.pio8),
														 ('pio9',tmpBatch1.pio9),
														 ('pio10',tmpBatch1.pio10)) ca (colName, data)
									   WHERE (data = pioE.[Accessory Code] or data = pioE.[Exclusive Accessory Code])
									   and tmpBatch1.iRec = tmpBatch.iRec 
									   ) as pioColumns
									FOR XML PATH('')
									), 1, 2, ''))
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN tbVehicleTrim AS vT
		ON vT.cCode = tmpBatch.modelCode
	AND vT.nYear = tmpBatch.modelYear
		AND vT.cStatus = 'A'
	INNER JOIN (SELECT iRec,
					   CONCAT(tmpB.pio1,',',tmpB.pio2,',',tmpB.pio3,',',tmpB.pio4,',',tmpB.pio5,',',
							  tmpB.pio6,',',tmpB.pio7,',',tmpB.pio8,',',tmpB.pio9,',',tmpB.pio10) as pIOS
			  FROM #TempBatchOrderDT tmpB
			  WHERE tmpB.errorFlag = 0) as allPIO
		ON allPIO.iRec = tmpBatch.iRec
	INNER JOIN dwh.PIO_ExclusiveRules pioE
		ON pioE.MODEL_GROUP_CD = vt.cModelGroupCode
		AND pioE.[Model Year] = vT.nYear
		AND CHARINDEX(pioE.[Accessory Code],allPIO.pIOS) > 0
		AND CHARINDEX(pioE.[Exclusive Accessory Code],allPIO.pIOS) > 0
    WHERE tmpBatch.errorFlag = 0

	-- PIO validation #3, check if duplicate pio
	UPDATE tmpBatch
	SET tmpBatch.errorFlag = 1,
		tmpBatch.errorMessage = 'Duplicate PIO',
		tmpBatch.errorColumn = (SELECT top 1 colName
							   FROM #TempBatchOrderDT as tmpBatch1
							   CROSS apply(VALUES('pio1',tmpBatch1.pio1),
												 ('pio2',tmpBatch1.pio2),
												 ('pio3',tmpBatch1.pio3),
												 ('pio4',tmpBatch1.pio4),
												 ('pio5',tmpBatch1.pio5),
												 ('pio6',tmpBatch1.pio6),
												 ('pio7',tmpBatch1.pio7),
												 ('pio8',tmpBatch1.pio8),
												 ('pio9',tmpBatch1.pio9),
												 ('pio10',tmpBatch1.pio10)) ca (colName, data)
							   WHERE data = uTmpBatch.pios
							   and uTmpBatch.iRec = tmpBatch1.iRec)
	FROM #TempBatchOrderDT AS tmpBatch
	INNER JOIN (SELECT uPio.irec, uPio.pios, count(*) as pioCount
				FROM #TempBatchOrderDT s
				UNPIVOT
				(
					pios
					for #TempBatchOrderDT in (pio1,pio2,pio3,pio4,pio5,pio6,pio7,pio8,pio9,pio10)
				) uPio
				group by uPio.irec, uPIO.pios
				HAVING COUNT(*) > 1) as uTmpBatch
	ON uTmpBatch.iRec = tmpBatch.iRec
	WHERE tmpBatch.errorFlag = 0
	
	-- update tbOrderDTBatch with data validation status
	UPDATE tBatch 
	SET tBatch.errorFlag = tmpBatch.errorFlag,
		tBatch.errorMessage = tmpBatch.errorMessage,
		tBatch.errorColumn = tmpBatch.errorColumn
	FROM tbOrderDTBatch AS tBatch
	INNER JOIN #TempBatchOrderDT AS tmpBatch
		   ON tmpBatch.iRec = tBatch.iRec

	-- start order creation
	insert into tbOrder (
					kAllocateCompany, cAllocateDealer,
					kFMCCompany, cFMCCode, cFMCDealer, sFMCName, sFMCStreet, sFMCStreet2, sFMCCity, cFMCState, sFMCZip, sFMCPhone, sFMCFax, sFMCContact, sFMCEmail,
					kENUCompany, cENUCode, cENUDealer, sENUName, sENUStreet, sENUStreet2, sENUCity, cENUState, cENUZip, sENUPhone, sENUFax, sENUContact, sENUEmail,
					sPONo, cSalesType, cStatus, kOrderUser, dtOrder,kCreate, dtCreate, kModify, dtModify, batchOrderId)
				OUTPUT INSERTED.iRec INTO @insertedBatchOrders(orderIds) -- output into temp table tborder ids
				SELECT
				    t6.iRec, t6.cDealer,
					t1.iRec, t1.cSAP, t1.cDealer, t1.sCompName, t1.sCompStreet, t1.sCompStreet2, t1.sCompCity, t1.cCompState, t1.sCompZip, 
					coalesce(t1.sPhone,'')+coalesce(t1.sPhoneExt,''), t1.sFax, RTRIM(coalesce(t1.sNameFirst, '')+' '+coalesce(t1.sNameLast,'')), t3.sLogin,
					t2.iRec, t2.cSAP, t2.cDealer, t2.sCompName, t2.sCompStreet, t2.sCompStreet2, t2.sCompCity, t2.cCompState, t2.sCompZip, 
					coalesce(t2.sPhone,'')+coalesce(t2.sPhoneExt,''), t2.sFax, RTRIM(coalesce(t2.sNameFirst, '')+' '+coalesce(t2.sNameLast,'')), t4.sENUEmail,
					tDTB.poNo, tDTB.salesType, 'CM', @uid, getdate(), @uid, getdate(), @uid, getdate(), @idBatchOrder
				FROM #TempBatchOrderDT tDTB -- I need to group by PO and FMC orders because each one might have multiple dropships
				inner join tbCompany t1
					on tDTB.fmcUser = t1.csap
				cross join tbCompany t2
				left join tbUser t3 on t3.iRec = @uid
				left join (
					SELECT x1.kCompany, max(x2.sLogin) as sENUEmail
					FROM tbUserCompany x1
					inner join tbUser x2 on x1.kUser=x2.iRec and x2.sLogin is not null
					group by x1.kCompany) t4 on t2.iRec = t4.kCompany
				left join (
					SELECT x1.kCompany, min(case x1.nDefault when 0 then x2.kCompany end) as kAllocate, min(x2.kCompany) as kAllocateAlt
					FROM tbUserCompany x1 
					inner join tbUserCompany x2 on x1.kUser=x2.kUser and x2.nDefault=1
					group by x1.kCompany
				) t5 on t1.iRec=t5.kCompany
				left join tbCompany t6 on t6.iRec=coalesce(t5.kAllocate, t5.kAllocateAlt, 0)
				WHERE t1.cStatus='A' and t2.cStatus='A' and t1.cSAP in (tdTB.fmcUser) and t2.cSAP in (tDTB.enuUser)
					and tDTB.errorFlag = 0
	
	CREATE TABLE #dropshipIds(
		iRec int,
		orderIDs int
	)

	insert into #dropshipIds(iRec, orderIds)
	SELECT tempDS.iRec, tempDS.orderIds
	FROM (
			SELECT tbDS.iRec, tbO.iRec as orderIDs
			FROM (select max(tbDS1.irec) as irec, tbDS1.cCode from tbDropship tbDS1
				  group by tbDS1.cCode, tbDS1.cStatus
				  having cStatus = 'A') tbDS
			inner join #TempBatchOrderDT tmpBO
				on tbDS.cCode = tmpBO.dropshipCode
				and tmpBO.errorFlag = 0
			inner join tbOrder tbO
				on tbO.sPONo = tmpBO.poNo
			inner join @insertedBatchOrders insBO
				on insBO.orderIds = tbO.iRec
			group by tbDS.iRec, tbO.iRec
	) as tempDS
	
	insert into tbOrderDS
		(kOrder, kDropship, sName, sStreet, sStreet2, 
		sCity, cState, sZip, sPhone, sContact, sEmail)
	OUTPUT INSERTED.iRec INTO @insertedDSOrders(dsOrderIds)
	SELECT 
		tmpDS.orderIDs, t1.iRec, t1.sCompanyName, t1.sCompStreet, t1.sCompStreet2,
		t1.sCompCity, t1.cCompState, t1.sCompZip, t1.sPhone, t1.sContactName, null
	FROM tbDropship t1
	inner join #dropshipIds as tmpDS
		on tmpDS.iRec = t1.iRec

	insert into tbOrderDT (
		kOrderDS, kVehicleTrim, cAccy, cColorExt, cColorInt, cPortPDI, nQty, dtReqDelivery)
	SELECT tbODS.iRec, tbVT.iRec, tmpBO.packageCode, tmpBO.exteriorColorCode,
			tmpBO.interiorColorCode, tmpBO.portPDI, tmpBO.quantity, tmpBO.requestDeliveryDate
	FROM @insertedBatchOrders insBO
		inner join tbOrderDS tbODS
			on tbODS.kOrder = insBO.orderIds
		inner join tbOrder tbO
			on tbO.iRec = tbODS.kOrder
		inner join #TempBatchOrderDT tmpBO
			on tbODS.kDropship in (SELECT tbDS.iRec 
									FROM tbDropship as tbDS 
									WHERE tbDS.cCode = tmpBO.dropshipCode)
			and tmpBO.errorFlag = 0
			and tmpBO.poNo = tbO.sPONo
		inner join tbVehicleTrim tbVT
			on tbVT.cCode = tmpBO.modelCode and tbVT.nYear = tmpBO.modelYear

	insert into tbOrderPIO(kOrderDT, cPIO)
	SELECT dt.iRec, v.pio
	FROM @insertedBatchOrders insBO
	inner join tbOrderDS ds
		on ds.kOrder = insBO.orderIds
	inner join tbOrder tbO
		on tbO.iRec = ds.kOrder
	inner join #TempBatchOrderDT bo
		ON bo.poNo = tbo.sPONo
		and bo.errorFlag = 0
	inner join tbOrderDT dt
		on dt.kOrderDS = ds.iRec and dt.kVehicleTrim = (SELECT top 1 irec 
														FROM tbVehicleTrim vt
														WHERE vt.cCode = bo.modelCode
														and vt.nYear = bo.modelYear)
	cross apply
	(values (bo.pio1), (bo.pio2), (bo.pio3), (bo.pio4), (bo.pio5), (bo.pio6), (bo.pio7), (bo.pio8), (bo.pio9), (bo.pio10)) v(pio)
	WHERE v.pio != 'NULL' and v.pio is not null and bo.errorFlag = 0
	
	if @@ERROR=0
		return @returnValue;
	else
		return 0;

END


GO
/****** Object:  StoredProcedure [dbo].[spSetOrderDropship]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Set Order Dropship Information 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderDropship]
	@orderId int,
	@dropshipId int
AS
BEGIN
	SET NOCOUNT ON;
	insert into tbOrderDS
			(kOrder, kDropship, sName, sStreet, sStreet2, 
			sCity, cState, sZip, sPhone, sContact, sEmail)
		select 
			@orderId, t1.iRec, t1.sCompanyName, t1.sCompStreet, t1.sCompStreet2,
			t1.sCompCity, t1.cCompState, t1.sCompZip, t1.sPhone, t1.sContactName, null
		from tbDropship t1
		where t1.iRec=@dropshipId;
	if @@ERROR=0
		return cast(@@IDENTITY as int);
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetOrderHeader]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Set Order Header Information 
-- Modified: 10/17/2019 - Erik, Removed enu from unique PO check.  unique PO = PO + fmc.
--Modified:27/07/2021 -Vishwajyoti walode Modified @returnValue = -2 to @returnValue = 0 to allow all users edit the order
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderHeader]
	@uid int,
	@id int,
	@poNo varchar(30),
	@salesType varchar(1),
	@status varchar(2)=null,
	@orderUserId int,
	@fmcId int,
	@enuId int
AS
BEGIN
	declare @returnValue int = 0;
	DECLARE @userGroup varchar(5) = (select t3.cGroupCode from tbUser t1 inner join tbUserLink t2 on t1.iRec=t2.kUser and t1.cType='U'  inner join tbUser t3 on t2.kGroup=t3.iRec and t3.cType='G' where t1.iRec=@uid);
	if @id=0
	begin
		DECLARE @cnt int;
		select @cnt = count(iRec) from tbOrder where kFMCCompany=@fmcId and sPONo=@poNo
		if @cnt=0
		begin
			if @status is null AND UPPER(@userGroup) <> 'ADM'
				set @status = 'OP';
			insert into tbOrder (
					kAllocateCompany, cAllocateDealer,
					kFMCCompany, cFMCCode, cFMCDealer, sFMCName, sFMCStreet, sFMCStreet2, sFMCCity, cFMCState, sFMCZip, sFMCPhone, sFMCFax, sFMCContact, sFMCEmail,
					kENUCompany, cENUCode, cENUDealer, sENUName, sENUStreet, sENUStreet2, sENUCity, cENUState, cENUZip, sENUPhone, sENUFax, sENUContact, sENUEmail,
					sPONo, cSalesType, cStatus, kOrderUser, kCreate, dtCreate, kModify, dtModify) 
				select
				    t6.iRec, t6.cDealer,
					t1.iRec, t1.cSAP, t1.cDealer, t1.sCompName, t1.sCompStreet, t1.sCompStreet2, t1.sCompCity, t1.cCompState, t1.sCompZip, 
					coalesce(t1.sPhone,'')+coalesce(t1.sPhoneExt,''), t1.sFax, RTRIM(coalesce(t1.sNameFirst, '')+' '+coalesce(t1.sNameLast,'')), t3.sLogin,
					t2.iRec, t2.cSAP, t2.cDealer, t2.sCompName, t2.sCompStreet, t2.sCompStreet2, t2.sCompCity, t2.cCompState, t2.sCompZip, 
					coalesce(t2.sPhone,'')+coalesce(t2.sPhoneExt,''), t2.sFax, RTRIM(coalesce(t2.sNameFirst, '')+' '+coalesce(t2.sNameLast,'')), t4.sENUEmail,
					@poNo, @salesType, @status, @orderUserId, @uid, getdate(), @uid, getdate()
				from tbCompany t1
				cross join tbCompany t2
				left join tbUser t3 on t3.iRec = @uid
				left join (
					select x1.kCompany, max(x2.sLogin) as sENUEmail
					from tbUserCompany x1
					inner join tbUser x2 on x1.kUser=x2.iRec and x2.sLogin is not null
					group by x1.kCompany) t4 on t2.iRec = t4.kCompany
				left join (
					select x1.kCompany, min(case x1.nDefault when 0 then x2.kCompany end) as kAllocate, min(x2.kCompany) as kAllocateAlt
					from tbUserCompany x1 
					inner join tbUserCompany x2 on x1.kUser=x2.kUser and x2.nDefault=1
					group by x1.kCompany
				) t5 on t1.iRec=t5.kCompany
				left join tbCompany t6 on t6.iRec=coalesce(t5.kAllocate, t5.kAllocateAlt, 0)
				where t1.cStatus='A' and t2.cStatus='A' and t1.iRec=@fmcId and t2.iRec=@enuId;
			if @@ERROR=0
				set @returnValue = cast(@@IDENTITY as int);
		end
		else
			set @returnValue = -1;  -- duplcate po # (by fmc & enu)
	end
	else
	begin
		DECLARE @currOrderUser int;
		DECLARE @currOrderStatus varchar(2);
        select @currOrderUser=kOrderUser, @currOrderStatus=cStatus
		--select @currOrderStatus=cStatus
            from tbOrder 
            where iRec=@id;
		if @@ROWCOUNT=0
			set @returnValue = -4;  --  no record
		else
		begin
			IF UPPER(@userGroup) = 'ADM'
			BEGIN
				if @currOrderStatus in ('IP', 'PP')
				begin
					insert into tbOrderItemDeleted (kOrder, cStatus, cFMCCode, sFMCName, cFMCDealer, cENUCode, sENUName, sPONo, cSalesType, cDropship, nModelYear, sHmaOrderNo, 
						sVehicle, cVehiceTrim, cPortPDI, cPackage, cExterior, cInterior, sPIOs, nQty, dtReqDeliveryFrom, dtReqDeliveryTo)
					select t1.iRec, 'A', t1.cFMCCode, t1.sFMCName, t1.cFMCDealer, t1.cENUCode, t1.sENUName, t1.sPONo, t1.cSalesType, t4.cCode, t5.nYear, t3.sHmaOrderNo,
						t5.sName, substring(t19.cCode, 1, 8), t3.cPortPDI, substring(t3.cAccy,1,2), t3.cColorExt, t8.cSAP, t9.sPIOList, t3.nQty, 
						convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then dateadd(d, -DAY(t3.dtReqDelivery)+1, t3.dtReqDelivery)
							else DATEADD(d, 15, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0)) end), 112), 
						convert(varchar, (case when DAY(t3.dtReqDelivery)<15 then DATEADD(d, 14, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery),0))
							else DATEADD(d, -1, DATEADD(m, DATEDIFF(m,0,t3.dtReqDelivery)+1,0)) end), 112)
					from tbOrder t1
					inner join tbOrderDS t2 on t1.iRec=t2.kOrder
					inner join tbOrderDT t3 on t2.iRec=t3.kOrderDS
					left join (
						Select distinct kOrderDT, substring((
							select (',' + cPIO) AS [text()]
							From tbOrderPIO s1
							where s1.kOrderDT = m1.kOrderDT
							For XML PATH ('')), 2, 8000) as sPIOList
						from tbOrderPIO m1) t9 on t3.iRec=t9.kOrderDT
					left join tbDropship t4 on t2.kDropship=t4.iRec
					left join tbVehicleTrim t5 on t3.kVehicleTrim=t5.iRec
					left join (
						select x1.kVehicleTrim, x2.cCode as cExtClr, x3.cCode as cIntClr, x4.cCode as cPackage, 
							max(case xe.cCode when x1.cCode then x1.iRec else null end) as kVehicleTrimEquivalentEqual, max(x1.iRec) as kVehicleTrimEquivalent
						from tbVehicleTrimEquivalent x1
						inner join tbVehicleTrim xe on x1.kVehicleTrim=xe.iRec
						inner join tbVehicleXCode x2 on x2.cTable='EXTCLR' and x2.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
						inner join tbVehicleXCode x3 on x3.cTable='INTCLR' and x3.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x3.kVehicleTrimEquivalent and x2.iRec=x3.kVehicleXCode
						inner join tbVehicleXCode x4 on x4.cTable='PAK' and x4.kVehicleTrim=x1.kVehicleTrim and x1.iRec=x2.kVehicleTrimEquivalent
						group by x1.kVehicleTrim, x2.cCode, x3.cCode, x4.cCode) t6 on t6.kVehicleTrim=t3.kVehicleTrim and t3.cColorExt=t6.cExtClr and t3.cColorInt=t6.cIntClr and t3.cAccy=t6.cPackage
					left join tbVehicleXCode t7 on t7.cTable='EXTCLR' and t7.kVehicleTrim=t3.kVehicleTrim and t7.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorExt=t7.cCode
					left join tbVehicleXCode t8 on t8.cTable='INTCLR' and t8.kVehicleTrim=t3.kVehicleTrim and t8.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cColorInt=t8.cCode and t7.iRec=t8.kVehicleXCode
					left join tbVehicleXCode t14 on t14.cTable='PAK' and t14.kVehicleTrim=t3.kVehicleTrim and t14.kVehicleTrimEquivalent=coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent) and t3.cAccy=t14.cCode
					left join tbVehicleTrimEquivalent t19 on coalesce(t6.kVehicleTrimEquivalentEqual, t6.kVehicleTrimEquivalent)=t19.iRec
					where t1.iRec=@id and len(t3.sHmaOrderNo)>0
				end

				if @@ERROR=0
				begin
					if UPPER(@currOrderStatus) not in ('OP', 'XX', 'CN', 'AL')
						update tbOrder set
							kAllocateCompany=t6.iRec, 
							cAllocateDealer	=t6.cDealer,
							kFMCCompany	=t1.iRec,
							cFMCCode	=t1.cSAP, 
							cFMCDealer	=t1.cDealer,  
							sFMCName    =t1.sCompName, 
							sFMCStreet  =t1.sCompStreet, 
							sFMCStreet2 =t1.sCompStreet2, 
							sFMCCity    =t1.sCompCity, 
							cFMCState   =t1.cCompState, 
							sFMCZip     =t1.sCompZip, 
							sFMCPhone   =coalesce(t1.sPhone, '')+coalesce(t1.sPhoneExt, ''), 
							sFMCFax     =t1.sFax, 
							sFMCContact =RTRIM(coalesce(t1.sNameFirst, '')+' '+coalesce(t1.sNameLast, '')), 
							kENUCompany =t2.iRec, 
							cENUCode	=t2.cSAP, 
							cENUDealer	=t2.cDealer,  
							sENUName    =t2.sCompName, 
							sENUStreet  =t2.sCompStreet, 
							sENUStreet2 =t2.sCompStreet2, 
							sENUCity    =t2.sCompCity, 
							cENUState   =t2.cCompState, 
							cENUZip     =t2.sCompZip, 
							sENUPhone   =coalesce(t2.sPhone, '')+coalesce(t2.sPhoneExt, ''), 
							sENUFax     =t2.sFax, 
							sENUContact =RTRIM(coalesce(t2.sNameFirst, '')+' '+coalesce(t2.sNameLast, '')), 
							sENUEmail   =t4.sENUEmail,
							sPONo       =@poNo, 
							cSalesType  =@salesType, 
							kModify     =@uid, 
							dtModify    =getdate()
						from tbOrder t0
						cross join tbCompany t1
						cross join tbCompany t2
						left join tbUser t3 on t3.iRec = @uid
						left join (
							select x1.kCompany, max(x2.sLogin) as sENUEmail
							from tbUserCompany x1
							inner join tbUser x2 on x1.kUser=x2.iRec and x2.sLogin is not null
							group by x1.kCompany) t4 on t2.iRec = t4.kCompany
						left join (
							select x1.kCompany, min(case x1.nDefault when 0 then x2.kCompany end) as kAllocate, min(x2.kCompany) as kAllocateAlt
							from tbUserCompany x1 
							inner join tbUserCompany x2 on x1.kUser=x2.kUser and x2.nDefault=1
							group by x1.kCompany
						) t5 on t1.iRec=t5.kCompany
						left join tbCompany t6 on t6.iRec=coalesce(t5.kAllocate, t5.kAllocateAlt, 0)
						where t1.cStatus<>'XX' and t0.iRec=@id and t1.cStatus<>'X' and t2.cStatus<>'X' and t1.iRec=@fmcId and t2.iRec=@enuId;
				end
			end
			else
			begin
				if @uid<>@currOrderUser
					set @returnValue = 0;  --  allow all ordered user
				if @currOrderStatus<>'OP'
					set @returnValue = -3;  --  edit only 'open' status
				if @returnValue=0
					update tbOrder set
							kAllocateCompany=t6.iRec, 
							cAllocateDealer	=t6.cDealer,
							kFMCCompany	=t1.iRec,
							cFMCCode	=t1.cSAP, 
							cFMCDealer	=t1.cDealer,  
							sFMCName    =t1.sCompName, 
							sFMCStreet  =t1.sCompStreet, 
							sFMCStreet2 =t1.sCompStreet2, 
							sFMCCity    =t1.sCompCity, 
							cFMCState   =t1.cCompState, 
							sFMCZip     =t1.sCompZip, 
							sFMCPhone   =coalesce(t1.sPhone, '')+coalesce(t1.sPhoneExt, ''), 
							sFMCFax     =t1.sFax, 
							sFMCContact =RTRIM(coalesce(t1.sNameFirst, '')+' '+coalesce(t1.sNameLast, '')), 
							sFMCEmail   =t3.sLogin,
							kENUCompany =t2.iRec, 
							cENUCode	=t2.cSAP, 
							cENUDealer	=t2.cDealer,  
							sENUName    =t2.sCompName, 
							sENUStreet  =t2.sCompStreet, 
							sENUStreet2 =t2.sCompStreet2, 
							sENUCity    =t2.sCompCity, 
							cENUState   =t2.cCompState, 
							cENUZip     =t2.sCompZip, 
							sENUPhone   =coalesce(t2.sPhone, '')+coalesce(t2.sPhoneExt, ''), 
							sENUFax     =t2.sFax, 
							sENUContact =RTRIM(coalesce(t2.sNameFirst, '')+' '+coalesce(t2.sNameLast, '')), 
							sENUEmail   =t4.sENUEmail,
							sPONo       =@poNo, 
							cSalesType  =@salesType, 
							kModify     =@uid, 
							dtModify    =getdate()
						from tbOrder t0
						cross join tbCompany t1
						cross join tbCompany t2
						left join tbUser t3 on t3.iRec = @uid
						left join (
							select x1.kCompany, max(x2.sLogin) as sENUEmail
							from tbUserCompany x1
							inner join tbUser x2 on x1.kUser=x2.iRec and x2.sLogin is not null
							group by x1.kCompany) t4 on t2.iRec = t4.kCompany
						left join (
							select x1.kCompany, min(case x1.nDefault when 0 then x2.kCompany end) as kAllocate, min(x2.kCompany) as kAllocateAlt
							from tbUserCompany x1 
							inner join tbUserCompany x2 on x1.kUser=x2.kUser and x2.nDefault=1
							group by x1.kCompany
						) t5 on t1.iRec=t5.kCompany
						left join tbCompany t6 on t6.iRec=coalesce(t5.kAllocate, t5.kAllocateAlt, 0)
						where t1.cStatus<>'XX' and t0.iRec=@id and t1.cStatus<>'X' and t2.cStatus<>'X' and t1.iRec=@fmcId and t2.iRec=@enuId;			
			end

			if @returnValue=0
			begin
				if @@ERROR=0
				begin
					delete from tbOrderDT where kOrderDS in (select iRec from tbOrderDS where kOrder = @id);
					delete from tbOrderDS where kOrder = @id;
				end
				if @@ERROR=0
					set @returnValue = @id;
			END
		end
	end
	return @returnValue;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetOrderHmaNo]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 1/17/2014
-- Description:	Set Order HMA No
-- =========================================================
create PROCEDURE [dbo].[spSetOrderHmaNo]
	@id int,
	@sHmaOrderNo varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int=0;
	update tbOrderDT set sHmaOrderNo=@sHmaOrderNo where iRec=@id;
	if @@error=0
		set @returnValue = 1;
	else
		set @returnValue = 0;

	return @returnValue;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetOrderItem]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/27/2012
-- Description:	Set Order Item Information 
-- Modified:
-- 03/15/2021 -- Kumaraswamy--  Updating sHmaOrderNo column in tbOrderDT.
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderItem]
	@dropshipId int,
	@year int,
	@trimCode varchar(20),
	@package varchar(2),
	@colorExt varchar(50),
	@colorInt varchar(50),
	@portPDI varchar(1),
	@qty int,
	@reqDeliveryDate datetime
AS
BEGIN
	SET NOCOUNT ON;
	declare @tbOrderDTId int = 0;
	declare @tbOrderItemDeleted int = 0;
	declare @sHmaOrderNo varchar(20) = NULL;

    insert into tbOrderDT (
			kOrderDS, kVehicleTrim, cAccy, cColorExt, cColorInt, cPortPDI, nQty, dtReqDelivery)
		select 
			@dropshipId, iRec, @package, @colorExt, @colorInt, @portPDI, @qty, @reqDeliveryDate
		from tbVehicleTrim 
		where nYear=@year and cCode=@trimCode;

	    set @tbOrderDTId = cast(@@IDENTITY as int);
		IF(@tbOrderDTId <> 0)
		BEGIN
		   SELECT TOP 1 @tbOrderItemDeleted = OID.iRec, @sHmaOrderNo = OID.sHmaOrderNo FROM tbOrderDT DT
           INNER JOIN tbOrderDS DS ON DS.iRec = DT.kOrderDS
           INNER JOIN tbOrderItemDeleted OID ON OID.kOrder = DS.kOrder
           WHERE OID.cStatus = 'A' AND DT.iRec = @tbOrderDTId Order by OID.iRec;
		   IF(@tbOrderItemDeleted IS NOT NULL AND @sHmaOrderNo IS NOT NULL)
           BEGIN
                UPDATE tbOrderDT SET sHmaOrderNo = @sHmaOrderNo WHERE iRec = @tbOrderDTId;
                DELETE FROM tbOrderItemDeleted WHERE iRec = @tbOrderItemDeleted;
           END
	    END

	if @@ERROR=0
		return @tbOrderDTId;
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetOrderPIO]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 2/5/2013
-- Description:	Set Order PIO Information 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrderPIO]
	@itemId int,
	@pio varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
    insert into tbOrderPIO (
			kOrderDT, cPIO)
		select 
			@itemId, @pio;
	if @@ERROR=0
		return cast(@@IDENTITY as int);
	else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetOrdersItemDeleted]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Modify date: 1/17/2014
-- Description:	Get Orders for Export 
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrdersItemDeleted]
	@uid int,
	@sLinkList varchar(4000)
AS
BEGIN
	update tbOrderItemDeleted 
		set cStatus='X'
	where cStatus='A' and iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
	return @@ROWCOUNT;
END



GO
/****** Object:  StoredProcedure [dbo].[spSetOrdersStatusForExport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 1/17/2014
-- Description:	Set Orders for Export 
-- Modified: By Nick Nguyen 8/5/2014 (optimize)
-- =========================================================
CREATE PROCEDURE [dbo].[spSetOrdersStatusForExport]
	@iUpdateUser int,
	@sLinkList varchar(4000),
	@checkSAP int=0
AS
BEGIN
	SET NOCOUNT ON;
	declare @cnt_list int = 0;
	declare @cnt_data int = 0;
	declare @returnValue int=0;
	DECLARE @TempOrderList table ( orderID int)
	
	------------------------------------------------------------------
	INSERT INTO @TempOrderList(orderID)
	select cast(s as int) from dbo.SplitString(@sLinkList, ',');
	------------------------------------------------------------------
	
	select @cnt_list = count(*) from @TempOrderList;
	select @cnt_data = count(*) from tbOrder 
		where cStatus in ('CM', 'IP', 'PP') 
		and iRec in (select orderID from  @TempOrderList);
	if @cnt_list=@cnt_data
	begin 
		if @checkSAP=1
			update tbOrder set
			------------------------------------
			--According to Eric, we need to create a status for fail sending order. We need to discuss with SAP team.
				cStatus=(case when nCnt=nCntHMA then 'IP' else 'PP' end) -- 1st IP=In Process, 2nd IP=In Process (Partial), 
			from tbOrder t1
			inner join (
				select x1.kOrder, 
					  count(x2.iRec) as nCnt, 
				      count(case when coalesce(x2.sHMAOrderNo, '')<>'' then x2.iRec end) as nCntHMA
				from tbOrderDS x1
				inner join tbOrderDT x2 on x1.iRec=x2.kOrderDS
				where kOrder in (select orderID from  @TempOrderList)
				group by x1.kOrder
				)t2 on t1.iRec=t2.kOrder
				
			where t1.cStatus in ('CM', 'IP', 'PP') and t2.nCnt>0-- and t1.iRec in (select cast(s as int) from dbo.SplitString(@sLinkList, ','));
		else
			update tbOrder set cStatus='IP' where cStatus in ('CM', 'IP', 'PP') and iRec in (select orderID from  @TempOrderList);

		if @@error=0
			set @returnValue = 1;
		else
			set @returnValue = 0;
	end
	else
		set @returnValue = 0;

	return @returnValue;
END




GO
/****** Object:  StoredProcedure [dbo].[spSetOrderStatus1ForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Set Order Status Type 1 for Import
-- Modified:	Daniel Lee, 9/6/2017, Add Internal VIN
-- Modified: Erik Mildner, 4/26/2018, Use non manufacturer exterior and interior colors
-- =================================================================
CREATE PROCEDURE [dbo].[spSetOrderStatus1ForImport]
	@importHistoryId int
	
AS
BEGIN
	SET NOCOUNT ON;

	----------------------------------------------------------------------------
	TRUNCATE TABLE tbOrderStatus1ForImport
	----------------------------------------------------------------------------
	
	INSERT INTO tbOrderStatus1ForImport
           (kImportHistory,
           cFMCCode,
           cENUCode,
           sVIN,
           nVehYear,
           sVehDesc
		   ,sVehCode,
		   cAccy,
		   sTrimDesc,
		   cExtClr,
		   cIntClr,
		   cStatus,
		   sStatusDesc
           ,cPrimaryStatus,cPrimaryStatusDesc,cSecondaryStatus,cSecondaryStatusDesc,cRegion,sRegionDesc
           ,cCustomer,cDropship,cPort,sPortDesc,sEngine,sKeynoDoor,sKeynoIngition,sKeynoTrunk
		   ,cEsnRadio,dtProduction,dtBodyLine,dtPaintLine
           ,dtTrimLine,dtEstimateBody,dtCursoryInspection,dtUnderbodyCoating,dtAccptanceInspection
           ,dtFinalInspection,dtManfestReceive,dtUrgency,dtShipping,dtETA, sInternalVIN)
       SELECT  distinct @importHistoryId,
				FLEET_RENTAL_ACCOUNT_CD AS cFMCCode,
				[END_USER_USERID] AScENUCode ,
				V.VIN as sVin,
				MODEL_YEAR nVehYear,
				VT.sModelName AS sVehDesc,
			    MODELCODE AS sVehCode,
				ACCESSORY_GROUP_CD as cAccy,
				CASE WHEN CHARINDEX('(',sName)>0 THEN substring([sName],1,CHARINDEX('(',sName)-1) ELSE sName END sTrimDesc,
				EXTERIOR_COLOR_CD as cExtClr,
				INTERIOR_COLOR_CD AS cIntClr,
				INVENTORY_STATUS_CD as cStatus,
				(SELECT distinct DESCRIPTION FROM DWH.CTRL_EBIZ_INVENTORY_STATUS WHERE STATUS_CD=INVENTORY_STATUS_CD) AS sStatusDesc,
				NULL AS  cPrimaryStatus,
				NULL AS  cPrimaryStatusDesc,
				NULL AS  cSecondaryStatus,
				NULL AS  cSecondaryStatusDesc,
				 NULL AS cRegion,
				NULL AS  sRegionDesc
			   ,ALLOCATION_DEALER_CD AS cCustomer,				
			    SHIP_TO_DEALER_CD AS cDropship,
				CURRENT_PORT_CD as cPort,
				NULL AS sPortDesc,
				NULL AS sEngine,
				NULL AS sKeynoDoor,
				NULL AS sKeynoIngition,
				NULL AS sKeynoTrunk,
				NULL AS cEsnRadio,
				NULL AS dtProduction,
				BODY_LINE_INPUT_DATE AS dtBodyLine,
				BODY_LINE_INPUT_DATE AS paintLineDate,
				BODY_LINE_INPUT_DATE AS trimLineDate,
				BODY_LINE_INPUT_DATE AS estimateBodyDate,
				NULL AS dtCursoryInspection,
				NULL AS  dtUnderbodyCoating,
				NULL AS dtAccptanceInspection,
				NULL AS dtFinalInspection,
				NULL AS dtManfestReceive,
				NULL AS dtUrgency,
				VESSEL_MANIFEST_DEPARTURE_DATE AS dtShipping,
				MANIFEST_ETA_ARRIVAL_DATE AS dtETA,
				V.INTERNAL_VIN AS sInternalVIN

				FROM DWH.CTRL_EBIZ_CS_FLEET_VEHICLE V
				INNER JOIN tbVehicleTrim VT
			--	ON MODELCODE =VT.cCode
				ON charindex('('+MODELCODE+')',VT.sName)>0
				AND V.MODEL_YEAR=VT.nYear
		        INNER JOIN dbo.tbTemp_VIN_FEED_GOOD  AS FilterTB
				ON V.INTERNAL_VIN=FilterTB.INTERNAL_VIN
				AND V.REC_UPDATE_DATE=FilterTB.REC_UPDATE_DATE
				
				
					
		      
           

	if @@ERROR = 0
		return cast(@@IDENTITY as int);
	else
		return 0;
END

GO
/****** Object:  StoredProcedure [dbo].[spSetOrderStatus2ForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Set Order Status Type 2 for Import
-- Modified: Daniel Lee, 9/6/2017, Add Internal VINs
-- Modified: Erik Mildner, 4/26/2018, Use non manufacturer exterior and interior colors
-- =================================================================
CREATE PROCEDURE [dbo].[spSetOrderStatus2ForImport]
    @kImportHistory INT
  
AS
BEGIN
	SET NOCOUNT ON;
	TRUNCATE TABLE  tbOrderStatus2ForImport
	
	INSERT INTO tbOrderStatus2ForImport
           (kOrderDT
           ,kImportHistory
           ,sVIN
           ,nVehYear
           ,sVehCode
           ,cAccy
           ,cExtClr
           ,cIntClr
           ,cDropship
           ,cDropshipState
           ,cPort
            ,sHMAOrderNo
            ,sCustomerPO
            ,cENUCode
            ,sENUName
            ,cFMCCode
            ,sFMCName
            ,sDealerCode
            ,sDealerName
            ,dtVesselETA
            ,sAllPIO
           ,dtAllocate
           ,dtDeliveryWindowFrom
           ,dtTenderDate
           ,dtInTransit
           ,dtAcesDeliveryDate
           ,dtWholesale
           ,dtRDR
           ,dtCoutesyDelivery
           ,sInvNo
           ,cyInvoice
           ,cyStreetInventive
           ,cyCommercialInvoice
           ,dtCashDraft
           ,dtOrderCreate
		   ,sInternalVIN)
           
        SELECT 0  kOrderDT
            ,@kImportHistory
            ,V.VIN sVIN
            ,MODEL_YEAR nVehYear
            ,  MODELCODE AS sVehCode
            ,ACCESSORY_GROUP_CD cAccy
            ,EXTERIOR_COLOR_CD as cExtClr
		    ,INTERIOR_COLOR_CD AS cIntClr
            ,SHIP_TO_DEALER_CD AS cDropship
            ,(SELECT  top 1 [cCompState] FROM [dbo].[tbDropship] WHERE cCode=SHIP_TO_DEALER_CD)  cDropshipState
            ,CURRENT_PORT_CD cPort
            ,FLEET_PURCHASE_ORDER_NUM sHMAOrderNo
            ,CUSTOMER_PO_NO sCustomerPO
            ,END_USER_USERID cENUCode
            ,( SELECT top 1 [sCompName] FROM [HMAFleet].[dbo].[tbCompany]  where cSAP=END_USER_USERID) sENUName
            ,FLEET_RENTAL_ACCOUNT_CD cFMCCode
            ,( SELECT top 1 [sCompName] FROM [HMAFleet].[dbo].[tbCompany]  where cSAP=FLEET_RENTAL_ACCOUNT_CD ) sFMCName
            ,ALLOCATION_DEALER_CD sDealerCode
            ,(SELECT top 1 dealer_name  FROM HyundaiApp.dealer.DealerInfo  WHERE DealerCode=ALLOCATION_DEALER_CD) sDealerName
            ,[MANIFEST_ETA_ARRIVAL_DATE] dtVesselETA
            , SUBSTRING(COALESCE(','+[PORT_INSTALLED_OPTION_01_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_02_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_03_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_04_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_05_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_06_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_07_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_08_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_09_CD],'')
			  +COALESCE(','+[PORT_INSTALLED_OPTION_10_CD],'')
			 ,2,100)sAllPIO
           ,NULL dtAllocate
           ,FLEET_DELIVERY_FROM_DATE dtDeliveryWindowFrom
           ,TENDER_DATE dtTenderDate
           ,NULL dtInTransit
           ,ACES_DELIVERY_DATE AS dtAcesDeliveryDate
           ,WHOLESALE_DATE dtWholesale
           ,NULL dtRDR
           ,COURTESY_DELIVERY_DATE dtCoutesyDelivery
           ,NULL sInvNo
           ,0.0 cyInvoice
           ,STREET_INCENTIVE_AMT cyStreetInventive
           ,NULL cyCommercialInvoice
           ,NULL dtCashDraft
           ,ORDER_CREATE_DATE  dtOrderCreate
		   ,V.INTERNAL_VIN sInternalVIN
          FROM DWH.CTRL_EBIZ_CS_FLEET_VEHICLE V
          INNER JOIN dbo.tbTemp_VIN_FEED_GOOD  AS FilterTB
				ON V.INTERNAL_VIN=FilterTB.INTERNAL_VIN
				AND V.REC_UPDATE_DATE=FilterTB.REC_UPDATE_DATE
					
       

	if @@ERROR = 0
		return cast(@@IDENTITY as int);
	else
		return 0;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetQueuedEmailStatus]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Set Queued Email Status
-- =============================================
create PROCEDURE [dbo].[spSetQueuedEmailStatus] 
    @id int=0,
    @status varchar(2) = null
AS
BEGIN
	SET NOCOUNT ON;
	update tbEmailQueue set 
        cStatus=@status,
        dtStatus=getdate()
        where iRec=@id
	return @@ERROR;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetSetting]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/28/2012
-- Description:	Get Settings
-- =============================================
CREATE PROCEDURE [dbo].[spSetSetting] 
	@key varchar(100),
	@value nvarchar(4000)
AS
BEGIN
	declare @result int=0;
	update tbSetting set 
        sValue=@value
        where cKey=@key;
	if @@ROWCOUNT=0
	begin
		insert into tbSetting (cKey, sValue) 
			values (@key, @value);
		if @@ROWCOUNT=0
			set @result=-1;
	end
	return @result;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetSubUserLoggedStatus]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Daniel Lee>
-- Create date: <7/7/2017>
-- Description:	<Update Subuser logged status>
-- =============================================

CREATE PROCEDURE [dbo].[spSetSubUserLoggedStatus]
	@uid int
AS
BEGIN
	SET NOCOUNT ON;

	update tbUser set dtSubuserActivated = getdate() where iRec = @uid

	if (@@ROWCOUNT=1)
	return 0;
	else
	return -1;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetSubUserReset]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Daniel Lee>
-- Create date: <7/18/2017>
-- Description:	<Set Subuser Reset>
-- =============================================

CREATE PROCEDURE [dbo].[spSetSubUserReset]
	@uid int,
	@subUserId int,
	@password varchar(40)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @isASubuser int=0;
	
	SELECT @isASubuser = t1.iRec from tbUser t1 
		left join tbUserSubUserLink t2 on t1.iRec = t2.kSubUser
		where t2.kSubUser = @subUserId
		and t1.sLogin is not null

	if (@isASubuser > 1)
	begin 
		update tbUser set sHPwd = @password, dtCreate = getdate(), dtModify = getdate(), dtSubuserActivated = null
		where iRec = @subUserId
		if (@@ROWCOUNT=1)
		return 0;
	end
	
	else
	
	begin
		return -1;
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spSetUser]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Kim
-- Create date: 8/15/2012
-- Description:	Set User Information 
-- =============================================
CREATE PROCEDURE [dbo].[spSetUser] 
    @updateUid int=0,
    @id int=0,
    @categories varchar(100),
	@groupCode varchar(3),
	@login varchar(60),
	@hPwd varchar(40),
	@securityQuestion nvarchar(100),
	@hSecurityAnswer varchar(40),
	@userType varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;
	declare @updateGroup int = 0;
	declare @returnValue int = 0;
	declare @existId int = 0;
	IF @userType IS NOT NULL
	BEGIN
	IF UPPER(@userType) = 'FMC'
	BEGIN
		if @id=0 
		begin
				if @login is null or @login=''
				begin
					set @returnValue = -1;
					goto ENDProc;
				end

			select @existId = iRec from tbUser where sLogin=@login;
			if @existId=0
			begin
				insert into tbUser (
					sLogin, sHPwd, cType, sSecurityQuestion, sHSecurityAnswer, nOrder, kCreate, dtCreate, 
					kModify, dtModify
				) values (
					@login, @hPwd, 'U', @securityQuestion, @hSecurityAnswer, 0, @updateUid, getdate(), 
					@updateUid, getdate()
				)
				if @@ERROR=0
				begin
					set @updateGroup = 1;
					select @returnValue=cast(@@IDENTITY as int);
				end 
			end
			else
				set @returnValue = -1;
		end
		else
		begin
			set @categories = UPPER(','+@categories+',');
			if @categories =',ALL,' or CHARINDEX(',SETTING,',@categories) > 0
			begin
				--set @updateGroup = 1;
				set @updateGroup = 0;
			end
			if @categories =',ALL,' or CHARINDEX(',EMAIL,',@categories) > 0
			begin
				select @existId = iRec from tbUser where iRec<>@id and sLogin=@login;
				if @existId=0
					update tbUser
					set sLogin = @login
					where iRec=@id;
				else
				begin
					set @returnValue = -1;
					goto ENDProc;
				end
			end
			if @categories =',ALL,' or CHARINDEX(',PASSWORD,',@categories) > 0
				update tbUser
				set sHPwd = @hPwd
				where iRec=@id;
			if @categories =',ALL,' or CHARINDEX(',SECURITY,',@categories) > 0
				update tbUser
				set sSecurityQuestion = @securityQuestion,
					sHSecurityAnswer = @hSecurityAnswer
				where iRec=@id;
			if @@ERROR=0
				update tbUser
				set kModify = @updateUid,
					dtModify = getdate()
				where iRec=@id;
			set @returnValue = @id;
		end
		if @updateGroup=1
		begin
			if @@ERROR=0 and @id<>0
				delete from tbUserLink where kUser = @id;
			if @@ERROR=0
			begin
				if @id=0
					set @id = @returnValue;
				insert into tbUserLink (kUser, kGroup) 
					select @id, iRec 
					from tbUser 
					where cType='G' and cGroupCode=@groupCode;
			end
		end
	END
	ELSE
	BEGIN
		if @id=0 
		begin
				if @login is null or @login=''
				begin
					set @returnValue = 0;
					goto ENDProc;
				end

			select @existId = iRec from tbUser where sLogin=@login;
			if @existId=0
			begin
				insert into tbUser (
					sLogin, sHPwd, cType, sSecurityQuestion, sHSecurityAnswer, nOrder, kCreate, dtCreate, 
					kModify, dtModify
				) values (
					@login, @hPwd, 'U', @securityQuestion, @hSecurityAnswer, 0, @updateUid, getdate(), 
					@updateUid, getdate()
				)
				if @@ERROR=0
				begin
					set @updateGroup = 1;
					select @returnValue=cast(@@IDENTITY as int);
				end 
			end
			else
				set @returnValue = -1;
		end
		else
		begin
			set @categories = UPPER(','+@categories+',');
			if @categories =',ALL,' or CHARINDEX(',SETTING,',@categories) > 0
			begin
				--set @updateGroup = 1;
				set @updateGroup = 0;
			end
			if @categories =',ALL,' or CHARINDEX(',EMAIL,',@categories) > 0
			begin
				select @existId = iRec from tbUser where iRec<>@id and sLogin=@login;
				if @existId=0
					update tbUser
					set sLogin = @login
					where iRec=@id;
				else
				begin
					set @returnValue = -1;
					goto ENDProc;
				end
			end
			if @categories =',ALL,' or CHARINDEX(',PASSWORD,',@categories) > 0
				update tbUser
				set sHPwd = @hPwd
				where iRec=@id;
			if @categories =',ALL,' or CHARINDEX(',SECURITY,',@categories) > 0
				update tbUser
				set sSecurityQuestion = @securityQuestion,
					sHSecurityAnswer = @hSecurityAnswer
				where iRec=@id;
			if @@ERROR=0
				update tbUser
				set kModify = @updateUid,
					dtModify = getdate()
				where iRec=@id;
			set @returnValue = @id;
		end
		if @updateGroup=1
		begin
			if @@ERROR=0 and @id<>0
				delete from tbUserLink where kUser = @id;
			if @@ERROR=0
			begin
				if @id=0
					set @id = @returnValue;
				insert into tbUserLink (kUser, kGroup) 
					select @id, iRec 
					from tbUser 
					where cType='G' and cGroupCode=@groupCode;
			end
		end
	END
	END
	ELSE
	BEGIN
		if @id=0 
		begin
				if @login is null or @login=''
				begin
					set @returnValue = 0;
					goto ENDProc;
				end

			select @existId = iRec from tbUser where sLogin=@login;
			if @existId=0
			begin
				insert into tbUser (
					sLogin, sHPwd, cType, sSecurityQuestion, sHSecurityAnswer, nOrder, kCreate, dtCreate, 
					kModify, dtModify
				) values (
					@login, @hPwd, 'U', @securityQuestion, @hSecurityAnswer, 0, @updateUid, getdate(), 
					@updateUid, getdate()
				)
				if @@ERROR=0
				begin
					set @updateGroup = 1;
					select @returnValue=cast(@@IDENTITY as int);
				end 
			end
			else
				set @returnValue = -1;
		end
		else
		begin
			set @categories = UPPER(','+@categories+',');
			if @categories =',ALL,' or CHARINDEX(',SETTING,',@categories) > 0
			begin
				--set @updateGroup = 1;
				set @updateGroup = 0;
			end
			if @categories =',ALL,' or CHARINDEX(',EMAIL,',@categories) > 0
			begin
				select @existId = iRec from tbUser where iRec<>@id and sLogin=@login;
				if @existId=0
					update tbUser
					set sLogin = @login
					where iRec=@id;
				else
				begin
					set @returnValue = -1;
					goto ENDProc;
				end
			end
			if @categories =',ALL,' or CHARINDEX(',PASSWORD,',@categories) > 0
				update tbUser
				set sHPwd = @hPwd
				where iRec=@id;
			if @categories =',ALL,' or CHARINDEX(',SECURITY,',@categories) > 0
				update tbUser
				set sSecurityQuestion = @securityQuestion,
					sHSecurityAnswer = @hSecurityAnswer
				where iRec=@id;
			if @@ERROR=0
				update tbUser
				set kModify = @updateUid,
					dtModify = getdate()
				where iRec=@id;
			set @returnValue = @id;
		end
		if @updateGroup=1
		begin
			if @@ERROR=0 and @id<>0
				delete from tbUserLink where kUser = @id;
			if @@ERROR=0
			begin
				if @id=0
					set @id = @returnValue;
				insert into tbUserLink (kUser, kGroup) 
					select @id, iRec 
					from tbUser 
					where cType='G' and cGroupCode=@groupCode;
			end
		end
	END

ENDProc:
	if @@ERROR=0 
		return @returnValue;
	else
		return 0;
END


GO
/****** Object:  StoredProcedure [dbo].[spSetUserCompany]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eric Kim
-- Create date: 2/9/2013
-- Description:	Set UserCompany Information 
-- Modified: Erik Mildner, 12/4/2017, fixed null nDefault value
-- =============================================
CREATE PROCEDURE [dbo].[spSetUserCompany] 
    @idUser int=0,
    @idCompany int=0,
    @nDefault int=0
AS
BEGIN
	declare @defaultCount int = 0;
	declare @defaultCountExceptCurrent int = 0;
	declare @linkCount int=0;
	declare @returnValue int=0;

	if @idUser>0 and @idCompany>0
	begin
		select @linkCount=count(case when kCompany=@idCompany then 1 end),
			@defaultCount=count(case when nDefault=1 then 1 end),
			@defaultCountExceptCurrent=count(case when kCompany<>@idCompany and nDefault=1 then 1 end)
			from tbUserCompany where kUser=@idUser;
		if @linkCount=0 and @nDefault is null
			set @nDefault=0;
		if @defaultCount=0
			set @nDefault=1;
		if @nDefault=1 and @defaultCountExceptCurrent>0
			update tbUserCompany set nDefault=0 where kUser=@idUser;
		if @nDefault is not null
		begin
			if @linkCount>0
			begin
				update tbUserCompany set nDefault=@nDefault where kUser=@idUser and kCompany=@idCompany;
				--subuser
				update tbUC set nDefault=@nDefault
				from tbUserCompany as tbUC
				inner join tbUser as tbU
					on tbU.iRec = tbUC.kUser
				where tbUC.kUser in (select kSubUser from tbUserSubUserLink where kUser=@idUser)
					and tbUC.kCompany=@idCompany
					and tbU.sLogin is not null
			end
			else
			begin
				insert into tbUserCompany (kUser, kCompany, nDefault) select @idUser, @idCompany, @nDefault;
				--subuser
				insert into tbUserCompany (kUser, kCompany, nDefault)
				select iRec, @idCompany, @nDefault from tbUser where iRec in (select kSubUser from tbUserSubUserLink where kUser=@idUser) 
					and sLogin is not null 
			end
			set @returnValue = 1;
		end
	end
	else
		set @returnValue = 0;
	return @returnValue;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetUserSubUserLink]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Daniel>
-- Create date: <6/27/17>
-- Description:	<setUserSubUserLink>
-- Modified: Erik Mildner, 1-15-2019, Adds protection XSS attack dbo.fn_StripCharacters()
-- =============================================
CREATE PROCEDURE [dbo].[spSetUserSubUserLink]
	@uid int,
	@email varchar(60),
	@password varchar(40),
	@firstName varchar(50),
	@lastName varchar(50)
	
AS
BEGIN
	SET NOCOUNT ON;

	declare @emailExists int = 0;
	declare @returnValue int = 0;
	declare @alreadyASubUser int = 0;
	declare @isFMC int = 0;

	select @emailExists = iRec from tbUser where sLogin=@email
	select @alreadyASubUser = iRec from tbUserSubUserLink where kSubUser = @uid
	select @isFMC = t1.iRec from tbUser t1
					left join tbUserCompany t2 on t2.kUser = t1.iRec
					left join tbCompany t3 on t2.kCompany=t3.iRec
					where t1.iRec = @uid
					and t3.cCompType = 'FMC'
					and t2.nDefault = 1
					and t3.cStatus = 'A'
	select @email = dbo.fn_StripCharacters(@email, '^a-z0-9@._\-')
	select @firstName = dbo.fn_StripCharacters(@firstName, '^a-z0-9')
	select @lastName = dbo.fn_StripCharacters(@lastName, '^a-z0-9')

	if (@emailExists=0 AND @alreadyASubUser=0 and @isFMC <> 0)

		begin

			--insert tbUser
			insert into tbUser(sLogin, sHPwd, cType, sDisplayName, kCreate, dtCreate, kModify, dtModify, sFirstName, sLastName)
				values (@email, @password, 'U', @firstName + ' ' + @lastName, @uid, getdate(), @uid, getdate(), @firstName, @lastName)

			set @returnValue = cast(@@IDENTITY as int);

			--update tbUserCompany
			insert into tbUserCompany (kUser, kCompany, nDefault)
				select replace(t2.kUser, t2.kUser, @returnValue) as kUser,
				t2.kCompany,
				t2.nDefault
				from tbUserCompany t2
				where t2.kUser = @uid

			--insert tbUserLink
			insert into tbUserLink (kUser, kGroup)
				values(@returnValue, 204)

			--insert tbUserSubUserLink
			insert into tbUserSubUserLink(kUser, kSubUser)
				values(@uid, @returnValue)
			return 0;
		end
	else
		begin
			set @returnValue = -1; --email exists
			return @returnValue
		end
END

GO
/****** Object:  StoredProcedure [dbo].[spSetVehicleTrimForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Insert a record of Vehicle Trim For Import
-- Modified: 8/16/2019, Erik Mildner, Added parameter @modelGroupCode
-- =========================================================
CREATE PROCEDURE [dbo].[spSetVehicleTrimForImport]
	@name varchar(100),
	@code varchar(20),
	@year int,
	@modelName varchar(50),
	@modelCode varchar(20),
	@equivalentCodes varchar(500),
	@status varchar(1),
	@modelGroupCode varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
    insert into tbVehicleTrimForImport (cCode,sName,nYear,cModelCode,sModelName,cCodeEquivalents,cStatus,cModelGroupCode) 
        VALUES (@code,@name,@year,@modelCode,@modelName,@equivalentCodes,@status,@modelGroupCode);
	return @@ERROR;
END
GO
/****** Object:  StoredProcedure [dbo].[spSetVehicleXCodeForImport]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Insert a record of Vehicle XCode For Import
-- Modified: 6/28/2019, Erik Mildner, Extended @code because interior color was over 20 char limit
-- =================================================================
CREATE PROCEDURE [dbo].[spSetVehicleXCodeForImport]
	@table varchar(20),
	@code varchar(100),
	@sap varchar(20),
	@codeRaw varchar(50),
	@status varchar(1),
	@desc nvarchar(500),
	@linkVehicleTrim varchar(20),
	@linkVehiceYear int,
	@linkVehicleXCode varchar(50)=null,
	@linkVehicleXCodeIntClr varchar(50)=null,
	@linkVehicleXCodePackage varchar(50)=null,
	@sortOrder int=0 
AS
BEGIN
	SET NOCOUNT ON;
    insert into tbVehicleXCodeForImport (cTable, cCode, cSAP, cCodeRaw, sDesc, cLinkVehicleTrim, nLinkVehiceYear, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage, nOrder, cStatus) 
        VALUES (@table,@code,@sap,@codeRaw,@desc,@linkVehicleTrim,@linkVehiceYear,@linkVehicleXCode,@linkVehicleXCodeIntClr,@linkVehicleXCodePackage,@sortOrder,@status);
	return @@ERROR;
END
GO
/****** Object:  StoredProcedure [dbo].[spTransferOrderStatus]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Transfer Order Status 
--              tbOrderStatus1ForImport -> tbOrderStatus1
--              tbOrderStatus2ForImport -> tbOrderStatus2
-- =================================================================
CREATE PROCEDURE [dbo].[spTransferOrderStatus]
	@type varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	set @type = UPPER(@type);

	if @type='ORDER_STATUS_1'
	begin
		delete from tbOrderStatus1 
			where sVIN in (select sVIN from tbOrderStatus1ForImport where len(sVIN)>0);
		
		if @@ERROR=0
			insert into tbOrderStatus1 (kImportHistory,cFMCCode,cENUCode,sVIN,nVehYear,sVehDesc
				   ,sVehCode,cAccy,sTrimDesc,cExtClr,cIntClr,cStatus,sStatusDesc
				   ,cPrimaryStatus,cPrimaryStatusDesc,cSecondaryStatus,cSecondaryStatusDesc,cRegion,sRegionDesc
				   ,cCustomer,cDropship,cPort,sPortDesc,sEngine,sKeynoDoor,sKeynoIngition,sKeynoTrunk
				   ,cEsnRadio,dtProduction,dtBodyLine,dtPaintLine
				   ,dtTrimLine,dtEstimateBody,dtCursoryInspection,dtUnderbodyCoating,dtAccptanceInspection
				   ,dtFinalInspection,dtManfestReceive,dtUrgency,dtShipping,dtETA) 
				select kImportHistory,cFMCCode,cENUCode,sVIN,nVehYear,sVehDesc
				   ,sVehCode,cAccy,sTrimDesc,cExtClr,cIntClr,cStatus,sStatusDesc
				   ,cPrimaryStatus,cPrimaryStatusDesc,cSecondaryStatus,cSecondaryStatusDesc,cRegion,sRegionDesc
				   ,cCustomer,cDropship,cPort,sPortDesc,sEngine,sKeynoDoor,sKeynoIngition,sKeynoTrunk
				   ,cEsnRadio,dtProduction,dtBodyLine,dtPaintLine
				   ,dtTrimLine,dtEstimateBody,dtCursoryInspection,dtUnderbodyCoating,dtAccptanceInspection
				   ,dtFinalInspection,dtManfestReceive,dtUrgency,dtShipping,dtETA
				from tbOrderStatus1ForImport 
				where len(sVIN)>0;
	end
	if @type='ORDER_STATUS_2'
	begin
		update tbOrderStatus2ForImport set 
			cFMCCode=t2.cFMCCode, 
			cENUCode=t2.cENUCode,
			sVehCode=t2.sVehCode,
			nVehYear=t2.nVehYear,
			cAccy=t2.cAccy,
			cExtClr=t2.cExtClr,
			cIntClr=t2.cIntClr 
		from tbOrderStatus2ForImport t1
		inner join tbOrderStatus1 t2 on t1.sVIN=t2.sVIN and len(t2.sVIN)>0

		if @@ERROR=0
		begin
			declare @item_id int = 0;
			DECLARE @curr CURSOR;
			set @curr = CURSOR for 
				select iRec from tbOrderStatus2ForImport where len(sVIN)>0 and len(sCustomerPO)>0 order by iRec;

			OPEN @curr;
			FETCH NEXT FROM @curr INTO @item_id;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				update tbOrderStatus2ForImport set kOrderDT=t2.iOrderDT
					from tbOrderStatus2ForImport t1
					inner join (
						select  x9.iRec, min(x3.iRec) as iOrderDT
						from tbOrder x1 
						inner join tbOrderDS x2 on x1.iRec=x2.kOrder
						inner join tbOrderDT x3 on x2.iRec=x3.kOrderDS
						left join tbOrderPIO x4 on x3.iRec=x4.kOrderDT
						inner join tbDropship x6 on x6.iRec=x2.kDropship
						inner join tbVehicleTrim x7 on x7.iRec=x3.kVehicleTrim
						inner join tbVehicleTrimEquivalent x11 on x7.iRec=x11.kVehicleTrim
						inner join tbVehicleXCode x13 on x13.cTable='EXTCLR' and x7.iRec=x13.kVehicleTrim and x11.iRec=x13.kVehicleTrimEquivalent and x3.cColorExt=x13.cCode
						inner join tbVehicleXCode x12 on x12.cTable='INTCLR' and x7.iRec=x12.kVehicleTrim and x11.iRec=x12.kVehicleTrimEquivalent and x13.iRec=x12.kVehicleXCode and x3.cColorInt=x12.cCode
						left join (
							select kOrderDT, count(iRec) as nCnt
							from tbOrderStatus2ForImport
							group by kOrderDT
						) x8 on x3.iRec=x8.kOrderDT
						inner join tbOrderStatus2ForImport x9 on 
							x1.sPONo=x9.sCustomerPO and x1.cFMCCode=x9.cFMCCode and x1.cENUCode=x9.cENUCode
							and x6.cCode=x9.cDropship
							and x11.cCode=x9.sVehCode and x7.nYear=x9.nVehYear and x3.cAccy=x9.cAccy
							and x3.cColorExt=x9.cExtClr and x12.cSAP=x9.cIntClr
							and x3.dtReqDelivery=x9.dtDeliveryWindowFrom
						where coalesce(x8.nCnt, 0)<x3.nQty and x1.cStatus not in ('OP', 'CM')
						group by x9.iRec
						having sum(case when x4.iRec is null then 0 else 1 end)=count(case when ','+coalesce(x9.sAllPIO,'')+',' like '%,'+coalesce(x4.cPIO,'----')+',%' then 1 end)
					) t2 on t1.iRec=t2.iRec
					where t1.iRec=@item_id;
							
				FETCH NEXT FROM @curr INTO @item_id;
			END

			CLOSE @curr;
			DEALLOCATE @curr;
		end

		if @@ERROR=0
			delete from tbOrderStatus2 
				where sVIN in (select sVIN from tbOrderStatus2ForImport where len(sVIN)>0);

		if @@ERROR=0
			insert into tbOrderStatus2 (kOrderDT,kImportHistory,sVIN,nVehYear,sVehCode,cAccy,cExtClr,cIntClr,cDropship,cDropshipState
				   ,cPort,sHMAOrderNo,sCustomerPO,cENUCode,sENUName,cFMCCode,sFMCName,sDealerCode,sDealerName,dtVesselETA,sAllPIO
				   ,dtAllocate,dtDeliveryWindowFrom,dtTenderDate,dtInTransit,dtAcesDeliveryDate
				   ,dtWholesale,dtRDR,dtCoutesyDelivery,sInvNo,cyInvoice,cyStreetInventive
				   ,cyCommercialInvoice,dtCashDraft,dtOrderCreate) 
				select kOrderDT,kImportHistory,sVIN,nVehYear,sVehCode,cAccy,cExtClr,cIntClr,cDropship,cDropshipState
				   ,cPort,sHMAOrderNo,sCustomerPO,cENUCode,sENUName,cFMCCode,sFMCName,sDealerCode,sDealerName,dtVesselETA,sAllPIO
				   ,dtAllocate,dtDeliveryWindowFrom,dtTenderDate,dtInTransit,dtAcesDeliveryDate
				   ,dtWholesale,dtRDR,dtCoutesyDelivery,sInvNo,cyInvoice,cyStreetInventive
				   ,cyCommercialInvoice,dtCashDraft,dtOrderCreate
				from tbOrderStatus2ForImport 
				where kOrderDT>0;

	end

	if @@ERROR=0
		update tbOrder set 
			cStatus = (case when t2.nQty<t3.nCntVin then 'OV' else 'AL' end)
			from tbOrder t1
			inner join (
				select x1.kOrder, sum(x2.nQty) as nQty 
				from tbOrderDS x1 
				inner join tbOrderDT x2 on x1.iRec=x2.kOrderDS
				group by x1.kOrder) t2 on t1.iRec=t2.kOrder
			inner join (
				select x1.kOrder, count(x3.iRec) as nCntVin 
				from tbOrderDS x1 
				inner join tbOrderDT x2 on x1.iRec=x2.kOrderDS
				inner join tbOrderStatus2 x3 on x2.iRec=x3.kOrderDT
				where len(x3.sVIN)>0
				group by x1.kOrder) t3 on t1.iRec=t3.kOrder
			where t1.cStatus in ('IP', 'PP') and t2.nQty>0 and t2.nQty<=t3.nCntVin;

	if @@ERROR=0
		update tbOrder set 
			cStatus = 'CP'
			from tbOrder t1
			inner join (
				select x1.kOrder, sum(x2.nQty) as nQty 
				from tbOrderDS x1 
				inner join tbOrderDT x2 on x1.iRec=x2.kOrderDS
				group by x1.kOrder) t2 on t1.iRec=t2.kOrder
			inner join (
				select x1.kOrder, count(x3.iRec) as nCntVin, count(x3.dtAcesDeliveryDate) as nCntADD 
				from tbOrderDS x1 
				inner join tbOrderDT x2 on x1.iRec=x2.kOrderDS
				inner join tbOrderStatus2 x3 on x2.iRec=x3.kOrderDT
				where len(x3.sVIN)>0
				group by x1.kOrder) t3 on t1.iRec=t3.kOrder
			where t1.cStatus='AL' and t2.nQty>0 and t3.nCntADD>0 and t3.nCntADD=t3.nCntVin;

	if @@ERROR = 0
		return 1;
	else
		return 0;
END



GO
/****** Object:  StoredProcedure [dbo].[spTransferOrderStatus_Revised]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Transfer Order Status 
--              tbOrderStatus1ForImport -> tbOrderStatus1
--              tbOrderStatus2ForImport -> tbOrderStatus2
-- Modified by Nick Nguyen 7/29/2014: Revisse the logic to use on SSIS package.
-- Modified by Daniel Lee 7/29/2014: Add Internal VIN and Decommit VIN
-- =================================================================
CREATE PROCEDURE [dbo].[spTransferOrderStatus_Revised]	
AS
BEGIN
	SET NOCOUNT ON;
	-----------------------------------------------------------------------------------
	--Insert data to Status1
	MERGE INTO tbOrderStatus1 AS T
	USING (
				select distinct kImportHistory,
				      cFMCCode,
				      cENUCode,
				      sVIN,
				      nVehYear,
				      sVehDesc,
				      sVehCode,
				     cAccy,
				     sTrimDesc,
				     cExtClr,
				     cIntClr,
				     cStatus,
				     sStatusDesc,
				     cPrimaryStatus,
				     cPrimaryStatusDesc,
				     cSecondaryStatus,
				     cSecondaryStatusDesc,
				     cRegion,
				     sRegionDesc,
				     cCustomer,
				     cDropship,
				     cPort,
				     sPortDesc,
				     sEngine,
				     sKeynoDoor,
				     sKeynoIngition,
				     sKeynoTrunk,
				     cEsnRadio,
				     dtProduction,
				     dtBodyLine,
				     dtPaintLine,
				     dtTrimLine,
				     dtEstimateBody,
				     dtCursoryInspection,
				     dtUnderbodyCoating,
				     dtAccptanceInspection,
				     dtFinalInspection
				     ,dtManfestReceive,
				     dtUrgency,
				     dtShipping,
				     dtETA,
					 sInternalVIN
				FROM tbOrderStatus1ForImport 
				WHERE len(sInternalVIN)>0
			)AS S
			ON S.sInternalVIN=T.sInternalVIN
	 WHEN MATCHED THEN
	 UPDATE
		   SET
			   sVIN=COALESCE(S.sVIN,S.sInternalVIN),
		       cStatus=S.cStatus,
		       sStatusDesc=S.sStatusDesc,
		       cAccy= S.cAccy,
		       dtShipping=S.dtShipping,
			   dtETA=S.dtETA
	WHEN NOT MATCHED THEN
	INSERT (kImportHistory,
				      cFMCCode,
				      cENUCode,
				      sVIN,
				      nVehYear,
				      sVehDesc,
				      sVehCode,
				     cAccy,
				     sTrimDesc,
				     cExtClr,
				     cIntClr,
				     cStatus,
				     sStatusDesc,
				     cPrimaryStatus,
				     cPrimaryStatusDesc,
				     cSecondaryStatus,
				     cSecondaryStatusDesc,
				     cRegion,
				     sRegionDesc,
				     cCustomer,
				     cDropship,
				     cPort,
				     sPortDesc,
				     sEngine,
				     sKeynoDoor,
				     sKeynoIngition,
				     sKeynoTrunk,
				     cEsnRadio,
				     dtProduction,
				     dtBodyLine,
				     dtPaintLine,
				     dtTrimLine,
				     dtEstimateBody,
				     dtCursoryInspection,
				     dtUnderbodyCoating,
				     dtAccptanceInspection,
				     dtFinalInspection
				     ,dtManfestReceive,
				     dtUrgency,
				     dtShipping,
				     dtETA,
					 sInternalVIN)
				Values(
					 kImportHistory,
				      cFMCCode,
				      cENUCode,
				      COALESCE(sVIN,sInternalVIN),
				      nVehYear,
				      sVehDesc,
				      sVehCode,
				     cAccy,
				     sTrimDesc,
				     cExtClr,
				     cIntClr,
				     cStatus,
				     sStatusDesc,
				     cPrimaryStatus,
				     cPrimaryStatusDesc,
				     cSecondaryStatus,
				     cSecondaryStatusDesc,
				     cRegion,
				     sRegionDesc,
				     cCustomer,
				     cDropship,
				     cPort,
				     sPortDesc,
				     sEngine,
				     sKeynoDoor,
				     sKeynoIngition,
				     sKeynoTrunk,
				     cEsnRadio,
				     dtProduction,
				     dtBodyLine,
				     dtPaintLine,
				     dtTrimLine,
				     dtEstimateBody,
				     dtCursoryInspection,
				     dtUnderbodyCoating,
				     dtAccptanceInspection,
				     dtFinalInspection
				     ,dtManfestReceive,
				     dtUrgency,
				     dtShipping,
				     dtETA,
					 sInternalVIN
				     )
	
		       
     ;
	----------------------------------------------

		IF @@ERROR=0
		--------------------------------------------------------------------------------
		--Now we update tb with orderiD
		UPDATE TBI2		
			SET kOrderDT=VI.DTOrderID
			    ,kOrderDS=VI.DSOrderID
			    ,kOrder=VI.OrderID
			FROM tbOrderStatus2ForImport TBI2
			INNER JOIN dbo.vw_VehicleOrderInfo VI
			--made HMAORDER # the comparison instead of PO Number
			ON VI.sHmaOrderNo=TBI2.sHMAOrderNo
			AND VI.cFMCCode=TBI2.cFMCCode
			--According to business ENUCODE and PO number should not be matched
			--AND VI.cENUCode=TBI2.cENUCode
			--AND VI.sCustomerPO=TBI2.sCustomerPO
			AND VI.cDropship=TBI2.cDropship
			AND VI.ModelCode=TBI2.sVehCode 
			AND VI.ModelYear=TBI2.nVehYear 
			AND VI.cAccy=TBI2.cAccy
			AND VI.ExteriorColorCode=TBI2.cExtClr 
			AND VI.InteriorColorCode=TBI2.cIntClr
			AND VI.dtDeliveryWindowFrom=TBI2.dtDeliveryWindowFrom
			--Comments this out by NN to not check PIO
			---AND  dbo.IsMatchingPIOBykOrderDT(TBI2.sAllPIO,VI.DTOrderID)=1
			
	---------------------------------------------------------------------------------------
	--DELETE VINs have no POs
	--edit, made it shmaorderno
	       UPDATE TBI2		
			SET kOrderDT=0
			    ,kOrderDS=0
			    ,kOrder=0
			FROM tbOrderStatus2ForImport TBI2
			WHERE isnull(sHMAOrderNo,'')=''

       
		--------------------------------------------------------------------------------
       
       --Insert to Status2
       MERGE INTO tbOrderStatus2 AS T
		USING (
				select distinct kOrder,
					   kOrderDS,
					   kOrderDT,
					   kImportHistory,
					   sVIN,
					   nVehYear,
					   sVehCode,
					   cAccy,
					   cExtClr,
					   cIntClr,
					   cDropship,
					   cDropshipState,
					   cPort,
					   sHMAOrderNo,
					   sCustomerPO,
					   cENUCode,
					   sENUName,
					   cFMCCode,
					   sFMCName,
					   sDealerCode,
					   sDealerName,
					   dtVesselETA,
					   sAllPIO,
					   dtAllocate,
					   dtDeliveryWindowFrom,
					   dtTenderDate,
					   dtInTransit,
					   dtAcesDeliveryDate,
					   dtWholesale,
					   dtRDR,
					   dtCoutesyDelivery,
					   sInvNo,
					   cyInvoice,
					   cyStreetInventive,
					   cyCommercialInvoice,
					   dtCashDraft,
					   dtOrderCreate,
					   sInternalVIN
				from tbOrderStatus2ForImport 
				where kOrderDT>0 
		) AS S
		ON S.sInternalVIN=T.sInternalVIN
	 WHEN MATCHED THEN
	 UPDATE
		   SET
				        kOrder=S.kOrder,
						kOrderDS=S.kOrderDS,
						kOrderDT=S.kOrderDT,
						kImportHistory=S.kImportHistory,
						sVIN=COALESCE(S.sVIN,S.sInternalVIN),
						nVehYear=S.nVehYear,
						sVehCode=S.sVehCode,
						cAccy=S.cAccy,
						cExtClr=S.cExtClr,
						cIntClr=S.cIntClr,
						cDropship=S.cDropship,
						cDropshipState=S.cDropshipState,
						cPort=S.cPort,
						sHMAOrderNo=S.sHMAOrderNo,
						sCustomerPO=S.sCustomerPO,
						cENUCode=S.cENUCode,
						sENUName=S.sENUName,
						cFMCCode=S.cFMCCode,
						sFMCName=S.sFMCName,
						sDealerCode=S.sDealerCode,
						sDealerName=S.sDealerName,
						dtVesselETA=S.dtVesselETA,
						sAllPIO=S.sAllPIO,
						dtAllocate=S.dtAllocate,
						dtDeliveryWindowFrom=S.dtDeliveryWindowFrom,
						dtTenderDate=S.dtTenderDate,
						dtInTransit=S.dtInTransit,
						dtAcesDeliveryDate=S.dtAcesDeliveryDate,
						dtWholesale=S.dtWholesale,
						dtRDR=S.dtRDR,
						dtCoutesyDelivery=S.dtCoutesyDelivery,
						sInvNo=S.sInvNo,
						cyInvoice=S.cyInvoice,
						cyStreetInventive=S.cyStreetInventive,
						cyCommercialInvoice=S.cyCommercialInvoice,
						dtCashDraft=S.dtCashDraft,
						dtOrderCreate=S.dtOrderCreate,
						sInternalVIN=S.sInternalVIN
			
     WHEN NOT MATCHED THEN
	  INSERT(   	   kOrder,
					   kOrderDS,
					   kOrderDT,
					   kImportHistory,
					   sVIN,
					   nVehYear,
					   sVehCode,
					   cAccy,
					   cExtClr,
					   cIntClr,
					   cDropship,
					   cDropshipState,
					   cPort,
					   sHMAOrderNo,
					   sCustomerPO,
					   cENUCode,
					   sENUName,
					   cFMCCode,
					   sFMCName,
					   sDealerCode,
					   sDealerName,
					   dtVesselETA,
					   sAllPIO,
					   dtAllocate,
					   dtDeliveryWindowFrom,
					   dtTenderDate,
					   dtInTransit,
					   dtAcesDeliveryDate,
					   dtWholesale,
					   dtRDR,
					   dtCoutesyDelivery,
					   sInvNo,
					   cyInvoice,
					   cyStreetInventive,
					   cyCommercialInvoice,
					   dtCashDraft,
					   dtOrderCreate,
					   sInternalVIN)
		 Values(       kOrder,
					   kOrderDS,
					   kOrderDT,
					   kImportHistory,
					   COALESCE(sVIN,sInternalVIN),
					   nVehYear,
					   sVehCode,
					   cAccy,
					   cExtClr,
					   cIntClr,
					   cDropship,
					   cDropshipState,
					   cPort,
					   sHMAOrderNo,
					   sCustomerPO,
					   cENUCode,
					   sENUName,
					   cFMCCode,
					   sFMCName,
					   sDealerCode,
					   sDealerName,
					   dtVesselETA,
					   sAllPIO,
					   dtAllocate,
					   dtDeliveryWindowFrom,
					   dtTenderDate,
					   dtInTransit,
					   dtAcesDeliveryDate,
					   dtWholesale,
					   dtRDR,
					   dtCoutesyDelivery,
					   sInvNo,
					   cyInvoice,
					   cyStreetInventive,
					   cyCommercialInvoice,
					   dtCashDraft,
					   dtOrderCreate,
					   sInternalVIN
					   )
		;
		
				
   -----------------------------------------------------------
   
      --REMOVE DELETED PO VIN from Import1
	  --made it shmaorderno -Daniel Lee
   DELETE OS1
   FROM tbOrderStatus1 OS1
   INNER JOIN  tbOrderStatus2ForImport OSFI
   ON OS1.sInternalVIN=OSFI.sInternalVIN
    WHERE ISNULL(OSFI.sHMAOrderNo,'')=''
    
   --REMOVE DELETED PO VIN from Import2
   DELETE OS2
   FROM tbOrderStatus2 OS2
   INNER JOIN  tbOrderStatus2ForImport OSFI
   ON OS2.sVIN=OSFI.sVIN
   WHERE ISNULL(OSFI.sHMAOrderNo,'')=''
   
        
   
   
   -----------------------------------------------------------
	--DECOMMIT VINS

	DELETE
		tbOrderStatus2
	FROM
		tbOrderStatus2 t1
		INNER JOIN DWH.CTRL_EBIZ_CS_FLEET_VEHICLE t2
			ON t1.sInternalVIN = t2.INTERNAL_VIN
	WHERE
		(t2.INVENTORY_STATUS_CD in ('MS','VS','AS','LS','PS')) OR 
		(t2.CURRENT_REGION_CD in ('WE','CE','SC','SO','EA','NT','NL','NH')) OR
		(t2.FLEET_RENTAL_ACCOUNT_CD is null) OR 
		(t2.FLEET_PURCHASE_ORDER_NUM != t1.sHMAOrderNo)

	DELETE
		tbOrderStatus1
	FROM
		tbOrderStatus1 t1
		INNER JOIN DWH.CTRL_EBIZ_CS_FLEET_VEHICLE t2
			ON t1.sInternalVIN = t2.INTERNAL_VIN
	WHERE
		(t2.INVENTORY_STATUS_CD in ('MS','VS','AS','LS','PS')) OR 
		(t2.CURRENT_REGION_CD in ('WE','CE','SC','SO','EA','NT','NL','NH')) OR
		(t2.FLEET_RENTAL_ACCOUNT_CD is null)


	----------------------------------------------------------------------------------------------------------
    -- Now, we update all order that has 'IP' status to OV or AL Status
	IF @@ERROR=0
	UPDATE O
			SET cStatus = (case when RequestedQty<COALESCE(ReturnQty,0) then 'OV'
			                    WHEN COALESCE(ReturnQty,0)=0 then 'IP'--No Changed
			                    WHEN RequestedQty>COALESCE(ReturnQty,0) then 'PP'--Some vin got deleted from order
								WHEN RequestedQty=COALESCE(ReturnQty,0) AND TotalDeliveriedDate=RequestedQty THEN 'CP'
								WHEN RequestedQty=COALESCE(ReturnQty,0) AND TotalDeliveriedDate<>RequestedQty THEN 'AL'
								ELSE cStatus END)
			-----------------------------------------------------------------------------------------------
			OUTPUT inserted.iRec,
					deleted.cStatus,
					inserted.cStatus
			INTO dbo.tbOrderStatusChangeHistory(
					OrderID,
					PreviousStatus,
					CurrentStatus)
			-----------------------------------------------------------------------------------------------
		FROM tbOrder O		
		LEFT JOIN 
			(SELECT kOrder, 
					  count(COALESCE(sInternalVIN, sVIN)) as ReturnQty  
					 ,count(dtAcesDeliveryDate) as TotalDeliveriedDate
			FROM tbOrderStatus2
			 -- WHERE kOrder IN (SELECT kOrder  FROM tbOrderStatus2  WHERE sVIN IN (SELECT VIN FROM dbo.tbTemp_VIN_FEED_GOOD))
			GROUP BY kOrder
			) AS OS2
			ON OS2.kOrder=O.Irec
		CROSS APPLY  
		(		SELECT  sum(DT.nQty) as RequestedQty 		               
				FROM tbOrderDS DS 
				INNER JOIN  tbOrderDT DT on DS.iRec=DT.kOrderDS
				WHERE DS.kOrder=O.iRec
				GROUP BY DS.kOrder
		)AS TotalOrder
		WHERE  O.cStatus IN ('IP','AL','OV','CP','PP')

  ------------------------------------------------------------------------------------


END

GO
/****** Object:  StoredProcedure [dbo].[spTransferVehicleTrim]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Transfer Vehicle Trim Data (Imported) to Real Table
--              tbVehicleTrimForImport --> tbVehicleTrim
-- Modified: 8/16/2019, Erik Mildner, Added insert for column tbVehicleTrim.cmodelGroupCode
-- =================================================================
CREATE PROCEDURE [dbo].[spTransferVehicleTrim]
AS
BEGIN
	SET NOCOUNT ON;

	declare @@returnValue int = 0;
	
	if not exists (select * from tbVehicleTrimForImport)
	begin 
		set @@returnValue = 1;
	end
	else
	begin
		update tbVehicleTrim set 
			cStatus='I',
			dtModify=getdate()
			from tbVehicleTrim u1
			left join tbVehicleTrimForImport u2 
				on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
			where u2.iRec is null;

		if @@ERROR=0
			update tbVehicleTrim set 
				cStatus=u2.cStatus,
				dtModify=getdate()
				from tbVehicleTrim u1
				inner join tbVehicleTrimForImport u2 
					on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
				where u1.cStatus<>u2.cStatus;

		if @@ERROR=0
			update tbVehicleTrim set 
				sModelName=u2.sModelName,
				dtModify=getdate()
				from tbVehicleTrim u1
				inner join tbVehicleTrimForImport u2 
					on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
				where u1.sModelName<>u2.sModelName;

		if @@ERROR=0
			update tbVehicleTrim set 
				sName=u2.sName,
				dtModify=getdate()
				from tbVehicleTrim u1
				inner join tbVehicleTrimForImport u2 
					on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
				where u1.sName<>u2.sName;
		
		if @@ERROR=0
			update tbVehicleTrim set 
				cModelGroupCode=u2.cModelGroupCode,
				dtModify=getdate()
				from tbVehicleTrim u1
				inner join tbVehicleTrimForImport u2 
					on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
				where u1.cModelGroupCode<>u2.cModelGroupCode;

		if @@ERROR=0
			insert into tbVehicleTrim (sName, cCode, nYear, sModelName, cModelCode, cStatus, dtModify, cModelGroupCode)
				select u2.sName, u2.cCode, u2.nYear, u2.sModelName, u2.cModelCode, u2.cStatus, getdate(), u2.cModelGroupCode
				from tbVehicleTrimForImport u2 
				left join tbVehicleTrim u1 on u1.nYear=u2.nYear and u1.cCode=u2.cCode and coalesce(u2.cCode, '')<>''
				where u1.iRec is null and coalesce(u2.cCode, '')<>'';


		if @@ERROR=0
			insert into tbVehicleTrimEquivalent (kVehicleTrim, cCode)
				SELECT t1.iRec, t3.s as cCode
				FROM [tbVehicleTrim] t1 
				inner join [tbVehicleTrimForImport] t2 on t1.nYear=t2.nYear and t1.cCode=t2.cCode
				CROSS APPLY (select distinct s as s from dbo.SplitString(t1.cCode+','+coalesce(t2.cCodeEquivalents,''), ',') where s<>'' group by s) t3
				left join tbVehicleTrimEquivalent t4 on t1.iRec=t4.kVehicleTrim and t3.s=t4.cCode
				where t4.iRec is null and len(t3.s)>=8 
					and ((substring(t1.cCode, 8, 1)='P' and substring(coalesce(nullif(t3.s, ''), t1.cCode), 8, 1)='P')
					or (substring(t1.cCode, 8, 1)<>'P' and substring(coalesce(nullif(t3.s, ''), t1.cCode), 8, 1)<>'P'));

		set @@returnValue = @@ERROR;
	end
	return @@returnValue;
END
GO
/****** Object:  StoredProcedure [dbo].[spTransferVehicleXCode]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================================
-- Author:		Eric Kim
-- Create date: 8/16/2012
-- Description:	Transfer Vehicle XCode Data (Imported) to Real Table
--              tbVehicleXCodeForImport --> tbVehicleXCode
-- =================================================================
CREATE PROCEDURE [dbo].[spTransferVehicleXCode]
	@category varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	declare @@returnValue int = 0;
	set @category = UPPER(@category);
	

	if not exists (select * from tbVehicleXCodeForImport where cTable=@category)
	begin 
		set @@returnValue = 1;
	end
	else
	begin
		if @category='PIO'
		begin
			update tbVehicleXCode set 
					cStatus=u2.cStatus,
					sDesc=u2.sDesc,
					dtModify=getdate()
				from tbVehicleXCode u1
				inner join (
					select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
						z1.kVehicleTrim, z1.kVehicleTrimEquivalent, z1.kVehicleXCode, z1.kVehicleXCodeIntClr, z1.kVehicleXCodePackage
					from 
						(select min(t2.iRec) as rid, t2.cCode, t2.nLinkVehiceYear, 
						t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, coalesce(t5.iRec, 0) as kVehicleXCode, 
						coalesce(t6.iRec, 0) as kVehicleXCodeIntClr, t7.iRec as kVehicleXCodePackage
						FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage
							from tbVehicleXCodeForImport 
							group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage) t1
						inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
						inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
						inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
						left join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
						left join tbVehicleXCode t6 on t6.cTable='INTCLR' and t4.iRec=t6.kVehicleTrim and t3.iRec=t6.kVehicleTrimEquivalent and t2.cLinkVehicleXCodeIntClr=t6.cCode
						inner join tbVehicleXCode t7 on t7.cTable='PAK' and t4.iRec=t7.kVehicleTrim and t3.iRec=t7.kVehicleTrimEquivalent and t2.cLinkVehicleXCodePackage=t7.cCode
						group by t4.iRec, t3.iRec, t2.nLinkVehiceYear, t2.cCode, t5.iRec, t6.iRec, t7.iRec) z1
					inner join tbVehicleXCodeForImport t2 on z1.rid=t2.iRec
				) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode 
					and u1.kVehicleXCode=u2.kVehicleXCode and u1.kVehicleXCodeIntClr=u2.kVehicleXCodeIntClr and u1.kVehicleXCodePackage=u2.kVehicleXCodePackage
				where u1.cStatus<>u2.cStatus or u1.sDesc<>u2.sDesc;

			if @@ERROR=0
				update tbVehicleXCode set 
						cStatus='I',
						dtModify=getdate()
					from tbVehicleXCode u1
					left join (
						select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
							z1.kVehicleTrim, z1.kVehicleTrimEquivalent, z1.kVehicleXCode, z1.kVehicleXCodeIntClr, z1.kVehicleXCodePackage
						from 
							(select min(t2.iRec) as rid, t2.cCode, t2.nLinkVehiceYear, 
							t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, coalesce(t5.iRec, 0) as kVehicleXCode, 
							coalesce(t6.iRec, 0) as kVehicleXCodeIntClr, t7.iRec as kVehicleXCodePackage
							FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage
								from tbVehicleXCodeForImport 
								group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage) t1
							inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
							inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
							inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
							left join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
							left join tbVehicleXCode t6 on t6.cTable='INTCLR' and t4.iRec=t6.kVehicleTrim and t3.iRec=t6.kVehicleTrimEquivalent and t2.cLinkVehicleXCodeIntClr=t6.cCode
							inner join tbVehicleXCode t7 on t7.cTable='PAK' and t4.iRec=t7.kVehicleTrim and t3.iRec=t7.kVehicleTrimEquivalent and t2.cLinkVehicleXCodePackage=t7.cCode
							group by t4.iRec, t3.iRec, t2.nLinkVehiceYear, t2.cCode, t5.iRec, t6.iRec, t7.iRec) z1
						inner join tbVehicleXCodeForImport t2 on z1.rid=t2.iRec
					) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode 
						and u1.kVehicleXCode=u2.kVehicleXCode and u1.kVehicleXCodeIntClr=u2.kVehicleXCodeIntClr and u1.kVehicleXCodePackage=u2.kVehicleXCodePackage
					where u1.cTable=@category and u2.kVehicleTrim is null;

			if @@ERROR=0
				insert into tbVehicleXCode (cTable, cCode, cSAP, sDesc, kVehicleTrim, kVehicleTrimEquivalent, kVehicleXCode, kVehicleXCodeIntClr, kVehicleXCodePackage, nOrder, cStatus, dtModify)
					select u2.cTable, u2.cCode, u2.cSAP, u2.sDesc, u2.kVehicleTrim, u2.kVehicleTrimEquivalent, u2.kVehicleXCode, u2.kVehicleXCodeIntClr, u2.kVehicleXCodePackage, 
						u2.nOrder, u2.cStatus, getdate()
					from (
						select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
							z1.kVehicleTrim, z1.kVehicleTrimEquivalent, z1.kVehicleXCode, z1.kVehicleXCodeIntClr, z1.kVehicleXCodePackage
						from 
							(select min(t2.iRec) as rid, t2.cCode, t2.nLinkVehiceYear, 
							t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, coalesce(t5.iRec, 0) as kVehicleXCode, 
							coalesce(t6.iRec, 0) as kVehicleXCodeIntClr, t7.iRec as kVehicleXCodePackage
							FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage
								from tbVehicleXCodeForImport 
								group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode, cLinkVehicleXCodeIntClr, cLinkVehicleXCodePackage) t1
							inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
							inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
							inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
							left join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
							left join tbVehicleXCode t6 on t6.cTable='INTCLR' and t4.iRec=t6.kVehicleTrim and t3.iRec=t6.kVehicleTrimEquivalent and t2.cLinkVehicleXCodeIntClr=t6.cCode
							inner join tbVehicleXCode t7 on t7.cTable='PAK' and t4.iRec=t7.kVehicleTrim and t3.iRec=t7.kVehicleTrimEquivalent and t2.cLinkVehicleXCodePackage=t7.cCode
							group by t4.iRec, t3.iRec, t2.nLinkVehiceYear, t2.cCode, t5.iRec, t6.iRec, t7.iRec) z1
						inner join tbVehicleXCodeForImport t2 on z1.rid=t2.iRec
					) u2 
					left join tbVehicleXCode u1 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode 
						and u1.kVehicleXCode=u2.kVehicleXCode and u1.kVehicleXCodeIntClr=u2.kVehicleXCodeIntClr and u1.kVehicleXCodePackage=u2.kVehicleXCodePackage
					where u1.iRec is null;
		end

		else if @category='INTCLR'
		begin
			update tbVehicleXCode set 
					cStatus=u2.cStatus,
					sDesc=u2.sDesc,
					dtModify=getdate()
				from tbVehicleXCode u1
				inner join (
					select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
					t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, t5.iRec as kVehicleXCode
					FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode
						from tbVehicleXCodeForImport 
						group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode) t1
					inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
					inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
					inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
					inner join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
				) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode and u1.kVehicleXCode=u2.kVehicleXCode
				where u1.cStatus<>u2.cStatus or u1.sDesc<>u2.sDesc;

			if @@ERROR=0
				update tbVehicleXCode set 
						cStatus='I',
						dtModify=getdate()
					from tbVehicleXCode u1
					left join (
						select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
						t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, t5.iRec as kVehicleXCode
						FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode
							from tbVehicleXCodeForImport 
							group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode) t1
						inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
						inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
						inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
						inner join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
					) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode and u1.kVehicleXCode=u2.kVehicleXCode
					where u1.cTable=@category and u2.kVehicleTrim is null;

			if @@ERROR=0
				insert into tbVehicleXCode (cTable, cCode, cSAP, sDesc, kVehicleTrim, kVehicleTrimEquivalent, kVehicleXCode, nOrder, cStatus, dtModify)
					select u2.cTable, u2.cCode, u2.cSAP, u2.sDesc, u2.kVehicleTrim, u2.kVehicleTrimEquivalent, u2.kVehicleXCode, u2.nOrder, u2.cStatus, getdate()
					from (
						select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, 
						t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent, t5.iRec as kVehicleXCode
						FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode
							from tbVehicleXCodeForImport 
							group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim, cLinkVehicleXCode) t1
						inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
						inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
						inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
						inner join tbVehicleXCode t5 on t5.cTable='EXTCLR' and t4.iRec=t5.kVehicleTrim and t3.iRec=t5.kVehicleTrimEquivalent and t2.cLinkVehicleXCode=t5.cCode
					) u2 
					left join tbVehicleXCode u1 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode and u1.kVehicleXCode=u2.kVehicleXCode
					where u1.iRec is null;
		end

		else
		begin
			update tbVehicleXCode set 
					cStatus=u2.cStatus,
					sDesc=u2.sDesc,
					dtModify=getdate()
				from tbVehicleXCode u1
				inner join (
					select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent
					FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim
						from tbVehicleXCodeForImport 
						group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim) t1
					inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
					inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
					inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
				) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode
				where u1.cStatus<>u2.cStatus or u1.sDesc<>u2.sDesc;

			if @@ERROR=0
				update tbVehicleXCode set 
						cStatus='I',
						dtModify=getdate()
				from tbVehicleXCode u1
				left join (
					select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent
					FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim
						from tbVehicleXCodeForImport 
						group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim) t1
					inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
					inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
					inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
				) u2 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode
				where u1.cTable=@category and u2.kVehicleTrim is null;
    
			if @@ERROR=0
				insert into tbVehicleXCode (cTable, cCode, cSAP, sDesc, kVehicleTrim, kVehicleTrimEquivalent, nOrder, cStatus, dtModify)
					select u2.cTable, u2.cCode, u2.cSAP, u2.sDesc, u2.kVehicleTrim, u2.kVehicleTrimEquivalent, u2.nOrder, u2.cStatus, getdate()
					from (
						select t2.cTable, t2.cCode, t2.cSAP, t2.sDesc, t2.cLinkVehicleTrim, t2.nLinkVehiceYear, t2.nOrder, t2.cStatus, t4.iRec as kVehicleTrim, t3.iRec as kVehicleTrimEquivalent
						FROM (select min(iRec) as iRec, cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim
							from tbVehicleXCodeForImport 
							group by cCode, cSAP, nLinkVehiceYear, cLinkVehicleTrim) t1
						inner join tbVehicleXCodeForImport t2 on t1.iRec=t2.iRec
						inner join tbVehicleTrimEquivalent t3 on t1.cLinkVehicleTrim=t3.cCode
						inner join tbVehicleTrim t4 on t1.nLinkVehiceYear=t4.nYear and t3.kVehicleTrim=t4.iRec
					) u2 
					left join tbVehicleXCode u1 on u1.cTable=u2.cTable and u1.kVehicleTrim=u2.kVehicleTrim and u1.kVehicleTrimEquivalent=u2.kVehicleTrimEquivalent and u1.cCode=u2.cCode
					where u1.iRec is null;
		end
		set @@returnValue = @@ERROR;
	end

	return @@returnValue;
END
GO
/****** Object:  StoredProcedure [dbo].[spValidateDropshipYearModel]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Erik
-- Create date: 1/8/2019
-- Description:	Validate Dropship, Year, and Modelcode
-- Modified: 7/21/2020, Erik Mildner, Add isActive filter
-- Modified: 02/23/2021, Rohit Srivastava , HF#415 - Overriding the vehicle filter condition based on newly added Flag
-- Modified: 3/10/2021 - Rohit, HF#415 - Override the filter of (VehicleTrim - cStatus) based on MasterOverrideFlag. 
-- =============================================
CREATE PROCEDURE [dbo].[spValidateDropshipYearModel]
	@dropshipCode varchar(20),
	@modelYear varchar(4),
	@modelCode varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	declare @returnValue int=0;

	-- if modelcode not valid return error code
	begin
		--IF NOT EXISTS(SELECT nYear
		--			  FROM tbVehicleTrim
		--			  WHERE cStatus = 'A'
		--			  and cCode = @modelCode)
		
		IF NOT EXISTS ( 
		SELECT vT.nYear
		FROM tbVehicleTrim vT
		INNER JOIN tbincentive t9
		on vT.cModelCode = t9.cModelCode
        AND vT.nYear = t9.nModelYear
		AND vT.sModelName = t9.cModelName		
		--WHERE --vT.cStatus = 'A'
		--and cCode = @modelCode
		 WHERE 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
				WHEN ((vT.cCode = @modelCode) AND (vT.cStatus = 'A'))   THEN 'A'
				ELSE 'I' END ) 
		)
		begin
			select @returnValue = -4;
		end
	end
	-- if modelyear not valid return error code
	begin
		--IF NOT EXISTS(SELECT DISTINCT nYear AS [year]
		--			  FROM tbVehicleTrim
		--			  WHERE cStatus = 'A'
		--			  and @modelYear = nYear) 
		IF NOT EXISTS(
		SELECT DISTINCT vT.nYear AS [year]
		FROM tbVehicleTrim vT
		INNER JOIN tbincentive t9
		on vT.cModelCode = t9.cModelCode
        AND vT.nYear = t9.nModelYear
		WHERE vT.cStatus = 'A'
		--and @modelYear = nYear
		AND 'A'= (CASE WHEN t9.cMasterStatusOverride = 'A' THEN 'A' 
				WHEN vT.nYear = @modelYear  THEN 'A'
				ELSE 'I' END )
		) 
		begin
			select @returnValue = -3;
		end
	end
	-- if dropship not valid return error code
	begin
		IF NOT EXISTS(select 1
				  from tbDropship (NOLOCK) t1
				  where t1.cStatus = 'A'
				  and isActive = 1
				  and ccode = @dropshipCode) 
		begin
			select @returnValue = -2;
		end
	end

	if @@ERROR=0
		return @returnValue;
	else
		return -1;
END



GO
/****** Object:  StoredProcedure [dbo].[SSIS_spUpdate_DealerInfo]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 6/13/2014
-- Description:	Update Deal_Dealer table from HyundaiUSA,will be run after the Dealer master SSIS
-- Example: Exec [dbo].[SSIS_spUpdate_DealerInfo]
-- Modified: 8/31/2017 - Daniel Lee - Added Courtesy Dealer and lat. and long.
-- Modified: 10/16/2018, Erik Mildner, added insert tbDropshipWorkingHour
-- Modified: 10/29/2018, Erik Mildner, added update to cStatus flag for dealer
-- =============================================
CREATE PROCEDURE [dbo].[SSIS_spUpdate_DealerInfo]
	
AS
BEGIN

	CREATE TABLE #tbDropshipIds
	( 
		Action varchar(10),
		ID INT
	);

	CREATE TABLE #daysOfWeek 
	( ID INT );

	INSERT INTO #daysOfWeek
	VALUES(0), (1), (2), (3), (4), (5), (6);

	-- SET NOCOUNT ON added to prevent extra result sets from
	MERGE INTO dbo.tbDropship as TARGET_TABLE
	USING 
      (SELECT [DealerCode]
       ,[dealer_name]
      ,[address1]
      ,[address2]
      ,owner
       ,[city]
      ,[state]
      ,[mailzip]
      ,[zip]
      ,[sales_phone]
       ,[dealer_email]
      ,[salesdistrict]
      ,[servicedistrict]
       ,[partsdistrict]
       ,[ADI]
	   ,[CourtesyDealerFlag]
	   ,[latitude]
	   ,[longitude]
	   ,[locator]
   FROM [HyundaiUSA].[Dealer].[DealerInfo]
   WHERE typeCode = 'RD' 
 ) AS SOURCE_TABLE
 ON TARGET_TABLE.[cCode]=SOURCE_TABLE.[DealerCode]
 -----------------------------------------------------------------------------
  -- New Record
  WHEN NOT MATCHED BY TARGET AND SOURCE_TABLE.locator = 1 THEN
  INSERT (
           [cStatus]
           ,[kUser]
           ,[cCode]
           ,[sCompanyName]
           ,[sContactName]
           ,[sCompStreet]
           ,[sCompStreet2]
           ,[sCompCity]
           ,[cCompState]
           ,[sCompZip]
           ,[sPhone]
           ,[sPhone2]
           ,[kCreate]
           ,[dtCreate]
           ,[kModify]
           ,[dtModify]
           ,[DealerInd]
		   ,[courtesyDealerFlag]
		   ,[latitude]
		   ,[longitude])
    


      VALUES
      ('A'
       ,'0'
      ,[DealerCode]
       ,[dealer_name]
       ,owner
      ,[address1]
       ,[address2]
       ,[city]
      ,[state]
      ,[zip]
      ,[sales_phone] 
      ,null
      ,0
      ,getdate()
      ,0
      ,getdate()
      ,1
	  ,[CourtesyDealerFlag]
	  ,[latitude]
	  ,[longitude]

      )
   WHEN MATCHED THEN
   UPDATE
   SET      [cStatus]=CASE WHEN SOURCE_TABLE.[locator] = 1
						   THEN 'A'
						   ELSE 'X'
					  END
		   ,[sCompanyName]=[dealer_name]
           ,[sContactName]=owner
           ,[sCompStreet]=[address1]
           ,[sCompStreet2]=[address2]
           ,[sCompCity]=[city]
           ,[cCompState]=[state]
           ,[sCompZip]=[zip]
           ,[sPhone]=[sales_phone]
           ,[dtModify]=getdate()
		   ,[courtesyDealerFlag]=SOURCE_TABLE.[CourtesyDealerFlag]
		   ,[latitude]=SOURCE_TABLE.[latitude]
		   ,[longitude]=SOURCE_TABLE.[longitude]
	OUTPUT $action, INSERTED.IREC into #tbDropshipIds;

	INSERT INTO [tbDropshipWorkingHour]([kDropship], [dayOfWeek], [openTime], [closeTime])
	SELECT ds.iRec, dw.id, NULL, NULL from tbdropship ds
		cross join #daysOfWeek dw
	WHERE ds.iRec in (
						SELECT ID FROM #tbDropshipIds
						WHERE Action = 'INSERT'
					 )
	ORDER BY ds.iRec asc

END

GO
/****** Object:  StoredProcedure [mig].[spVehs]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Date: 10/03/2022
-- Author: Villar, Michael
-- Description: Migrate from HyundaiUSA.RAW to HMAFleet Permanent Tables
-- Return Record: 
--     Return Value = 0		  : Success
--     Return Value = 1001    : Migration Error
--     Return Value = 9999    : Unexpected Error
--
-- EXAMPLE:
--		exec [mig].[spVehs]
--
-- UPDATE:
--		10/24/2019 - MV - Updated Powertrain description; removed monroney description and added new columns
--		02/27/2020 - MV - Updated VehAccAvailable table to include VehPackageOption mapping (Had to drop [FK_VehAccAvailable_VehPackage])
--		10/15/2020 - MV - Removed IsVisibleDotCom from updating
--		01/26/2024_MV Included delete logic for VehPkgColorLookup merge
--		08/21/2024 - Swapnil U. Suryawanshi, HF-494, Runtime errors fixes
-- =============================================

CREATE PROCEDURE [mig].[spVehs]
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @Return INT = 9999;  --Unexpected Error

	BEGIN TRY  BEGIN TRAN
		
		-- migration: [dbo].[VehSeries]
		MERGE [dbo].[VehSeries] AS TARGET 
		USING (
			SELECT [MODEL_YEAR] AS ModelYear
				,CONCAT([MODEL_YEAR],[SERIES_CD]) AS YrSerCd
				,[SERIES_CD] AS SeriesCd
				,dbo.fnToProperCase([MODEL_GROUP_DESC])	AS SeriesNm
				,dbo.fnToProperCase([MODEL_GROUP_DESC]) AS SeriesDesc
				,CASE WHEN [MODEL_GROUP_DESC] IN ('G70','G80','G80 Ev','G90','Gv60','Gv70','Gv70 Ev','Gv80', 'Gv80 Coupe') THEN 1 ELSE 0 END AS IsGenesis
				,0 AS VehCategoryId
				,GETDATE() AS UpdatedDt
				,CASE WHEN [MODEL_YEAR] > (YEAR(GETDATE()) - 2) THEN 1 ELSE 0 END AS IsVisibleDotCom 
				,CASE WHEN [MODEL_YEAR] > (YEAR(GETDATE()) - 2) THEN 1 ELSE 0 END AS ShowOrder
				,0 AS IsVisibleFleet
				,0 AS IsVisibleCircle
				,0 AS IsVisibleCPO
				,0 AS IsVisibleDev
				,[MODEL_GROUP_CD] AS ModelGroupCode				
			FROM [HyundaiUSA].[dwh].[CTRL_EBIZ_MODEL_GROUP_InBound] 
		) AS SOURCE ON TARGET.[YrSerCd] = SOURCE.[YrSerCd]
			AND TARGET.[ModelGroupCode] = SOURCE.[ModelGroupCode]
		WHEN MATCHED THEN 
			UPDATE SET [SeriesNm]= SOURCE.[SeriesNm]
				,[SeriesDesc]= SOURCE.[SeriesDesc]
				,[UpdatedDt]= SOURCE.[UpdatedDt]
				,[IsVisibleDotCom]= SOURCE.[IsVisibleDotCom]
				,[IsGenesis] = SOURCE.[IsGenesis]
		WHEN NOT MATCHED BY TARGET THEN
				INSERT (
				[ModelYear]
				,[YrSerCd]
				,[SeriesCd]
				,[SeriesNm]
				,[SeriesDesc]
				,[IsGenesis]
				,[VehCategoryId]
				,[ShowOrder]
				,[UpdatedDt]
				,[IsVisibleDotCom]
				,[IsVisibleFleet]
				,[IsVisibleCircle]
				,[IsVisibleCPO]
				,[IsVisibleDev]
				,[ModelGroupCode]
			) VALUES  (
				SOURCE.[ModelYear]
				,SOURCE.[YrSerCd]
				,SOURCE.[SeriesCd]
				,SOURCE.[SeriesNm]
				,SOURCE.[SeriesDesc]
				,SOURCE.[IsGenesis]
				,SOURCE.[VehCategoryId]
				,SOURCE.[ShowOrder]
				,SOURCE.[UpdatedDt]
				,SOURCE.[IsVisibleDotCom]
				,SOURCE.[IsVisibleFleet]
				,SOURCE.[IsVisibleCircle]
				,SOURCE.[IsVisibleCPO]
				,SOURCE.[IsVisibleDev]
				,SOURCE.[ModelGroupCode]
			); 
							
		UPDATE [dbo].[VehSeries]
		SET SeriesDesc = 'Santa FE'
		WHERE SeriesNm = 'Santa Fe'
				
		UPDATE [dbo].[VehSeries]
		SET SeriesDesc = 'Elantra GT'
		WHERE SeriesNm = 'Elantra Gt'

		-- migration: [dbo].[VehSeries]
		MERGE [dbo].[VehSeries] AS TARGET  
		USING  (
			SELECT 
				CONCAT([ModelYear], [Series]) AS YrSerCd
				, MAX([Amount]) AS [Amount]
				, MAX([ValidTo]) AS [ValidTo]
				, MIN([ValidFrom]) AS [ValidFrom]
			FROM [HyundaiUSA].[Raw].[FreightAmount]
			GROUP BY CONCAT([ModelYear], [Series])
		) AS SOURCE ON TARGET.[YrSerCd] = SOURCE.[YrSerCd]
		WHEN MATCHED THEN   
			UPDATE SET 
		[FreightAmt] = SOURCE.[Amount],
		[FreightValidTo] = SOURCE.[ValidTo],
		[FreightValidFrom] = CASE WHEN (SOURCE.[ValidFrom] > GETDATE() OR SOURCE.[ValidFrom] IS NULL)
			THEN CAST(GETDATE() AS DATE) ELSE SOURCE.[ValidFrom] END;
		--[IsVisibleDotCom] = CASE WHEN (SOURCE.[ValidFrom] > GETDATE() OR SOURCE.[ValidFrom] IS NULL)
		--	THEN 0 ELSE 1 END;

		-- migration: [dbo].[VehModel]
		MERGE [dbo].[VehModel] AS TARGET  
		USING  (
			SELECT DISTINCT
				CAST(M.ModelYear AS INT) as ModelYear
				,M.YrSerCd
				,S.SeriesNm AS ModelDesc
				,M.SeriesCd
				,M.ModelGroupCode
				,S.ShowOrder
			FROM (
				SELECT DISTINCT
					[MODEL_YEAR] AS ModelYear
					,CONCAT([MODEL_YEAR], [SERIES_CD]) AS YrSerCd
					,M.[SERIES_CD] AS SeriesCd
					,M.[MODEL_GROUP_CD] AS ModelGroupCode				
				FROM [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] M 
			) M
			LEFT JOIN [dbo].[VehSeries] S on M.[ModelYear]=S.[ModelYear] and M.SeriesCd=S.SeriesCd AND M.ModelGroupCode = S.ModelGroupCode
			WHERE M.ModelGroupCode <> '' AND S.SeriesNm IS NOT NULL
		) AS SOURCE ON TARGET.[YrSerCd] = SOURCE.YrSerCd AND TARGET.[ModelGroupCode] = SOURCE.[ModelGroupCode]
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.ModelYear
				,[YrSerCd] = SOURCE.YrSerCd
				,[ModelDesc] = SOURCE.ModelDesc
				,[SeriesCd] = SOURCE.SeriesCd
				,[ModelGroupCode] = SOURCE.[ModelGroupCode]
				,[ShowOrder] = SOURCE.[ShowOrder]

		 WHEN NOT MATCHED BY SOURCE THEN  
			DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
				,[ModelDesc]
				,[YrSerCd]
				,[SeriesCd]
				,[ModelGroupCode]
				,[ShowOrder]
			)  
			VALUES 
			(
				SOURCE.ModelYear
				,COALESCE(SOURCE.ModelDesc, '')
				,SOURCE.YrSerCd
				,SOURCE.SeriesCd
				,SOURCE.ModelGroupCode
				,SOURCE.[ShowOrder]
			);

		-- migration: [dbo].[VehModelGroupModelCode]		
		MERGE [dbo].[VehModelGroupModelCode] AS TARGET  
		USING  (
			SELECT  CONCAT(MODEL_YEAR, SERIES_CD) AS YrSerCd
				,MODEL_YEAR AS ModelYear
				,MODEL_CD AS ModelCd	
				,CONCAT(MODEL_YEAR, MODEL_CD) AS YrModelCd
				,SERIES_CD AS SeriesCd
				,MODEL_SHORT_DESC AS ModelDescription
				,MODEL_SERIES_DESC SalesDescription
				,PLANT_CD AS Manufacturer
				,CASE PLANT_CD
					WHEN 'G' THEN 'KMMG'
					WHEN 'K' THEN 'KMC'
					WHEN 'M' THEN 'HMMA'
					WHEN 'U' THEN 'HMC'
					WHEN 'X' THEN 'KMM'
					ELSE 'HMC'
				END AS ManufacturerDesc
				,MODEL_GROUP_CD AS ModelGroupCode
			FROM [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] 
			WHERE LEN(PLANT_CD) = 1 AND LEN(SERIES_CD) = 1
		) AS SOURCE ON TARGET.YrModelCd = SOURCE.YrModelCd AND 
			TARGET.Manufacturer = SOURCE.Manufacturer AND 
			TARGET.ModelGroupCode = SOURCE.ModelGroupCode 
		WHEN MATCHED THEN   
			UPDATE SET YrSerCd = SOURCE.YrSerCd
				,ModelYear = SOURCE.ModelYear
				,ModelCd = SOURCE.ModelCd
				,SeriesCd = SOURCE.SeriesCd
				,ModelDescription = SOURCE.ModelDescription
				,SalesDescription = SOURCE.SalesDescription
				,ManufacturerDesc = SOURCE.ManufacturerDesc

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (YrSerCd
				,ModelYear
				,ModelCd
				,YrModelCd
				,SeriesCd
				,ModelDescription
				,SalesDescription
				,Manufacturer
				,ManufacturerDesc
				,ModelGroupCode
			) VALUES (SOURCE.YrSerCd
				,SOURCE.ModelYear
				,SOURCE.ModelCd
				,SOURCE.YrModelCd
				,SOURCE.SeriesCd
				,SOURCE.ModelDescription
				,SOURCE.SalesDescription
				,SOURCE.Manufacturer
				,SOURCE.ManufacturerDesc
				,SOURCE.ModelGroupCode
			);
		
		-- migration: [dbo].[VehTrim]
		-- SUCCESS
		MERGE [dbo].[VehTrim] AS TARGET  
		USING  (
			SELECT distinct t.[MODELYEAR]
				,CONCAT(CAST(t.[MODELYEAR] AS VARCHAR(4)), t.[SERIESCODE], t.[TRIMCODE]) as YrSertrimCd
				,CONCAT(CAST(t.[MODELYEAR] AS VARCHAR(4)), t.[SERIESCODE]) as YrSerCd
				,t.[SERIESCODE]
				,t.[TRIMCODE]
				,CASE WHEN t.[MODELYEAR] = 2020 AND t.[SERIESCODE] = '6' AND SUBSTRING(v.MODEL_CD, 7, 1) = 'T'
					THEN CONCAT(REPLACE(t.[TRIM_DESC], '"', ''), ' 2.0T')
					ELSE REPLACE(t.[TRIM_DESC], '"', '')
				END AS [TRIM_NM]
				,REPLACE(t.[TRIM_DESC], '"', '') AS [TRIM_DESC]
				,v.[MODEL_GROUP_CD]
				,SUBSTRING(v.MODEL_CD, 7, 1) AS [EngineCodeId]
			FROM [HyundaiUSA].[dwh].[TRIM_MASTER] t						
			INNER JOIN [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] v ON v.MODEL_YEAR = t.MODELYEAR AND V.SERIES_CD = t.SERIESCODE AND v.TRIM_CD = t.TRIMCODE
		) AS SOURCE ON TARGET.[YrSerTrimCd] = SOURCE.YrSertrimCd 
			AND TARGET.ModelGroupCode = SOURCE.[MODEL_GROUP_CD] 
			AND TARGET.EngineCodeId = SOURCE.EngineCodeId 
		WHEN MATCHED THEN   
			UPDATE SET 
				ModelYear = SOURCE.MODELYEAR
				,YrSerCd = SOURCE.YrSerCd
				,SeriesCd = SOURCE.SERIESCODE
				,TrimCd = SOURCE.TRIMCODE
				,TrimNm = SOURCE.TRIM_NM
				,TrimDesc = SOURCE.TRIM_DESC
				,UpdatedDt = GETDATE()
				
		 --WHEN NOT MATCHED BY SOURCE THEN  
			--DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				ModelYear
				,YrSerTrimCd
				,YrSerCd
				,SeriesCd
				,TrimCd
				,TrimNm
				,TrimDesc
				,EngineCodeId
				,ModelGroupCode
				,CreateDt
				,UpdatedDt
			)  
			VALUES 
			(
				SOURCE.MODELYEAR
				,SOURCE.YrSerTrimCd
				,SOURCE.YrSerCd
				,SOURCE.SERIESCODE
				,SOURCE.TRIMCODE
				,SOURCE.TRIM_NM
				,SOURCE.TRIM_DESC
				,SOURCE.EngineCodeId
				,SOURCE.MODEL_GROUP_CD
				,GETDATE()
				,GETDATE()
			);

		-- migration: [dbo].[VehPowertrain]
		-- SUCCESS
		
		TRUNCATE TABLE [dbo].[VehMonroney];
		TRUNCATE TABLE [dbo].[VehAccAvailable];
		DELETE [dbo].[VehPackage];

		MERGE [dbo].[VehPowertrain] AS TARGET  
		USING  ( 
			SELECT [ModelYear],
				[YrModelCd],
				[YrSerCd],
				[YrSerTrimCd],
				[ModelCode],
				[PowertrainCd],
				EngineCodeId,
				DrivetrainCodeId,
				[S4SERI],
				[S4TRIM],
				[PwrtrainNm],
				[MSRP],
				[MpgCity],
				[MpgHighway] ,
				[Horsepower],
				[ValidFrom],
				[ValidTo],
				ModelGroupCd,
				CONCAT(EngineDesc, ' ', TransmissionDesc, ' Transmission ', DrivetrainDesc) AS [PwrtrainDesc],
				TransmissionDesc,
				DrivetrainDesc,
				EngineDesc,
				GETDATE() AS [UpdatedDt],
				1 AS [DisplayFlag]
			FROM (
				SELECT DISTINCT
					RV.MODEL_YEAR AS ModelYear
					,CONCAT(RV.MODEL_YEAR, RV.MODEL_CD) AS YrModelCd
					,CONCAT(RV.MODEL_YEAR, RV.SERIES_CD) AS YrSerCd
					,CONCAT(RV.MODEL_YEAR, RV.SERIES_CD, RV.[TRIM_CD]) AS YrSerTrimCd
					,RV.MODEL_CD AS [ModelCode]
					,RV.TRANSMISSION_CD AS PowertrainCd
					,RV.DRIVETRAIN_CD AS DrivetrainCodeId
					,RV.ENGINE_TYPE_CD AS EngineCodeId
					,RV.SERIES_CD AS [S4SERI]
					,RV.[TRIM_CD] AS [S4TRIM]
					,RV.MODEL_SHORT_DESC AS PwrtrainNm
					,RV.MODEL_GROUP_CD AS ModelGroupCd
					--,VP.PowertrainDesc AS PwrtrainDesc					
					,dbo.fnToProperCase(CASE  
						WHEN RV.TRANSMISSION_DESC = 'AUTO' THEN 'AUTOMATIC'
						ELSE RV.TRANSMISSION_DESC END					
					) AS TransmissionDesc
					,CASE RV.DRIVETRAIN_DESC
						WHEN 'FRONT WHEEL DRIVE' THEN 'FWD'
						WHEN 'ALL WHEEL DRIVE' THEN 'AWD'
						WHEN 'REAR WHEEL DRIVE' THEN 'RWD'
					END AS DrivetrainDesc
					,COALESCE(NULLIF(RV.ENGINE_DESC,'UNKNOWN'), '') AS EngineDesc
					,M.[Amount] AS [MSRP]
					,RV.[CITY_MPG_RATING] AS MpgCity
					,RV.[HIGHWAY_MPG_RATING] AS MpgHighway
					,RV.[HORSEPOWER] AS Horsepower
					,M.[ValidFrom]
					,M.[ValidTo]
					,ROW_NUMBER() OVER (PARTITION by CONCAT(RV.MODEL_YEAR, RV.MODEL_CD) 
						ORDER BY CONCAT(RV.MODEL_YEAR, RV.MODEL_CD), M.[Amount] ASC) AS ROW_NUMBER
				FROM [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] RV					
				--INNER JOIN (SELECT DISTINCT RV.ModelCode
				--			,CASE 
				--				WHEN MT.MonroneyText LIKE '%w/%' THEN CONCAT(RTRIM(RV.S4TRMD),' ', SUBSTRING(MT.MonroneyText, PATINDEX('_-speed%Transmission%', MT.MonroneyText), CHARINDEX(' w/',MT.MonroneyText))) 
				--				WHEN MT.MonroneyText LIKE '%with%' THEN CONCAT(RTRIM(RV.S4TRMD),' ', SUBSTRING(MT.MonroneyText, PATINDEX('_-speed%Transmission%', MT.MonroneyText), CHARINDEX(' with',MT.MonroneyText)))
				--				ELSE CONCAT(RTRIM([S4TRMD]),' ', RTRIM([EngineDesc]), ' ', MT.MonroneyText)
				--			END AS PowertrainDesc 
				--			FROM [HyundaiUSA].[Raw].[VWMCMP] RV
				--			LEFT JOIN [HyundaiUSA].[dwh].[MonroneyText] MT 
				--				CROSS APPLY HMAFleet.dbo.fnPubSplit(MT.[ModelCode], ',') VPM ON 
				--					CONCAT(RV.[S4CTNE], RV.[S4YRNE]) = MT.ModelYear
				--					AND RV.[ModelCode] = VPM.Value AND MT.MonroneyTextGroup = 'PTT' AND MT.MonroneyText like '%speed%transmission%') VP ON VP.ModelCode = RV.MODEL_CD			
				INNER JOIN (				
					SELECT DISTINCT M1.MODEL_CD, M1.[Model_Year],
						COALESCE(M2.[Amount], 999999) AS [Amount],
						COALESCE(M2.[ValidFrom], GETDATE()-100) AS [ValidFrom],
						COALESCE(M2.[ValidTo], CAST('12/31/9999' as date)) AS [ValidTo]
					FROM [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] M1
					LEFT JOIN [HyundaiUSA].[Raw].[ModelCodeMSRP] M2 
					ON CONCAT(M2.Series,M2.[ModelCode]) = M1.MODEL_CD AND M2.[ModelYear] = M1.MODEL_YEAR 
						AND M2.[PS] = 'N2' AND M2.ReSt = '' AND M2.CnTy = 'ZM01' AND M2.ValidTo > GETDATE() AND M2.ValidFrom < GETDATE()
				) M ON 
					M.MODEL_CD = RV.MODEL_CD AND M.[Model_Year] = RV.MODEL_YEAR 
				) AS ROW
			WHERE ROW_NUMBER = 1 AND ROW.YrSerTrimCd IN (SELECT YrSerTrimCd FROM dbo.vehTrim)
				AND ModelYear > 2017 --AND MSRP IS NOT NULL
		) AS SOURCE ON TARGET.[YrModelCd] = SOURCE.YrModelCd AND TARGET.ModelGroupCode = SOURCE.ModelGroupCd
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.ModelYear
				,[YrModelCd] = SOURCE.YrModelCd
				,[YrSerCd] = SOURCE.YrSerCd
				,[YrSerTrimCd] = SOURCE.YrSerTrimCd
				,[EngineCodeId] = SOURCE.[EngineCodeId]
				,[DrivetrainCodeId] = SOURCE.[DrivetrainCodeId]
				,[SAPModelCd] = SOURCE.[ModelCode]
				,[PowertrainCd] = SOURCE.PowertrainCd
				,[SeriesCd] = SOURCE.[S4SERI]
				,[TrimCd] = SOURCE.[S4TRIM]
				,[PwrtrainNm] = SOURCE.PwrtrainNm
				,[PwrtrainDesc] = SOURCE.PwrtrainDesc
				,[TransmissionDesc] = SOURCE.TransmissionDesc
				,[DrivetrainDesc] = SOURCE.DrivetrainDesc
				,[EngineDesc] = SOURCE.EngineDesc
				,[MSRP] = SOURCE.MSRP
				,[MpgCity] = SOURCE.MpgCity
				,[MpgHighway] = SOURCE.MpgHighway
				,[Horsepower] = SOURCE.Horsepower
				,[InvoicePrice] = SOURCE.MSRP
				,[ValidFrom] = SOURCE.ValidFrom
				,[ValidTo] = SOURCE.ValidTo
				,[UpdatedDt] = CASE WHEN SOURCE.UpdatedDt = NULL THEN GETDATE() ELSE SOURCE.UpdatedDt END
				,[IsVisibleDotcom] = CASE WHEN SOURCE.[DisplayFlag] = NULL THEN '0' ELSE '1' END 

		--WHEN NOT MATCHED BY SOURCE THEN  
		--DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				 [ModelYear]
				,[YrModelCd]
				,[YrSerCd]
				,[YrSerTrimCd]
				,[EngineCodeId]
				,[SAPModelCd]
				,[PowertrainCd]
				,[SeriesCd]
				,[TrimCd]
				,[PwrtrainNm]
				,[PwrtrainDesc]
				,[MSRP]
				,[MpgCity]
				,[MpgHighway] 
				,[Horsepower] 
				,[InvoicePrice]
				,[ValidFrom]
				,[ValidTo]
				,[UpdatedDt]
				,[IsVisibleDotcom]
				,[CreateDt]
				,ModelGroupCode
				,[DrivetrainCodeId] 
				,[TransmissionDesc] 
				,[DrivetrainDesc] 
				,[EngineDesc] 

			)  
			VALUES 
			(
				SOURCE.ModelYear
				,SOURCE.YrModelCd
				,SOURCE.YrSerCd
				,SOURCE.YrSerTrimCd
				,SOURCE.[EngineCodeId]
				,SOURCE.[ModelCode]
				,SOURCE.PowertrainCd
				,SOURCE.[S4SERI]
				,SOURCE.[S4TRIM]
				,SOURCE.PwrtrainNm
				,SOURCE.PwrtrainDesc
				,SOURCE.MSRP
				,SOURCE.[MpgCity]
				,SOURCE.[MpgHighway] 
				,SOURCE.[Horsepower] 
				,SOURCE.MSRP
				,SOURCE.ValidFrom
				,SOURCE.ValidTo
				,CASE WHEN SOURCE.UpdatedDt = NULL THEN GETDATE() ELSE SOURCE.UpdatedDt END
				,CASE WHEN SOURCE.DisplayFlag = NULL THEN '0' ELSE '1' END 
				,GETDATE()
				,SOURCE.ModelGroupCd
				,SOURCE.DrivetrainCodeId
				,SOURCE.TransmissionDesc
				,SOURCE.DrivetrainDesc
				,SOURCE.EngineDesc
			);

		-- migration: [dbo].[VehMonroney]
		-- SUCCESS
		MERGE [dbo].[VehMonroney] AS TARGET  
		USING  (
			SELECT DISTINCT
				[Client] as [VehMonroneyId]
				,CAST(M.[ModelYear] AS VARCHAR(4)) as [ModelYear]
				,M.[ModelCode] as [SAPModelCd]
				,CONCAT(CAST(M.[ModelYear] AS VARCHAR(4)), M.[ModelCode]) as [YrModelCd]
				,[MonroneyTextGroup] as [ShowGroup]
				,[ModelSequence] as [ShowOrder]
				,[MonroneyText] as [MonroneyText]
				,[Format] as [IsBolded]
				,[Bullet] as [IsBulleted]
				,[Included] as [IsDisplayed]
				,[Createdon] as [CreateDt]
				,[ChangedOn] as [UpdatedDt]
			FROM [HyundaiUSA].[DWH].[MonroneyText] M
			INNER JOIN [dbo].[VehPowertrain] VP ON CONCAT(CAST(M.[ModelYear] AS VARCHAR(4)), M.[ModelCode]) = VP.YrModelCd
		) AS SOURCE ON TARGET.[YrModelCd] = SOURCE.[YrModelCd]
			AND TARGET.[ShowGroup] = SOURCE.[ShowGroup]
			AND TARGET.[ShowOrder] = SOURCE.[ShowOrder]
		WHEN MATCHED THEN   
			UPDATE SET 
				[MonroneyText] = SOURCE.[MonroneyText]
				,[IsBolded] = SOURCE.[IsBolded]
				,[IsBulleted] = SOURCE.[IsBulleted]
				,[IsDisplayed] = SOURCE.[IsDisplayed]
				,[UpdatedDt] = SOURCE.[UpdatedDt]
				
		-- WHEN NOT MATCHED BY SOURCE THEN  
		--	DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (
				[VehMonroneyId]
				,[ModelYear]
				,[SAPModelCd]
				,[YrModelCd]
				,[ShowGroup]
				,[ShowOrder]
				,[MonroneyText]
				,[IsBolded]
				,[IsBulleted]
				,[IsDisplayed]
				,[CreateDt]
				,[UpdatedDt]
			)
			VALUES (
				SOURCE.[VehMonroneyId]
				,SOURCE.[ModelYear]
				,SOURCE.[SAPModelCd]
				,SOURCE.[YrModelCd]
				,SOURCE.[ShowGroup]
				,SOURCE.[ShowOrder]
				,SOURCE.[MonroneyText]
				,SOURCE.[IsBolded]
				,SOURCE.[IsBulleted]
				,SOURCE.[IsDisplayed]
				,SOURCE.[CreateDt]
				,SOURCE.[UpdatedDt]
			);

		-- migration: [dbo].[VehPackage]
		-- SUCCESS
		-- TRUNCATE TABLE [dbo].[VehAccAvailable]
		MERGE [dbo].[VehPackage] AS TARGET  
		USING  (
			SELECT 
				DISTINCT
				[Year]				
				,CONCAT(CAST([Year] AS VARCHAR(4)), ROW.[ModelCode], [AccGroupCode]) AS YrModelPkgCd
				,CONCAT(CAST([Year] AS VARCHAR(4)), ROW.[Series]) AS YrSerCd
				,CONCAT(CAST([Year] AS VARCHAR(4)), ROW.[ModelCode]) AS YrModelCd
				,CONCAT(CAST([Year] AS VARCHAR(4)), ROW.[Series], [AccGroupCode]) AS YrSerPkgCd
				,ROW.[ModelCode]
				,[AccGroupCode] as [PackageCd]
				,[Description] AS [PackageName]
				,ROW.[Series]
				,[Trim]
				,A.[Amount] AS [MSRP]
				,CASE WHEN [Description] LIKE '%option%' THEN 1 ELSE 0 END AS [IsOption]
			FROM
			(SELECT 
				[Year]				
				,[ModelCode]
				,CASE [AccGroupCode] 
					WHEN 'NP' THEN 'P1'
					WHEN 'T2' THEN 'P12'
					ELSE [AccGroupCode]
				 END AS [AccGroupCode]
				,[Description]
				,[Series]
				,[Trim]
				FROM [HyundaiUSA].[Raw].[VPKGDS] VK
				INNER JOIN dbo.VehPowertrain VP on VK.[ModelCode]=VP.[SAPModelCd] AND VK.[Year]=VP.[ModelYear]
				) AS ROW
			LEFT JOIN (
				SELECT DISTINCT * FROM 
				(SELECT A.ACCESSORYCODE, A.MODELYEAR, A.SERIESCODE, AM.Amount, AM.MODEL_GROUP_CD AS 'ModelGroupCd', CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) AS SAPModelCd ,ROW_NUMBER() OVER (PARTITION BY (CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) + [ACCESSORYCODE])
						ORDER BY (CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) + [ACCESSORYCODE])) AS ROW_NUMBER						
				FROM [HyundaiUSA].[dwh].[ACCESSORY_MASTER] A
				INNER JOIN (
					SELECT DISTINCT AM1.[ModelYear], AM1.[Series], AM1.MODEL_GROUP_CD, AM1.[Variant], COALESCE(AM2.Amount, AM1.Amount) AS Amount FROM [HyundaiUSA].[Raw].[AccessoryMSRP] AM1
					LEFT JOIN [HyundaiUSA].[Raw].[AccessoryMSRP] AM2 ON 
						AM2.[ModelYear] = AM1.[ModelYear] AND
						AM2.[Series] = AM1.[Series] AND
						AM2.[Variant] = AM1.[Variant] AND
						AM2.Right_Right_CnTy = 'ZP01'
					WHERE AM1.Right_Right_CnTy IN ('ZP01','ZO01')
				) AM ON A.[MODELYEAR] = AM.[ModelYear] AND A.[SERIESCODE] = AM.[Series] 
					AND A.ACCESSORYCODE = AM.[Variant] 
				WHERE A.[MODELYEAR] > 2011 AND [IS_ACCESSORY_PACKAGE] = 1) X WHERE X.ROW_NUMBER = 1
			) A ON A.ACCESSORYCODE = [AccGroupCode] AND A.MODELYEAR = [Year] AND A.SERIESCODE = [Series]
				AND A.SAPModelCd = ModelCode
		) AS SOURCE ON TARGET.YrModelPkgCd = SOURCE.YrModelPkgCd
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.[Year]
				,[YrModelPkgCd] = SOURCE.YrModelPkgCd
				,[YrSerCd] = SOURCE.YrSerCd
				,[YrModelCd] = SOURCE.YrModelCd
				,[YrSerPkgCd] = SOURCE.YrSerPkgCd
				,[SAPModelCd] = SOURCE.[ModelCode]
				,[PackageCd] = SOURCE.PackageCd
				,[PackageNm] = SOURCE.PackageName
				,[SeriesCd] = SOURCE.[Series]
				,[TrimCd] = SOURCE.[Trim]
				,[MSRP] = SOURCE.[MSRP]
				,[IsOption] = SOURCE.[IsOption]			
		-- WHEN NOT MATCHED BY SOURCE THEN  
		--DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
				,[YrModelPkgCd]
				,[YrSerCd]
				,[YrModelCd]
				,[YrSerPkgCd]
				,[SAPModelCd]
				,[PackageCd]
				,[PackageNm]
				,[SeriesCd]
				,[TrimCd]
				,[MSRP]
				,[IsOption]

			)  
			VALUES 
			(
				SOURCE.[Year]
				  ,SOURCE.YrModelPkgCd
				  ,SOURCE.YrSerCd
				  ,SOURCE.YrModelCd
				  ,SOURCE.YrSerPkgCd
				  ,SOURCE.[ModelCode]
				  ,SOURCE.PackageCd
				  ,SOURCE.PackageName
				  ,SOURCE.[Series]
				  ,SOURCE.[Trim]
				  ,SOURCE.[MSRP]
				  ,SOURCE.[IsOption]

			);

		-- migration: [dbo].[VehAccessory]
		MERGE [dbo].[VehAccessory] AS TARGET  
		USING  (
			SELECT * FROM (
				SELECT DISTINCT
					A.[MODELYEAR]
					,CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE], [ENGINETYPECODE], [MODELEMISSIONCODE]) AS ModelCode
					,(CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE])) AS YrModelCd
					,(CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) + [ACCESSORYCODE]) AS YrModelAccCd
					,[ACCESSORYCODE]
					,CASE WHEN LEFT([ACCESSORY_DESC], 1) = '*' THEN SUBSTRING([ACCESSORY_DESC], 2, LEN([ACCESSORY_DESC])) ELSE [ACCESSORY_DESC] END AS ACCESSORY_DESC
					,CASE WHEN LEFT([MONRONEY_DESC], 1) = '*' THEN SUBSTRING([MONRONEY_DESC], 2, LEN([MONRONEY_DESC])) ELSE [MONRONEY_DESC] END AS MONRONEY_DESC
					,[SERIESCODE]
					,[TRIMCODE]
					,[ValidFrom]
					,[ValidTo]
					,[IS_ACCESSORY_PACKAGE]
					,[Amount] AS MSRP
					,A.[REC_CREATE_DATE]
					,A.[REC_UPDATE_DATE]	
					,ROW_NUMBER() OVER (PARTITION BY (CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) + [ACCESSORYCODE])
						ORDER BY (CAST(A.[ModelYear] AS VARCHAR(4)) + CONCAT([SERIESCODE], [FAMILYCODE], [DOORCODE], [TRIMCODE], [TRANSCODE], [DRIVETRAINCODE]+[ENGINETYPECODE], [MODELEMISSIONCODE]) + [ACCESSORYCODE])) AS ROW_NUMBER						
				FROM [HyundaiUSA].[dwh].[ACCESSORY_MASTER] A
				LEFT JOIN [HyundaiUSA].[Raw].[ModelCodeMaster_DWHInBound] MC ON MC.MODEL_CD = CONCAT(A.[SERIESCODE], A.[FAMILYCODE], A.[DOORCODE], A.[TRIMCODE], A.[TRANSCODE], A.[DRIVETRAINCODE], A.[ENGINETYPECODE], A.[MODELEMISSIONCODE])
				LEFT JOIN [HyundaiUSA].[Raw].[AccessoryMSRP] AM ON A.[MODELYEAR] = AM.[ModelYear] 
					AND A.[SERIESCODE] = AM.[Series] 
					AND COALESCE(AM.[MODEL_GROUP_CD], MC.[MODEL_GROUP_CD], '') = COALESCE(MC.[MODEL_GROUP_CD],'')
					AND A.ACCESSORYCODE = AM.Variant 
					AND AM.Right_Right_CnTy = 'ZP01'
				WHERE A.[MODELYEAR] > 2011 AND [ACCESSORYCODE] NOT IN ('PD') AND [ACCESSORYCODE] NOT LIKE ('P%') AND [ACCESSORY_DESC]<>'*') AS ROW
			WHERE ROW_NUMBER = 1
		) AS SOURCE ON TARGET.[YrModelAccCd] = SOURCE.YrModelAccCd
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.[MODELYEAR]
				,[SAPModelCd] = SOURCE.ModelCode
				,[YrModelCd]= SOURCE.YrModelCd
				,[YrModelAccCd]= SOURCE.YrModelAccCd
				,[AccessoryCd] = SOURCE.[ACCESSORYCODE]
				,[AccessoryNm] = SOURCE.[ACCESSORY_DESC]
				,[AccessoryDesc] = SOURCE.[MONRONEY_DESC]
				,[SeriesCd] = SOURCE.[SERIESCODE]
				,[TrimCd] = SOURCE.[TRIMCODE]
				,[EffFromDt] = SOURCE.[ValidFrom]
				,[EffToDt] =  SOURCE.[ValidTo]
				,[IsPackage] = SOURCE.[IS_ACCESSORY_PACKAGE]
				,[MSRP] = SOURCE.[MSRP]
				,[CreateDt] = SOURCE.[REC_CREATE_DATE]
				,[UpdatedDt] = SOURCE.[REC_UPDATE_DATE]


		-- WHEN NOT MATCHED BY SOURCE THEN  
		--	DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
				,[YrModelCd]
				,[YrModelAccCd]
				,[SAPModelCd]
				,[AccessoryCd]
				,[AccessoryNm]
				,[AccessoryDesc]
				,[SeriesCd]
				,[TrimCd]
				,[EffFromDt]
				,[EffToDt]
				,[IsPackage]
				,[MSRP]
				,[CreateDt]
				,[UpdatedDt]
			)  
			VALUES 
			(
					SOURCE.[MODELYEAR]
					,(LTRIM(STR([MODELYEAR])) + ModelCode) --[YrModelCd]
					,(LTRIM(STR([MODELYEAR])) + ModelCode + [ACCESSORYCODE]) --[YrModelAccCd]
					,SOURCE.ModelCode
					,SOURCE.[ACCESSORYCODE]
					,SOURCE.[ACCESSORY_DESC]
					,SOURCE.[MONRONEY_DESC]
					,SOURCE.[SERIESCODE]
					,SOURCE.[TRIMCODE]
					--,SOURCE.[ValidFrom]
					--,SOURCE.[ValidTo]
					,NULL
					,NULL
					,SOURCE.[IS_ACCESSORY_PACKAGE]
					,SOURCE.[MSRP]
					,SOURCE.[REC_CREATE_DATE]
					,SOURCE.[REC_UPDATE_DATE]
			);

		/*
			truncate table [dbo].[VehAccAvailable]
		*/
		-- migration: [dbo].[VehAccAvailable]
		-- SUCCESS:
		MERGE [dbo].[VehAccAvailable] AS TARGET  
			USING  (
				SELECT 
					A.[MODELYEAR]
					,CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), A.[MODELCODE], A.[ACCESSORYCODE]) AS YrModelAccCd
					,A.[MODELCODE]
					,CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), A.[MODELCODE]) as YrModelCd
					,CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), A.[MODELCODE], A.[PackageCd]) AS YrModelPkgCd
					,A.[PackageCd]
					,A.[ACCESSORYCODE]
					,A.[EXTERIORCOLORCODE]
					,A.[INTERIORCOLORCODE]
					,A.[ACCESSORYTYPECODE]
					,A.[IS_AVAILABLE_FOR_ALLOCATION]
				FROM (
					SELECT DISTINCT
						[MODELYEAR]
						,[MODELCODE]
						,CONCAT('P', CAST(CAST(CASE [ACCESSORYGROUPCODE]
							WHEN '1V' THEN '12'
							ELSE [ACCESSORYGROUPCODE] 
						END AS INT) as VARCHAR(2))) as [PackageCd]
						,[ACCESSORYCODE]
						,[ACCESSORYTYPECODE]
						,[EXTERIORCOLORCODE]
						,[INTERIORCOLORCODE]
						,[IS_AVAILABLE_FOR_ALLOCATION]	
					FROM [HyundaiUSA].[dwh].[ACCESSORY_AVAIL_RULE] 
					WHERE [ModelYear]>=2015 AND [ACCESSORYCODE] NOT IN ('PD')) A
				INNER JOIN [dbo].[VehAccessory] VA ON CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), [MODELCODE], [ACCESSORYCODE]) = VA.YrModelAccCd
				--INNER JOIN [dbo].[VehPackage] VP ON CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), A.[MODELCODE], A.[PackageCd]) = VP.YrModelPkgCd
				INNER JOIN (
						SELECT YrModelPkgCd FROM [dbo].[VehPackage] WHERE YrModelPkgCd NOT IN (
							SELECT CONCAT(ModelYear,SapModelCd,
											CASE WHEN AccessoryGroup = 10 
												THEN CONCAT('P', AccessoryGroup) 
												ELSE CONCAT('P', REPLACE(AccessoryGroup, '0', ''))
											END) FROM [dbo].[VehPackageOption]
						)
						UNION
						SELECT  CONCAT(ModelYear,SapModelCd,
											CASE WHEN AccessoryGroup = 10 
												THEN CONCAT('P', AccessoryGroup) 
												ELSE CONCAT('P', REPLACE(AccessoryGroup, '0', ''))
											END) FROM [dbo].[VehPackageOption]	
					) VP ON CONCAT(CAST(A.[ModelYear] AS VARCHAR(4)), A.[MODELCODE], A.[PackageCd]) = VP.YrModelPkgCd
			) AS SOURCE ON TARGET.[YrModelPkgCd] = SOURCE.[YrModelPkgCd] 
				AND TARGET.[AccessoryCd] = SOURCE.[ACCESSORYCODE]
				AND TARGET.[IntColorCd] = SOURCE.[INTERIORCOLORCODE]
			WHEN MATCHED THEN   
				UPDATE SET 
					[ModelYear] = SOURCE.[ModelYear]

			-- WHEN NOT MATCHED BY SOURCE THEN  
			--	DELETE 

			WHEN NOT MATCHED BY TARGET THEN  
				INSERT (
					[ModelYear]
					,[YrModelAccCd]
					,[SAPModelCd]
					,[YrModelCd]
					,[YrModelPkgCd]
					,[PackageCd]
					,[AccessoryCd]
					,[ExtColorCd]
					,[IntColorCd]
					,[FactoryOrPort]
					,[IsAvailable]
				)  
				VALUES
				(
					SOURCE.[MODELYEAR]
					,SOURCE.YrModelAccCd
					,SOURCE.[MODELCODE]
					,SOURCE.YrModelCd
					,SOURCE.YrModelPkgCd
					,SOURCE.[PackageCd]
					,SOURCE.[ACCESSORYCODE]
					,SOURCE.[EXTERIORCOLORCODE]
					,SOURCE.[INTERIORCOLORCODE]
					,SOURCE.[ACCESSORYTYPECODE]
					,SOURCE.[IS_AVAILABLE_FOR_ALLOCATION]
				);


		-- migration: [dbo].[VehCategory]
		-- Missed - Mapped on 03122018
		MERGE [dbo].[VehCategory] AS TARGET  
		USING  (
			SELECT DISTINCT
			     t1.CategoryNm
				,t1.ModelCode AS SAPModelCd
				,CAST(t1.ModelYear AS INT) as ModelYear
				,t1.YrSerCd
				,t1.SeriesCd
			FROM (
				SELECT DISTINCT
					CAST(CONCAT(t1.[S4CTNE], t1.[S4YRNE]) AS VARCHAR(4)) AS ModelYear
					,CONCAT(CAST(CONCAT(t1.[S4CTNE], t1.[S4YRNE]) AS VARCHAR(5)), [S4SERI]) AS YrSerCd
					,t1.[S4seri] AS SeriesCd
					,CAST(CONCAT(t1.[S4DORD], '') AS VARCHAR(10)) AS CategoryNm
					,ModelCode
				FROM [HyundaiUSA].[Raw].[VWMCMP] t1
				WHERE IsNumeric(CONCAT(t1.[S4CTNE], t1.[S4YRNE])) = 1
			) t1
			LEFT JOIN [dbo].[VehCategory] t2 on t1.[ModelYear] = t2.[ModelYear] and t1.SeriesCd = t2.SeriesCd

		) AS SOURCE ON TARGET.[YrSerCd] = SOURCE.YrSerCd AND TARGET.[SapModelCd] = SOURCE.SAPModelCd
		WHEN MATCHED THEN   
			UPDATE SET 
				 [CategoryNm] = SOURCE.CategoryNm
				,[SAPModelCd] = SOURCE.SAPModelCd
				,[ModelYear] = SOURCE.ModelYear
				,[YrSerCd] = SOURCE.YrSerCd
				,[SeriesCd] = SOURCE.SeriesCd
				,[UpdatedDt] = GETDATE()			

		-- WHEN NOT MATCHED BY SOURCE THEN  
		--	DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				 [CategoryNm]
				,[SAPModelCd]
				,[ModelYear]
				,[YrSerCd]
				,[SeriesCd]
			)  
			VALUES 
			(
				SOURCE.CategoryNm
				,SOURCE.SAPModelCd
				,SOURCE.ModelYear
				,SOURCE.YrSerCd
				,SOURCE.SeriesCd
			);
		


		-- migration: [dbo].[VehColorExt]
		-- SUCCESS
		MERGE [dbo].[VehColorExt] AS TARGET  
			USING  (
				SELECT * from (
					SELECT DISTINCT
						[ModelYear]
						,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [Series]) AS YrSerCd
						,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode]) AS YrModelCd
						,[ModelCode]
						,[ExteriorColorCode]
						,[dbo].[RemoveSpecialChars]([ExteriorColorShortDesc]) [ExteriorColorShortDesc]
						,(STUFF((
							SELECT ' ' + Value
							FROM [dbo].[fnPubSplit] (REPLACE([ExteriorColorLongDesc],'W/','W'), '')
							FOR XML PATH('')
							), 1, 1, '')
						) AS [ExteriorColorLongDesc]
						--,REPLACE([dbo].[RemoveSpecialChars]([ExteriorColorLongDesc]), '/', ' ') [ExteriorColorLongDesc]
						,[Series]
						,[IsDeleted]
						,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [ExteriorColorCode]) AS YrModelExtCd
						,RANK() OVER (PARTITION BY CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [ExteriorColorCode])
							ORDER BY IsDeleted ASC, [ExteriorColorShortDesc] DESC, [ExteriorColorLongDesc] DESC) AS 'Rank'
					FROM [HyundaiUSA].[dwh].[ModelColorDesc]) A 
				WHERE Rank = 1
			) AS SOURCE ON TARGET.[YrModelExtCd] = SOURCE.YrModelExtCd
			WHEN MATCHED THEN   
				UPDATE SET 
					[ModelYear] = SOURCE.[ModelYear]
					,[YrModelExtCd] = SOURCE.YrModelExtCd
					,[YrSerCd] = SOURCE.YrSerCd
					,[YrModelCd] = SOURCE.YrModelCd
					,[SAPModelCd] = SOURCE.[ModelCode]
					,[ExtColorCd] = SOURCE.[ExteriorColorCode]
					,[ExtColorShortDesc] = SOURCE.[ExteriorColorShortDesc]
					,[ExtColorLongDesc] = SOURCE.[ExteriorColorLongDesc]
					,[SeriesCd] = SOURCE.[Series]
					,[IsDeleted] = SOURCE.[IsDeleted]
					,[UpdatedDt] = GETDATE()

			-- WHEN NOT MATCHED BY SOURCE THEN  
			--	DELETE 

			WHEN NOT MATCHED BY TARGET THEN  
				INSERT (					
					[ModelYear]
					,[YrModelExtCd]
					,[YrSerCd]
					,[YrModelCd]
					,[SAPModelCd]
					,[ExtColorCd]
					,[ExtColorShortDesc]
					,[ExtColorLongDesc]
					,[SeriesCd]
					,[IsDeleted]
					,[UpdatedDt]

				)  
				VALUES 
				(
					SOURCE.[ModelYear]
					,SOURCE.YrModelExtCd
					,SOURCE.YrSerCd
					,SOURCE.YrModelCd
					,SOURCE.[ModelCode]
					,SOURCE.[ExteriorColorCode]
					,SOURCE.[ExteriorColorShortDesc]
					,SOURCE.[ExteriorColorLongDesc]
					,SOURCE.[Series]
					,SOURCE.[IsDeleted]
					,GETDATE()
				);
		
		-- migration: [dbo].[VehColorInt]
		-- SUCCESS
		MERGE [dbo].[VehColorInt] AS TARGET  
		USING  (
			SELECT * from (
				SELECT DISTINCT [ModelYear]
					,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [Series]) AS YrSerCd
					,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode]) AS YrModelCd
					,[ModelCode]
					,[InteriorColorCode]
					,[dbo].[RemoveSpecialChars]([InteriorColorShortDesc]) [InteriorColorShortDesc]
					,(STUFF((
							SELECT '-' + Value
							--FROM [dbo].[fnPubSplit] (REPLACE([dbo].[RemoveSpecialChars]([InteriorColorLongDesc]), '/', ' '), ' ')
							FROM [dbo].[fnPubSplit]  (REPLACE([InteriorColorLongDesc],'W/','W'), '')
							FOR XML PATH('')
							), 1, 1, '')
						) AS [InteriorColorLongDesc]
					--,REPLACE([dbo].[RemoveSpecialChars]([InteriorColorLongDesc]), '/', ' ') [InteriorColorLongDesc]
					,[Series]
					,[IsDeleted]
					,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [InteriorColorCode]) AS YrModelIntCd
					,RANK() OVER (PARTITION BY CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [InteriorColorCode])
							ORDER BY IsDeleted ASC, [InteriorColorShortDesc] DESC, [InteriorColorLongDesc] DESC) AS 'Rank'
				FROM [HyundaiUSA].[dwh].[ModelColorDesc]) A
			WHERE Rank = 1			
		) AS SOURCE ON TARGET.[YrModelIntCd] = SOURCE.YrModelIntCd
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.[ModelYear]
				,[YrModelIntCd] = SOURCE.YrModelIntCd
				,[YrSerCd] = SOURCE.YrSerCd
				,[YrModelCd] = SOURCE.YrModelCd
				,[SAPModelCd] = SOURCE.[ModelCode]
				,[IntColorCd] = SOURCE.[InteriorColorCode]
				,[IntColorShortDesc] = SOURCE.[InteriorColorShortDesc]
				,[IntColorLongDesc] = SOURCE.[InteriorColorLongDesc]
				,[SeriesCd] = SOURCE.[Series]
				,[IsDeleted] = SOURCE.[IsDeleted]
				,[UpdatedDt] = GETDATE()


		-- WHEN NOT MATCHED BY SOURCE THEN  
		--	DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
				,[YrModelIntCd]
				,[YrSerCd]
				,[YrModelCd]
				,[SAPModelCd]
				,[IntColorCd]
				,[IntColorShortDesc]
				,[IntColorLongDesc]
				,[SeriesCd]
				,[IsDeleted]
				,[UpdatedDt]

			)  
			VALUES 
			(
				SOURCE.[ModelYear]
				,SOURCE.YrModelIntCd
				,SOURCE.YrSerCd
				,SOURCE.YrModelCd
				,SOURCE.[ModelCode]
				,SOURCE.[InteriorColorCode]
				,SOURCE.[InteriorColorShortDesc]
				,SOURCE.[InteriorColorLongDesc]
				,SOURCE.[Series]
				,SOURCE.[IsDeleted]
				,GETDATE()
			);

		-- migration: [dbo].[VehColorSeat]
		-- Added Temp code for SeatColorCd
		MERGE [dbo].[VehColorSeat] AS TARGET  
		USING  (
			SELECT * from (
				SELECT 
					CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [SeatColorDesc]) AS YrModelSeatCd,
					max(ModelColorDescriptionId) as mid
				FROM [HyundaiUSA].[dwh].[ModelColorDesc]
				group by CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [SeatColorDesc])) A
			INNER JOIN (
				SELECT	
					ModelColorDescriptionId
					,[ModelYear]
					,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [Series]) AS YrSerCd
					,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode]) AS YrModelCd
					,[ModelCode]
					,[SeatColorDesc]
					,[Series]
					,[IsDeleted]
				FROM [HyundaiUSA].[dwh].[ModelColorDesc]) B on A.mid = b.ModelColorDescriptionId
		) AS SOURCE ON TARGET.[YrModelSeatCd] = SOURCE.YrModelSeatCd
		WHEN MATCHED THEN   
			UPDATE SET 
				[ModelYear] = SOURCE.[ModelYear]
				,[YrModelSeatCd] = SOURCE.YrModelSeatCd
				,[YrSerCd] = SOURCE.YrSerCd
				,[SeriesCd] = SOURCE.[Series]
				,[YrModelCd] = SOURCE.YrModelCd
				,[SAPModelCd] = SOURCE.[ModelCode]
				,[SeatColorDesc] = SOURCE.[SeatColorDesc]
				,[IsDeleted] = SOURCE.[IsDeleted]

		-- WHEN NOT MATCHED BY SOURCE THEN  
		--	DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
				,[YrModelSeatCd]
				,[YrSerCd]
				,[YrModelCd]
				,[SAPModelCd]
				,[SeriesCd]
				,[SeatColorDesc]
				,[IsDeleted]
				,[SeatColorCd]

			)  
			VALUES 
			(
				SOURCE.[ModelYear]
				,SOURCE.YrModelSeatCd
				,SOURCE.YrSerCd
				,SOURCE.YrModelCd
				,SOURCE.[ModelCode]
				,SOURCE.[Series]
				,SOURCE.[SeatColorDesc]
				,SOURCE.[IsDeleted]
				,'TEMP'
			);
			

		-- migration: [dbo].[VehPkgChild]
		-- SUCCESS
		MERGE [dbo].[VehPkgChild] AS TARGET  
		USING  (
			SELECT DISTINCT
				[VehPackageId]
				,[Year]
				,[ModelCode]
				,CONCAT(CAST([Year] AS VARCHAR(4)), [ModelCode], [AccGroupCode]) AS YrModelPkgCd
				,CONCAT(CAST([Year] AS VARCHAR(4)), [ModelCode], CONCAT('P', REPLACE(LTRIM(REPLACE([ACCCode], '0', ' ')), ' ', '0'))) AS YrModelChildPkgCd
				,[Series]
				,[Trim]
				,CONCAT('P', REPLACE(LTRIM(REPLACE([ACCCode], '0', ' ')), ' ', '0')) AS ACCCode
				,[AccGroupCode] AS [AccGroupCode]
			FROM (
				SELECT 
					[VehPackageId]
					,[Year]                          
					,[ModelCode]
					,CASE [AccGroupCode] 
							WHEN 'NP' THEN 'P1'
							WHEN 'T2' THEN 'P12'
							ELSE [AccGroupCode]
						END AS [AccGroupCode]
					,[Description]
					,[Series]
					,[Trim]
					,[ACCCode]
				FROM [HyundaiUSA].[Raw].[VPKGDS] VK
				--INNER JOIN dbo.VehPowertrain VP on VK.[ModelCode]=VP.[SAPModelCd] AND VK.[Year]=VP.[ModelYear]
				INNER JOIN [dbo].[VehPackage] VP ON CONCAT(CAST([Year] AS VARCHAR(4)), [ModelCode], [AccGroupCode]) = VP.YrModelPkgCd
				) AS ROW
		) AS SOURCE ON TARGET.[YrModelPkgCd] = SOURCE.[YrModelPkgCd] 
			AND TARGET.[YrModelChildPkgCd] = SOURCE.[YrModelChildPkgCd] 
		WHEN MATCHED THEN   
			UPDATE SET 
				[ParentPkgCd] = SOURCE.[ACCCode]
				,[PackageCd] = SOURCE.[AccGroupCode]

		-- WHEN NOT MATCHED BY SOURCE THEN  
		--DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear] 
				,[SAPModelCd] 
				,[YrModelPkgCd] 
				,[YrModelChildPkgCd] 
				,[SeriesCd] 
				,[TrimCd] 
				,[ParentPkgCd] 
				,[PackageCd] 
			)  
			VALUES 
			(
				SOURCE.[Year]
				,SOURCE.[ModelCode]
				,SOURCE.YrModelPkgCd
				,SOURCE.YrModelChildPkgCd
				,SOURCE.[Series]
				,SOURCE.[Trim]
				,SOURCE.[ACCCode]
				,SOURCE.[AccGroupCode]
			);
		/*
		truncate table [dbo].[VehPkgColor]
		*/
		-- migration: [dbo].[VehPkgColor]
		MERGE [dbo].[VehPkgColor] AS TARGET  
		USING  (
			SELECT DISTINCT 
				PCI.[ModelYear]
				,CONCAT(PCI.[ModelYear], PCI.[ModelCode],COALESCE(VPK.AccGroupCode,
					CONCAT('P', REPLACE(AccessoryGroup, '0', '')))) AS YrModelPkgCd				
				,PCI.[ModelCode]
				,COALESCE(VPK.AccGroupCode,
					CONCAT('P', REPLACE(AccessoryGroup, '0', ''))) as [PackageCd]
				,AccessoryGroup
				,[ExteriorColor]
				,[InteriorColor]
				,[DeletionFlag]
				,[OTDOff]
				,StartDate
				,EndDate
			FROM [HyundaiUSA].[dwh].[ModelPackageColor_InBound] PCI
			LEFT JOIN [HyundaiUSA].[Raw].[VPKGDS] VPK ON VPK.Year = PCI.ModelYear AND VPK.ModelCode = PCI.ModelCode AND VPK.ACCCode = PCI.[AccessoryGroup]
			WHERE [ModelYear]>=2015
		) AS SOURCE ON TARGET.YrModelPkgCd = SOURCE.YrModelPkgCd 
		AND TARGET.[ExtColorCd] = SOURCE.[ExteriorColor] 
		AND TARGET.[IntColorCd] = SOURCE.[InteriorColor] 
		AND TARGET.[AccessoryGroup] = SOURCE.[AccessoryGroup] 
		WHEN MATCHED THEN   
			UPDATE SET 
			[ModelYear] = SOURCE.[ModelYear]
			,[SAPModelCd] = SOURCE.[ModelCode]
			,[PackageCd] = SOURCE.[PackageCd]
			,AccessoryGroup = SOURCE.AccessoryGroup
			,[IsDeleted] = SOURCE.[DeletionFlag]
			,[IsOTDOff] = SOURCE.[OTDOff]
			,[StartDt] = SOURCE.[StartDate]
			,[EndDt] = SOURCE.[EndDate]
			,[UpdatedDt] = GETDATE()

		 WHEN NOT MATCHED BY SOURCE THEN  
		DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (					
				[ModelYear]
			  ,[YrModelPkgCd]
			  ,[SAPModelCd]
			  ,[PackageCd]
			  ,[AccessoryGroup]
			  ,[ExtColorCd]
			  ,[IntColorCd]			  
			  ,[IsDeleted]
			  ,[IsOTDOff]
			  ,[StartDt] 
			  ,[EndDt]
			  ,[CreateDt]
			  ,[UpdatedDt]			  
			)  
			VALUES 
			(
				SOURCE.[ModelYear]
				,SOURCE.[YrModelPkgCd]
				,SOURCE.[ModelCode]
				,SOURCE.[PackageCd]
				,SOURCE.AccessoryGroup
				,SOURCE.[ExteriorColor]
				,SOURCE.[InteriorColor]
				,SOURCE.[DeletionFlag]
				,SOURCE.[OTDOff]
				,SOURCE.[StartDate]
				,SOURCE.[EndDate]
				,GETDATE()
				,GETDATE()
			);


		-- migration: [dbo].[VehPkgColorLookup]
		-- select * from [dbo].[VehPkgColorLookup] 
		MERGE [dbo].[VehPkgColorLookup] AS TARGET  
		USING  (
			SELECT	DISTINCT
				MCD.[ModelColorDescriptionId] as [VehPkgColorLookupId]
				,MCD.[ModelYear]
				,CONCAT(CAST(MCD.[ModelYear] AS VARCHAR(4)), MCD.[Series]) AS YrSerCd
				,CONCAT(CAST(MCD.[ModelYear] AS VARCHAR(4)), MCD.[ModelCode]) AS YrModelCd
				,MCD.[ModelCode] as [SAPModelCd]
				,CONCAT(CAST(MCD.[ModelYear] AS VARCHAR(4)),MCD. [ModelCode], MCD.[ExteriorColorCode]) AS [YrModelExtCd]
				,CONCAT(CAST(MCD.[ModelYear] AS VARCHAR(4)), MCD.[ModelCode], MCD.[InteriorColorCode]) AS [YrModelIntCd]
				,CONCAT(CAST(MCD.[ModelYear] AS VARCHAR(4)), MCD.[ModelCode], MCD.[InteriorColorCode]) AS [YrModelSeatCd]
				,MCD.[ExteriorColorCode] as [ExtColorCd]
				,MCD.[InteriorColorCode] as [IntColorCd]
				,MCD.[Series] as [SeriesCd]
				,[IsDeleted]
				,[IsPoActive]
				,COALESCE([IsInventoryAvailable], 0) AS [IsInventoryAvailable]
				,MCD.[LastUpdatedDate] as [UpdatedDt]
			FROM [HyundaiUSA].[dwh].[ModelColorDesc] MCD
			LEFT JOIN HyundaiUSA.dwh.ModelColorDescInvAvail MCDIA ON MCDIA.ModelYear = MCD.ModelYear
				AND MCDIA.ModelCode = MCD.ModelCode
				AND MCDIA.ExteriorColorCode = MCD.ExteriorColorCode 
				AND MCDIA.InteriorColorCode = MCD.InteriorColorCode 
				AND MCDIA.ISINVENTORYAVAILABLE = 1
			UNION
			SELECT DISTINCT
				[ModelColorDescriptionId] as [VehPkgColorLookupId]
				,[ModelYear]
				,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [Series]) AS YrSerCd
				,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode]) AS YrModelCd
				,[ModelCode] as [SAPModelCd]
				,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [ExteriorColorCode]) AS [YrModelExtCd]
				,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [InteriorColorCode]) AS [YrModelIntCd]
				,CONCAT(CAST([ModelYear] AS VARCHAR(4)), [ModelCode], [InteriorColorCode]) AS [YrModelSeatCd]
				,[ExteriorColorCode] as [ExtColorCd]
				,[InteriorColorCode] as [IntColorCd]
				,[Series] as [SeriesCd]
				,0 AS [IsDeleted]
				,0 AS [IsPoActive]
				,[IsInventoryAvailable]
				,[LastUpdatedDate] as [UpdatedDt]
			FROM HyundaiUSA.dwh.ModelColorDescInvAvail
			WHERE CONCAT(ModelYear,ModelCode,ExteriorColorCode,InteriorColorCode) NOT IN (
				SELECT CONCAT(ModelYear,ModelCode,ExteriorColorCode,InteriorColorCode) 
				FROM [HyundaiUSA].[dwh].[ModelColorDesc]
				WHERE [IsDeleted] = 0 AND [IsPoActive] = 1)
				AND [IsInventoryAvailable] = 1
		) AS SOURCE ON TARGET.[VehPkgColorLookupId] = SOURCE.[VehPkgColorLookupId]
				--	TARGET.YrModelCd = SOURCE.YrModelCd
				--AND TARGET.ExtColorCd = SOURCE.ExtColorCd 
				--AND TARGET.IntColorCd = SOURCE.IntColorCd 
		WHEN MATCHED THEN   
			UPDATE SET 
				[IsDeleted] = SOURCE.[IsDeleted]
				,[IsVisible] = SOURCE.[IsPoActive]
				,[IsInventoryAvailable] = SOURCE.[IsInventoryAvailable]
				,[UpdatedDt] = SOURCE.[UpdatedDt]

		 WHEN NOT MATCHED BY SOURCE THEN  
			DELETE 

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (
				[VehPkgColorLookupId]
				,[ModelYear]
				,[YrSerCd]
				,[YrModelCd]
				,[SAPModelCd]
				,[YrModelExtCd]
				,[YrModelIntCd]
				,[YrModelSeatCd]
				,[ExtColorCd]
				,[IntColorCd]
				,[SeatColorCd]
				,[SeriesCd]
				,[IsDeleted]
				,[IsVisible]
				,[IsInventoryAvailable]
				,[UpdatedDt]
			)
			VALUES (
				SOURCE.[VehPkgColorLookupId]
				,SOURCE.[ModelYear]
				,SOURCE.[YrSerCd]
				,SOURCE.[YrModelCd]
				,SOURCE.[SAPModelCd]
				,SOURCE.[YrModelExtCd]
				,SOURCE.[YrModelIntCd]
				,SOURCE.[YrModelSeatCd]
				,SOURCE.[ExtColorCd]
				,SOURCE.[IntColorCd]
				,SOURCE.[IntColorCd]
				,SOURCE.[SeriesCd]
				,SOURCE.[IsDeleted]
				,SOURCE.[IsPoActive]
				,SOURCE.[IsInventoryAvailable]
				,SOURCE.[UpdatedDt]
			);

		TRUNCATE TABLE [dbo].[VehPkgDetailText] 
		INSERT INTO [dbo].[VehPkgDetailText] ([ModelGroupCode]
			  ,[ModelYear]  
			  ,[SeriesCd]    
			  ,[PackageCd]
			  ,[Client]
			  ,[CompanyCode]      
			  ,[InstallType]
			  ,[ItemNumber]
			  ,[PackageDetail]
			  ,[IsBoldFormat]
			  ,[IsItalicsFormat]
			  ,[CreatedBy]
			  ,[CreatedDt]
		)SELECT DISTINCT [MODEL_GROUP_CD] AS ModelGroupCode
			  ,[ModelYear]
			  ,[Series]
			  ,[AccessoryCode] AS PackageCd
			  ,[Client]
			  ,[CompanyCode]			  
			  ,[InstallType]
			  ,[ItemNumber]
			  ,[PackageDescription] AS [PackageDetail]
			  ,CASE WHEN [BoldFormat] = 'X' THEN 1 ELSE 0 END AS [IsBoldFormat]
			  ,CASE WHEN [ItalicsFormat] = 'X' THEN 1 ELSE 0 END AS [IsItalicsFormat]
			  ,[CreatedBy]
			  ,CAST([CreatedTime] AS DATETIME) AS [CreatedDt]
		  FROM [HyundaiUSA].[dwh].[PackageDetailText];

		-- migration: [dbo].[Vehicles]
		--TRUNCATE TABLE [dbo].[Vehicles];
		--INSERT INTO [dbo].[Vehicles] (VehicleId, VehicleDesc)
		--SELECT vehicle_id, vehicle_description FROM HyundaiUSA.Crm.Vehicles;

		--migration: [dbo].[VehPackageOption]
		MERGE [dbo].[VehPackageOption] AS TARGET  
		USING  (
			SELECT distinct
			   SUBSTRING(pkg.Material,1,5) AS 'YrSerCd',
			   SUBSTRING(pkg.Material,1,4) AS 'ModelYear',
			   pkg.SeriesCode AS 'SeriesCode',
			   pkg.SeriesName AS 'SeriesName',
			   pkg.ModelCode AS 'SapModelCd',
			   pkg.Material AS 'Material',
			   pkg.DTSGrade,
			   pkg.DTSModelCode AS 'DTSModelCode',
			   DTSSSC,
			   DTSOCN,
			   pkg.TrimDescription,
			   pkg.AccessoryGroup,
			   pkg.AccessoryGroupName,
			   pkg.FIOPackages AS 'FIOPackages',
			   pkg.pkg_option_combination AS 'PackageOptionCombination',
			   NULLIF(pkg.AlternativePackageCode, '') AlternativePackageCode,
			   NULLIF(pkg.AlternativePackageName, '') AlternativePackageName
			FROM HyundaiUsa.[Raw].[palisade_options_pkg_combination] pkg 
			) AS SOURCE ON TARGET.YrSerCd = SOURCE.[YrSerCd] AND 
						   TARGET.SapModelCd = SOURCE.[SapModelCd] AND
						   TARGET.Material = SOURCE.[Material] AND
						   TARGET.AccessoryGroup = SOURCE.[AccessoryGroup] AND
						   TARGET.AccessoryGroupName = SOURCE.[AccessoryGroupName]

						   

		WHEN MATCHED THEN   
			UPDATE SET 
				YrSerCd = SOURCE.[YrSerCd],
				ModelYear = SOURCE.[ModelYear],
				SapModelCd = SOURCE.[SapModelCd],
				SeriesCode = SOURCE.[SeriesCode],
				SeriesName = SOURCE.[SeriesName],
				Material = SOURCE.[Material],
				DTSGrade = SOURCE.[DTSGrade],
				DTSModelCode = SOURCE.[DTSModelCode],
				DTSSSC = SOURCE.[DTSSSC],
				DTSOCN = SOURCE.[DTSOCN],
				TrimDescription = SOURCE.[TrimDescription],
				AccessoryGroup = SOURCE.[AccessoryGroup],
				AccessoryGroupName = SOURCE.[AccessoryGroupName],
				FIOPackages	= SOURCE.[FIOPackages],
				PackageOptionCombination = SOURCE.[PackageOptionCombination],
				UpdatedDate = getdate(),
			    AlternativePackageCd = SOURCE.AlternativePackageCode,
			    AlternativePackageName = SOURCE.AlternativePackageName

		WHEN NOT MATCHED BY TARGET THEN  
			INSERT (
				YrSerCd ,
				ModelYear,
				SapModelCd,
				SeriesCode,
				SeriesName,
				Material,
				DTSGrade,
				DTSModelCode,
				DTSSSC,
				DTSOCN,
				TrimDescription,
				AccessoryGroup,
				AccessoryGroupName,
				FIOPackages,
				PackageOptionCombination,
				CreatedDate,
			    AlternativePackageCd,
			    AlternativePackageName

			)
			VALUES (
				SOURCE.[YrSerCd],
				SOURCE.[ModelYear],
				SOURCE.[SapModelCd],
				SOURCE.[SeriesCode],
				SOURCE.[SeriesName],
				SOURCE.[Material],
				SOURCE.[DTSGrade],
				SOURCE.[DTSModelCode],
				SOURCE.[DTSSSC],
				SOURCE.[DTSOCN],
				SOURCE.[TrimDescription],
				SOURCE.[AccessoryGroup],
				SOURCE.[AccessoryGroupName],
				SOURCE.[FIOPackages],
				SOURCE.[PackageOptionCombination],
				getdate(),
			    SOURCE.AlternativePackageCode,
			    SOURCE.AlternativePackageName
			);

		-- MANULLY SET PALISIDE P1 TO BECOME ISOPTION = 1
		UPDATE dbo.vehPackage SET IsOption = 1 WHERE ModelYear > 2019 AND SeriesCd = 'J' AND PackageCd = 'P1' and IsOption = 0

		-- Update 2022 Genesis GV80 

		-- S1422A45 
		--INSERT INTO HMAFleet.[dbo].[VehPackage]([ModelYear],[YrModelPkgCd],[YrSerCd],[YrModelCd],[YrSerPkgCd],[SAPModelCd]
		--	,[PackageCd],[PackageNm],[PackageDesc],[SeriesCd],[TrimCd],[MSRP],[CreateDt],[UpdatedDt],[ImageURL],[IsOption],[MaterialDesc],[FactorySpecificationCD])
		--VALUES
		--(
		--2022,	'2022S1422A45P2-D41K',	'2022S',	'2022S1422A45',	'2022SP2',	'S1422A45',	'P2',	'*Advanced Package:',	'',	'S',	
		--'2',	4600.00, 	getdate(),	getdate(),	'',	0,	'G80 AWD 2.5T ADVANCED',	'JJS4L9G1KDD41K')

		--INSERT INTO HMAFleet.[dbo].[VehPackage]([ModelYear],[YrModelPkgCd],[YrSerCd],[YrModelCd],[YrSerPkgCd],[SAPModelCd]
		--	,[PackageCd],[PackageNm],[PackageDesc],[SeriesCd],[TrimCd],[MSRP],[CreateDt],[UpdatedDt],[ImageURL],[IsOption],[MaterialDesc],[FactorySpecificationCD])
		--VALUES
		--(
		--2022,	'2022S1422A45P3-D41J',	'2022S',	'2022S1422A45',	'2022SP3',	'S1422A45',	'P3',	'*Prestige Package:',	'',	'S',	
		--'2',	4300.00, 	getdate(),	getdate(),	'',	0,	'G80 AWD 2.5T PRESTIGE',	'JJS4L9G1KDD41J')


		--UPDATE [dbo].[VehPackage] set YrModelPkgCd = '2022S1422A45P2-D0SC', materialDesc = 'G80 AWD 2.5T ADVANCED', factorySpecificationCD = 'JJS4L9G1KDD0SC' where YrModelPkgCd = '2022S1422A45P2'
		--UPDATE [dbo].[VehPackage] set YrModelPkgCd = '2022S1422A45P3-D0SG', materialDesc = 'G80 AWD 2.5T PRESTIGE', factorySpecificationCD = 'JJS4L9G1KDD0SG' where YrModelPkgCd = '2022S1422A45P3'

		-- S1422R45 
		--INSERT INTO HMAFleet.[dbo].[VehPackage]([ModelYear],[YrModelPkgCd],[YrSerCd],[YrModelCd],[YrSerPkgCd],[SAPModelCd]
		--	,[PackageCd],[PackageNm],[PackageDesc],[SeriesCd],[TrimCd],[MSRP],[CreateDt],[UpdatedDt],[ImageURL],[IsOption],[MaterialDesc],[FactorySpecificationCD])
		--VALUES
		--(
		--2022,	'2022S1422R45P2-D41I',	'2022S',	'2022S1422R45',	'2022SP2',	'S1422R45',	'P2',	'*Advanced Package:',	'',	'S',	
		--'2',	4600.00, 	getdate(),	getdate(),	'',	0,	'G80 RWD 2.5T ADVANCED',	'JJS4L9G1JDD41I')

		--INSERT INTO HMAFleet.[dbo].[VehPackage]([ModelYear],[YrModelPkgCd],[YrSerCd],[YrModelCd],[YrSerPkgCd],[SAPModelCd]
		--	,[PackageCd],[PackageNm],[PackageDesc],[SeriesCd],[TrimCd],[MSRP],[CreateDt],[UpdatedDt],[ImageURL],[IsOption],[MaterialDesc],[FactorySpecificationCD])
		--VALUES
		--(
		--2022,	'2022S1422R45P2-D41J',	'2022S',	'2022S1422R45',	'2022SP3',	'S1422R45',	'P5',	'*Prestige Package:',	'',	'S',	
		--'2',	4300.00, 	getdate(),	getdate(),	'',	0,	'G80 RWD 2.5T PRESTIGE',	'JJS4L9G1JDD41J')


		--UPDATE [dbo].[VehPackage] set YrModelPkgCd = '2022S1422R45P2-D0SA', materialDesc = 'G80 RWD 2.5T ADVANCED', factorySpecificationCD = 'JJS4L9G1JDD0SA' where YrModelPkgCd = '2022S1422R45P2'
		--UPDATE [dbo].[VehPackage] set YrModelPkgCd = '2022S1422R45P3-D0SG', materialDesc = 'G80 RWD 2.5T PRESTIGE', factorySpecificationCD = 'JJS4L9G1JDD0SG' where YrModelPkgCd = '2022S1422R45P5'
		UPDATE [dbo].[VehPkgColor] set YrSerCd = CONCAT(ModelYear, SUBSTRING(SAPModelCd, 1,1))

		SET @Return = 0;
		COMMIT TRAN END TRY  
	BEGIN CATCH
		PRINT CONCAT('ERR#',ERROR_NUMBER(),', LINE#', ERROR_LINE(),', ', ERROR_MESSAGE());
		ROLLBACK TRAN;
		SET @Return = 1001;
	END CATCH          
	RETURN @Return;
END
GO
/****** Object:  StoredProcedure [mig].[SyncFleetCONTROL_TABLE_From_RSProd_To_IDCPRod]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DT
-- Create date:	10/12/2020
-- Description:	Temporary solution to pull EDW table from RS to new IDC's DB. We will remove this job when all dbs migrated to IDC. 
-- EXEC [mig].[SyncFleetCONTROL_TABLE_From_RSProd_To_IDCPRod]
-- Modify History:
-- =============================================

CREATE PROCEDURE [mig].[SyncFleetCONTROL_TABLE_From_RSProd_To_IDCPRod]
AS
    BEGIN
    
	RETURN;

	--select @@SERVERNAME

    IF @@SERVERNAME NOT IN( 'ESNAHMASQLS01', 'ESNAHMASQLS02')   -- double check so make sure we don't accidently run this in production
	   RETURN;

	   IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP') DROP TABLE DBO.CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP
	   IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'CTRL_EBIZ_CS_FLEET_VEHICLE_TEMP') DROP TABLE DBO.CTRL_EBIZ_CS_FLEET_VEHICLE_TEMP

        -- =============================================
        -- 1. SYNC [HMAFLEET].[DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE]
        -- =============================================
        -- STEP 1: Copy entire table over
        SELECT * INTO DBO.CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP
        FROM [172.20.0.153].[HMAFLEET].[DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE];

        -- STEP 2: Merge table
        MERGE INTO [HMAFLEET].[DWH].[CTRL_ACCESSORY_AVAILABILITY_RULE] AS Dest
        USING( SELECT [ACCESSORY_AVAILABILITY_RULE_ID],
                      [ACCESSORY_CD],
                      [ACCESSORY_GROUP_CD],
                      [ACCESSORY_TYPE_CD],
                      [EFF_FROM_DATE],
                      [EFF_TO_DATE],
                      [EXTERIOR_COLOR_CD],
                      [INTERIOR_COLOR_CD],
                      [IS_AVAILABLE_FOR_ALLOCATION],
                      [MODEL_CD],
                      [MODEL_YEAR],
                      [REC_CREATE_DATE],
                      [REC_UPDATE_DATE]
               FROM [HMAFLEET].DBO.CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP ) AS Src
        ON Src.[ACCESSORY_AVAILABILITY_RULE_ID] = Dest.[ACCESSORY_AVAILABILITY_RULE_ID]
        WHEN MATCHED
              THEN UPDATE SET [ACCESSORY_CD] = SRC.[ACCESSORY_CD],
                              [ACCESSORY_GROUP_CD] = SRC.[ACCESSORY_GROUP_CD],
                              [ACCESSORY_TYPE_CD] = SRC.[ACCESSORY_TYPE_CD],
                              [EFF_FROM_DATE] = SRC.[EFF_FROM_DATE],
                              [EFF_TO_DATE] = SRC.[EFF_TO_DATE],
                              [EXTERIOR_COLOR_CD] = SRC.[EXTERIOR_COLOR_CD],
                              [INTERIOR_COLOR_CD] = SRC.[INTERIOR_COLOR_CD],
                              [IS_AVAILABLE_FOR_ALLOCATION] = SRC.[IS_AVAILABLE_FOR_ALLOCATION],
                              [MODEL_CD] = SRC.[MODEL_CD],
                              [MODEL_YEAR] = SRC.[MODEL_YEAR],
                              [REC_CREATE_DATE] = SRC.[REC_CREATE_DATE],
                              [REC_UPDATE_DATE] = SRC.[REC_UPDATE_DATE]
        WHEN NOT MATCHED BY TARGET
              THEN INSERT( [ACCESSORY_AVAILABILITY_RULE_ID],
                           [ACCESSORY_CD],
                           [ACCESSORY_GROUP_CD],
                           [ACCESSORY_TYPE_CD],
                           [EFF_FROM_DATE],
                           [EFF_TO_DATE],
                           [EXTERIOR_COLOR_CD],
                           [INTERIOR_COLOR_CD],
                           [IS_AVAILABLE_FOR_ALLOCATION],
                           [MODEL_CD],
                           [MODEL_YEAR],
                           [REC_CREATE_DATE],
                           [REC_UPDATE_DATE] ) VALUES( SRC.[ACCESSORY_AVAILABILITY_RULE_ID], SRC.[ACCESSORY_CD], SRC.[ACCESSORY_GROUP_CD], SRC.[ACCESSORY_TYPE_CD], SRC.[EFF_FROM_DATE], SRC.[EFF_TO_DATE], SRC.[EXTERIOR_COLOR_CD], SRC.[INTERIOR_COLOR_CD], SRC.[IS_AVAILABLE_FOR_ALLOCATION], SRC.[MODEL_CD], SRC.[MODEL_YEAR], SRC.[REC_CREATE_DATE], SRC.[REC_UPDATE_DATE] );
        DROP TABLE DBO.CTRL_ACCESSORY_AVAILABILITY_RULE_TEMP;
        -- =============================================
        -- =============================================
        -- 2. SYNC [HMAFLEET].[DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE]
        -- =============================================
        -- STEP 1: Copy entire table over
        SELECT * INTO DBO.CTRL_EBIZ_CS_FLEET_VEHICLE_TEMP
        FROM [172.20.0.153].[HMAFLEET].[DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE];
	   
        -- STEP 2: Merge table
        MERGE INTO [HMAFLEET].[DWH].[CTRL_EBIZ_CS_FLEET_VEHICLE] AS Dest
        USING( SELECT [VIN],
                      [MODEL_YEAR],
                      [SERIES_CD],
                      [FAMILY_CD],
                      [DOOR_CD],
                      [TRIM_CD],
                      [TRANSMISSION_CD],
                      [DRIVETRAIN_CD],
                      [ENGINE_TYPE_CD],
                      [MODEL_EMISSION_CD],
                      [ACCESSORY_GROUP_CD],
                      [MFG_EXTERIOR_COLOR_CD],
                      [MFG_INTERIOR_COLOR_CD],
                      [PORT_INSTALLED_OPTION_01_CD],
                      [PORT_INSTALLED_OPTION_02_CD],
                      [PORT_INSTALLED_OPTION_03_CD],
                      [PORT_INSTALLED_OPTION_04_CD],
                      [PORT_INSTALLED_OPTION_05_CD],
                      [PORT_INSTALLED_OPTION_06_CD],
                      [PORT_INSTALLED_OPTION_07_CD],
                      [PORT_INSTALLED_OPTION_08_CD],
                      [PORT_INSTALLED_OPTION_09_CD],
                      [PORT_INSTALLED_OPTION_10_CD],
                      [INVENTORY_STATUS_CD],
                      [CURRENT_PORT_CD],
                      [TENDER_DATE],
                      [SHIP_TO_DEALER_CD],
                      [ALLOCATION_DEALER_CD],
                      [FLEET_RENTAL_ACCOUNT_CD],
                      [FLEET_DELIVERY_FROM_DATE],
                      [FLEET_PURCHASE_ORDER_NUM],
                      [WHOLESALE_DATE],
                      [ACES_DELIVERY_DATE],
                      [VESSEL_MANIFEST_DEPARTURE_DATE],
                      [FLEET_PURCHASE_ORDER_DATE],
                      [COURTESY_DELIVERY_DATE],
                      [STREET_INCENTIVE_AMT],
                      [END_USER_USERID],
                      [CUSTOMER_PO_NO],
                      [BODY_LINE_INPUT_DATE],
                      [MANIFEST_ETA_ARRIVAL_DATE],
                      [REC_UPDATE_DATE],
                      [REC_CREATE_DATE],
                      [ORDER_CREATE_DATE],
                      [MODELCODE]
               FROM [DBO].[CTRL_EBIZ_CS_FLEET_VEHICLE_TEMP] ) AS Src
        ON Src.VIN = Dest.VIN
        WHEN MATCHED
              THEN UPDATE SET [MODEL_YEAR] = SRC.MODEL_YEAR,
                              [SERIES_CD] = SRC.SERIES_CD,
                              [FAMILY_CD] = SRC.FAMILY_CD,
                              [DOOR_CD] = SRC.DOOR_CD,
                              [TRIM_CD] = SRC.TRIM_CD,
                              [TRANSMISSION_CD] = SRC.TRANSMISSION_CD,
                              [DRIVETRAIN_CD] = SRC.DRIVETRAIN_CD,
                              [ENGINE_TYPE_CD] = SRC.ENGINE_TYPE_CD,
                              [MODEL_EMISSION_CD] = SRC.MODEL_EMISSION_CD,
                              [ACCESSORY_GROUP_CD] = SRC.ACCESSORY_GROUP_CD,
                              [MFG_EXTERIOR_COLOR_CD] = SRC.MFG_EXTERIOR_COLOR_CD,
                              [MFG_INTERIOR_COLOR_CD] = SRC.MFG_INTERIOR_COLOR_CD,
                              [PORT_INSTALLED_OPTION_01_CD] = SRC.PORT_INSTALLED_OPTION_01_CD,
                              [PORT_INSTALLED_OPTION_02_CD] = SRC.PORT_INSTALLED_OPTION_02_CD,
                              [PORT_INSTALLED_OPTION_03_CD] = SRC.PORT_INSTALLED_OPTION_03_CD,
                              [PORT_INSTALLED_OPTION_04_CD] = SRC.PORT_INSTALLED_OPTION_04_CD,
                              [PORT_INSTALLED_OPTION_05_CD] = SRC.PORT_INSTALLED_OPTION_05_CD,
                              [PORT_INSTALLED_OPTION_06_CD] = SRC.PORT_INSTALLED_OPTION_06_CD,
                              [PORT_INSTALLED_OPTION_07_CD] = SRC.PORT_INSTALLED_OPTION_07_CD,
                              [PORT_INSTALLED_OPTION_08_CD] = SRC.PORT_INSTALLED_OPTION_08_CD,
                              [PORT_INSTALLED_OPTION_09_CD] = SRC.PORT_INSTALLED_OPTION_09_CD,
                              [PORT_INSTALLED_OPTION_10_CD] = SRC.PORT_INSTALLED_OPTION_10_CD,
                              [INVENTORY_STATUS_CD] = SRC.INVENTORY_STATUS_CD,
                              [CURRENT_PORT_CD] = SRC.CURRENT_PORT_CD,
                              [TENDER_DATE] = SRC.TENDER_DATE,
                              [SHIP_TO_DEALER_CD] = SRC.SHIP_TO_DEALER_CD,
                              [ALLOCATION_DEALER_CD] = SRC.ALLOCATION_DEALER_CD,
                              [FLEET_RENTAL_ACCOUNT_CD] = SRC.FLEET_RENTAL_ACCOUNT_CD,
                              [FLEET_DELIVERY_FROM_DATE] = SRC.FLEET_DELIVERY_FROM_DATE,
                              [FLEET_PURCHASE_ORDER_NUM] = SRC.FLEET_PURCHASE_ORDER_NUM,
                              [WHOLESALE_DATE] = SRC.WHOLESALE_DATE,
                              [ACES_DELIVERY_DATE] = SRC.ACES_DELIVERY_DATE,
                              [VESSEL_MANIFEST_DEPARTURE_DATE] = SRC.VESSEL_MANIFEST_DEPARTURE_DATE,
                              [FLEET_PURCHASE_ORDER_DATE] = SRC.FLEET_PURCHASE_ORDER_DATE,
                              [COURTESY_DELIVERY_DATE] = SRC.COURTESY_DELIVERY_DATE,
                              [STREET_INCENTIVE_AMT] = SRC.STREET_INCENTIVE_AMT,
                              [END_USER_USERID] = SRC.END_USER_USERID,
                              [CUSTOMER_PO_NO] = SRC.CUSTOMER_PO_NO,
                              [BODY_LINE_INPUT_DATE] = SRC.BODY_LINE_INPUT_DATE,
                              [MANIFEST_ETA_ARRIVAL_DATE] = SRC.MANIFEST_ETA_ARRIVAL_DATE,
                              [REC_UPDATE_DATE] = SRC.REC_UPDATE_DATE,
                              [REC_CREATE_DATE] = SRC.REC_CREATE_DATE,
                              [ORDER_CREATE_DATE] = SRC.ORDER_CREATE_DATE
        WHEN NOT MATCHED BY TARGET
              THEN INSERT( [VIN],
                           [MODEL_YEAR],
                           [SERIES_CD],
                           [FAMILY_CD],
                           [DOOR_CD],
                           [TRIM_CD],
                           [TRANSMISSION_CD],
                           [DRIVETRAIN_CD],
                           [ENGINE_TYPE_CD],
                           [MODEL_EMISSION_CD],
                           [ACCESSORY_GROUP_CD],
                           [MFG_EXTERIOR_COLOR_CD],
                           [MFG_INTERIOR_COLOR_CD],
                           [PORT_INSTALLED_OPTION_01_CD],
                           [PORT_INSTALLED_OPTION_02_CD],
                           [PORT_INSTALLED_OPTION_03_CD],
                           [PORT_INSTALLED_OPTION_04_CD],
                           [PORT_INSTALLED_OPTION_05_CD],
                           [PORT_INSTALLED_OPTION_06_CD],
                           [PORT_INSTALLED_OPTION_07_CD],
                           [PORT_INSTALLED_OPTION_08_CD],
                           [PORT_INSTALLED_OPTION_09_CD],
                           [PORT_INSTALLED_OPTION_10_CD],
                           [INVENTORY_STATUS_CD],
                           [CURRENT_PORT_CD],
                           [TENDER_DATE],
                           [SHIP_TO_DEALER_CD],
                           [ALLOCATION_DEALER_CD],
                           [FLEET_RENTAL_ACCOUNT_CD],
                           [FLEET_DELIVERY_FROM_DATE],
                           [FLEET_PURCHASE_ORDER_NUM],
                           [WHOLESALE_DATE],
                           [ACES_DELIVERY_DATE],
                           [VESSEL_MANIFEST_DEPARTURE_DATE],
                           [FLEET_PURCHASE_ORDER_DATE],
                           [COURTESY_DELIVERY_DATE],
                           [STREET_INCENTIVE_AMT],
                           [END_USER_USERID],
                           [CUSTOMER_PO_NO],
                           [BODY_LINE_INPUT_DATE],
                           [MANIFEST_ETA_ARRIVAL_DATE],
                           [REC_UPDATE_DATE],
                           [REC_CREATE_DATE],
                           [ORDER_CREATE_DATE] ) VALUES( VIN, src.MODEL_YEAR, src.SERIES_CD, src.FAMILY_CD, src.DOOR_CD, src.TRIM_CD, src.TRANSMISSION_CD, src.DRIVETRAIN_CD, src.ENGINE_TYPE_CD, src.MODEL_EMISSION_CD, src.ACCESSORY_GROUP_CD, src.MFG_EXTERIOR_COLOR_CD, src.MFG_INTERIOR_COLOR_CD, src.PORT_INSTALLED_OPTION_01_CD, src.PORT_INSTALLED_OPTION_02_CD, src.PORT_INSTALLED_OPTION_03_CD, src.PORT_INSTALLED_OPTION_04_CD, src.PORT_INSTALLED_OPTION_05_CD, src.PORT_INSTALLED_OPTION_06_CD, src.PORT_INSTALLED_OPTION_07_CD, src.PORT_INSTALLED_OPTION_08_CD, src.PORT_INSTALLED_OPTION_09_CD, src.PORT_INSTALLED_OPTION_10_CD, src.INVENTORY_STATUS_CD, src.CURRENT_PORT_CD, src.TENDER_DATE, src.SHIP_TO_DEALER_CD, src.ALLOCATION_DEALER_CD, src.FLEET_RENTAL_ACCOUNT_CD, src.FLEET_DELIVERY_FROM_DATE, src.FLEET_PURCHASE_ORDER_NUM, src.WHOLESALE_DATE, src.ACES_DELIVERY_DATE, src.VESSEL_MANIFEST_DEPARTURE_DATE, src.FLEET_PURCHASE_ORDER_DATE, src.COURTESY_DELIVERY_DATE, src.STREET_INCENTIVE_AMT, src.END_USER_USERID, src.CUSTOMER_PO_NO, src.BODY_LINE_INPUT_DATE, src.MANIFEST_ETA_ARRIVAL_DATE, src.REC_UPDATE_DATE, src.REC_CREATE_DATE, src.ORDER_CREATE_DATE );
        DROP TABLE DBO.[CTRL_EBIZ_CS_FLEET_VEHICLE_TEMP];
        -- =============================================
        -- =============================================
        -- 3. SYNC [DWH].[CTRL_EBIZ_INVENTORY_STATUS]
        -- =============================================
        -- STEP 1: Copy entire table over
	   TRUNCATE TABLE [DWH].CTRL_EBIZ_INVENTORY_STATUS

	   INSERT INTO [DWH].CTRL_EBIZ_INVENTORY_STATUS
	   SELECT *
        FROM [172.20.0.153].[HMAFLEET].[DWH].CTRL_EBIZ_INVENTORY_STATUS;


        -- =============================================
        -- 4. SYNC [DWH].[PIO_ExclusiveRules]
        -- =============================================
        TRUNCATE TABLE [HMAFLEET].[DWH].PIO_ExclusiveRules;

	   INSERT INTO [DWH].PIO_ExclusiveRules
	   SELECT *
        FROM [172.20.0.153].[HMAFLEET].[DWH].PIO_ExclusiveRules;

        -- =============================================
        -- =============================================
        -- 3. SYNC [dbo].[tbIncentive]
        -- =============================================
        DECLARE @kModify INT;
        SELECT TOP 1 @kModify = [kModify]
        FROM dbo.[tbIncentive]
        WHERE [kModify] > 0;

        -- STEP 1: Copy entire table over
		IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'tbIncentive_TEMP') DROP TABLE [dbo].[tbIncentive_TEMP]

        SELECT * INTO [HMAFLEET].[dbo].[tbIncentive_TEMP]
        FROM [172.20.0.153].[HMAFLEET].[dbo].[tbIncentive];

        -- STEP 2: Merge table
        MERGE INTO [HMAFLEET].[dbo].[tbIncentive] AS Dest
        USING( SELECT [iRec],
                      [cModelCode],
                      [nModelYear],
                      [cStatus],
                      [cAdminOrderStatus],
                      [cyIncentive],
                      [dtSOP],
                      [dtFinalOrder],
                      [kCreate],
                      [dtCreate],
                      [kModify],
                      [dtModify]
               FROM [HMAFLEET].[dbo].[tbIncentive_temp] ) AS Src
        ON Src.[cModelCode] = Dest.[cModelCode]
       AND Src.[nModelYear] = Dest.[nModelYear]
       AND Src.[cStatus] = Dest.[cStatus]
       AND Src.[cAdminOrderStatus] = Dest.[cAdminOrderStatus]
        WHEN MATCHED
              THEN UPDATE SET [cModelCode] = src.cModelCode,
                              [nModelYear] = src.nModelYear,
                              [cStatus] = src.cStatus,
                              [cAdminOrderStatus] = src.cAdminOrderStatus,
                              [cyIncentive] = src.cyIncentive,
                              [dtSOP] = src.dtSOP,
                              [dtFinalOrder] = src.dtFinalOrder,
                              [kCreate] = src.kCreate,
                              [dtCreate] = src.dtCreate,
                              [kModify] = @kModify,
                              [dtModify] = src.dtModify
        WHEN NOT MATCHED BY TARGET
              THEN INSERT( [cModelCode],
                           [nModelYear],
                           [cStatus],
                           [cAdminOrderStatus],
                           [cyIncentive],
                           [dtSOP],
                           [dtFinalOrder],
                           [kCreate],
                           [dtCreate],
                           [kModify],
                           [dtModify] ) VALUES( src.cModelCode, src.nModelYear, src.cStatus, src.cAdminOrderStatus, src.cyIncentive, src.dtSOP, src.dtFinalOrder, src.kCreate, src.dtCreate, @kModify, src.dtModify );

		IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'tbIncentive_TEMP') DROP TABLE [HMAFLEET].[dbo].[tbIncentive_TEMP];
        -- =============================================


    END;
GO
/****** Object:  DdlTrigger [Tg_CaptureFunctionChangeChanges]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/****** Object:  DdlTrigger [Tg_CaptureFunctionChangeChanges]    Script Date: 03/06/2014 17:21:58 ******/


-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/15/2018
-- Description:	Capture all change in all database
-- =============================================
CREATE TRIGGER [Tg_CaptureFunctionChangeChanges]
    ON DATABASE
    FOR CREATE_FUNCTION, ALTER_FUNCTION, DROP_FUNCTION

AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EventData XML = EVENTDATA(), @ip VARCHAR(32);

    SELECT @ip = client_net_address
        FROM sys.dm_exec_connections
        WHERE session_id = @@SPID;

    INSERT DBA_Utility.dbo.ProcedureChanges
    (
        EventType,
        EventDDL,
        SchemaName,
        ObjectName,
        DatabaseName,
        HostName,
        IPAddress,
        ProgramName,
        LoginName,
        ObjectType
    )
    SELECT
        @EventData.value('(/EVENT_INSTANCE/EventType)[1]',   'NVARCHAR(100)'), 
        @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'NVARCHAR(MAX)'),
        @EventData.value('(/EVENT_INSTANCE/SchemaName)[1]',  'NVARCHAR(255)'), 
        @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]',  'NVARCHAR(255)'),
        DB_NAME(), 
        HOST_NAME(), 
        @ip, 
        PROGRAM_NAME(), 
        SUSER_SNAME(),
        'Function'
        ;
END






GO
DISABLE TRIGGER [Tg_CaptureFunctionChangeChanges] ON DATABASE
GO
/****** Object:  DdlTrigger [Tg_CaptureProcedureChangeChanges]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/15/2018
-- Description:	Capture all change in all database
-- =============================================
CREATE TRIGGER [Tg_CaptureProcedureChangeChanges]
    ON DATABASE
    FOR CREATE_PROCEDURE, ALTER_PROCEDURE, DROP_PROCEDURE

AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EventData XML = EVENTDATA(), @ip VARCHAR(32);

    SELECT @ip = client_net_address
        FROM sys.dm_exec_connections
        WHERE session_id = @@SPID;

    INSERT DBA_Utility.dbo.ProcedureChanges
    (
        EventType,
        EventDDL,
        SchemaName,
        ObjectName,
        DatabaseName,
        HostName,
        IPAddress,
        ProgramName,
        LoginName,
        ObjectType
    )
    SELECT
        @EventData.value('(/EVENT_INSTANCE/EventType)[1]',   'NVARCHAR(100)'), 
        @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'NVARCHAR(MAX)'),
        @EventData.value('(/EVENT_INSTANCE/SchemaName)[1]',  'NVARCHAR(255)'), 
        @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]',  'NVARCHAR(255)'),
        DB_NAME(), 
        HOST_NAME(), 
        @ip, 
        PROGRAM_NAME(), 
        SUSER_SNAME(),
        'PROCEDURE'        
        ;
END



GO
DISABLE TRIGGER [Tg_CaptureProcedureChangeChanges] ON DATABASE
GO
/****** Object:  DdlTrigger [Tg_HMAFleetCaptureTablesChangeChanges]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/15/2018
-- Description:	Capture all change in all database
-- =============================================
create TRIGGER [Tg_HMAFleetCaptureTablesChangeChanges]
    ON DATABASE
    FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EventData XML = EVENTDATA(), @ip VARCHAR(32);

    SELECT @ip = client_net_address
        FROM sys.dm_exec_connections
        WHERE session_id = @@SPID;

    INSERT DBA_Utility.dbo.ProcedureChanges
    (
        EventType,
        EventDDL,
        SchemaName,
        ObjectName,
        DatabaseName,
        HostName,
        IPAddress,
        ProgramName,
        LoginName,
        ObjectType
    )
    SELECT
        @EventData.value('(/EVENT_INSTANCE/EventType)[1]',   'NVARCHAR(100)'), 
        @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'NVARCHAR(MAX)'),
        @EventData.value('(/EVENT_INSTANCE/SchemaName)[1]',  'NVARCHAR(255)'), 
        @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]',  'NVARCHAR(255)'),
        DB_NAME(), 
        HOST_NAME(), 
        @ip, 
        PROGRAM_NAME(), 
        SUSER_SNAME(),
        'table';
END







GO
DISABLE TRIGGER [Tg_HMAFleetCaptureTablesChangeChanges] ON DATABASE
GO
/****** Object:  DdlTrigger [Tg_HMAFleetCaptureViewsChangeChanges]    Script Date: 3/14/2025 4:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [Tg_HMAFleetCaptureViewsChangeChanges]
    ON DATABASE
    FOR CREATE_VIEW, ALTER_VIEW, DROP_VIEW
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EventData XML = EVENTDATA(), @ip VARCHAR(32);

    SELECT @ip = client_net_address
        FROM sys.dm_exec_connections
        WHERE session_id = @@SPID;

    INSERT DBA_Utility.dbo.ProcedureChanges
    (
        EventType,
        EventDDL,
        SchemaName,
        ObjectName,
        DatabaseName,
        HostName,
        IPAddress,
        ProgramName,
        LoginName,
        ObjectType
    )
    SELECT
        @EventData.value('(/EVENT_INSTANCE/EventType)[1]',   'NVARCHAR(100)'), 
        @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'NVARCHAR(MAX)'),
        @EventData.value('(/EVENT_INSTANCE/SchemaName)[1]',  'NVARCHAR(255)'), 
        @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]',  'NVARCHAR(255)'),
        DB_NAME(), 
        HOST_NAME(), 
        @ip, 
        PROGRAM_NAME(), 
        SUSER_SNAME(),
        'view'
        ;
END
GO
DISABLE TRIGGER [Tg_HMAFleetCaptureViewsChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_CaptureFunctionChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_CaptureProcedureChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_HMAFleetCaptureTablesChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_HMAFleetCaptureViewsChangeChanges] ON DATABASE
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbCompany"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbUser"
            Begin Extent = 
               Top = 6
               Left = 235
               Bottom = 114
               Right = 402
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbUserCompany"
            Begin Extent = 
               Top = 27
               Left = 471
               Bottom = 135
               Right = 622
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbUserLink"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 210
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbUserSTM"
            Begin Extent = 
               Top = 146
               Left = 233
               Bottom = 239
               Right = 384
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbUserSTMLink"
            Begin Extent = 
               Top = 148
               Left = 455
               Bottom = 241
               Right = 606
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_usercompany_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_usercompany_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_usercompany_info'
GO
USE [master]
GO
ALTER DATABASE [HMAFleet] SET  READ_WRITE 
GO
