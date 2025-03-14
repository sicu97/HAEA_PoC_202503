USE [master]
GO
/****** Object:  Database [HyundaiApp]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE DATABASE [HyundaiApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HyundaiApp', FILENAME = N'E:\SQLData\HyundaiApp.mdf' , SIZE = 24535040KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HyundaiApp_log', FILENAME = N'F:\SQL Logs\HyundaiApp.ldf' , SIZE = 450368KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [HyundaiApp] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HyundaiApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HyundaiApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HyundaiApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HyundaiApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HyundaiApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HyundaiApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [HyundaiApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HyundaiApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HyundaiApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HyundaiApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HyundaiApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HyundaiApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HyundaiApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HyundaiApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HyundaiApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HyundaiApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HyundaiApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HyundaiApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HyundaiApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HyundaiApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HyundaiApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HyundaiApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HyundaiApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HyundaiApp] SET RECOVERY FULL 
GO
ALTER DATABASE [HyundaiApp] SET  MULTI_USER 
GO
ALTER DATABASE [HyundaiApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HyundaiApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HyundaiApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HyundaiApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HyundaiApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HyundaiApp] SET QUERY_STORE = OFF
GO
USE [HyundaiApp]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HyundaiApp]
GO
/****** Object:  User [VWalode_HIS61785]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [VWalode_HIS61785] FOR LOGIN [VWalode_HIS61785] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Test_svc_sap_team]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Test_svc_sap_team] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Swapnil_HIS64104]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Swapnil_HIS64104] FOR LOGIN [Swapnil_HIS64104] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svc_web_services]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [svc_web_services] FOR LOGIN [svc_web_services] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [svc_linkserver_incentive]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [svc_linkserver_incentive] FOR LOGIN [svc_linkserver_incentive] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SVC_DLP_DBSCAN]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [SVC_DLP_DBSCAN] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ssharma]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [ssharma] FOR LOGIN [ssharma] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_webmethod]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_webmethod] FOR LOGIN [srv_webmethod] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_web_services]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_web_services] FOR LOGIN [srv_web_services] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_ssis]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_ssis] FOR LOGIN [srv_ssis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_sap_team]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_sap_team] FOR LOGIN [srv_sap_team] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_reports]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_reports] FOR LOGIN [srv_reports] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_myhyundai]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_myhyundai] FOR LOGIN [srv_myhyundai] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_hyundaiAPP]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_hyundaiAPP] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_hmmausa]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_hmmausa] FOR LOGIN [srv_hmmausa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_HMGMAUSA]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_HMGMAUSA] FOR LOGIN [srv_HMGMAUSA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_hmafleet]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_hmafleet] FOR LOGIN [srv_hmafleet] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_genesis]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_genesis] FOR LOGIN [srv_genesis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_dts]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_dts] FOR LOGIN [srv_dts] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [srv_datawarehouse]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [srv_datawarehouse] FOR LOGIN [srv_datawarehouse] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Sohini_HIS61541]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Sohini_HIS61541] FOR LOGIN [Sohini_HIS61541] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_web_services]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Service_web_services] FOR LOGIN [Service_web_services] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_sap_team]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Service_sap_team] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_reports]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Service_reports] FOR LOGIN [Service_reports] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Service_datawarehouse]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Service_datawarehouse] FOR LOGIN [Service_datawarehouse] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sap_team]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [sap_team] FOR LOGIN [sap_team] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Rohit_HIS61273]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Rohit_HIS61273] FOR LOGIN [Rohit_HIS61273] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Rajesh_HIS62647]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Rajesh_HIS62647] FOR LOGIN [Rajesh_HIS62647] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [pvu_HIS91948]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [pvu_HIS91948] FOR LOGIN [pvu_HIS91948] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mvillar_HIS94466]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [mvillar_HIS94466] FOR LOGIN [mvillar_HIS94466] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [merik]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [merik] FOR LOGIN [merik] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kswamy_HIS61784]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Kswamy_HIS61784] FOR LOGIN [Kswamy_HIS61784] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [JayNohProductionLogin]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [JayNohProductionLogin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Hyundai_user]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Hyundai_user] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Hyundai_APP]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Hyundai_APP] FOR LOGIN [Hyundai_APP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [his92416]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [his92416] FOR LOGIN [his92416] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [his91948]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [his91948] FOR LOGIN [his91948] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HIS62797_Komal]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [HIS62797_Komal] FOR LOGIN [HIS62797_Komal] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Gen2Login]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Gen2Login] FOR LOGIN [Gen2Login] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Erik_HIS62546]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Erik_HIS62546] FOR LOGIN [Erik_HIS62546] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bradpark_HIS10296]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Bradpark_HIS10296] FOR LOGIN [Bradpark_HIS10296] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BradPark_10296]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [BradPark_10296] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bharadwaj_HIS61575]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Bharadwaj_HIS61575] FOR LOGIN [Bharadwaj_HIS61575] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Bhagyashree_HIS64103]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Bhagyashree_HIS64103] FOR LOGIN [Bhagyashree_HIS64103] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Ayisha_HIS62584]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Ayisha_HIS62584] FOR LOGIN [Ayisha_HIS62584] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [aporter]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [aporter] FOR LOGIN [aporter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Anjali_HIS62565]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Anjali_HIS62565] FOR LOGIN [Anjali_HIS62565] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Andrew_SA_Login]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE USER [Andrew_SA_Login] FOR LOGIN [Andrew_SA_Login] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [SAP]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [SAP]
GO
/****** Object:  DatabaseRole [HyundaiAPP]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [HyundaiAPP]
GO
/****** Object:  DatabaseRole [grp_support]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [grp_support]
GO
/****** Object:  DatabaseRole [grp_HyundaiApp_support]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [grp_HyundaiApp_support]
GO
/****** Object:  DatabaseRole [grp_edw_services]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [grp_edw_services]
GO
/****** Object:  DatabaseRole [db_sp_fn_exec]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE ROLE [db_sp_fn_exec]
GO
ALTER ROLE [db_datareader] ADD MEMBER [VWalode_HIS61785]
GO
ALTER ROLE [SAP] ADD MEMBER [Test_svc_sap_team]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Test_svc_sap_team]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Test_svc_sap_team]
GO
ALTER ROLE [grp_support] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [grp_HyundaiApp_support] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Swapnil_HIS64104]
GO
ALTER ROLE [db_owner] ADD MEMBER [svc_web_services]
GO
ALTER ROLE [db_datareader] ADD MEMBER [svc_linkserver_incentive]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [svc_linkserver_incentive]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SVC_DLP_DBSCAN]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ssharma]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ssharma]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [srv_webmethod]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_webmethod]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_web_services]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_ssis]
GO
ALTER ROLE [SAP] ADD MEMBER [srv_sap_team]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_sap_team]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [srv_sap_team]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_reports]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_myhyundai]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_myhyundai]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_hyundaiAPP]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_hmafleet]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [srv_genesis]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_genesis]
GO
ALTER ROLE [db_owner] ADD MEMBER [srv_dts]
GO
ALTER ROLE [grp_edw_services] ADD MEMBER [srv_datawarehouse]
GO
ALTER ROLE [db_datareader] ADD MEMBER [srv_datawarehouse]
GO
ALTER ROLE [db_owner] ADD MEMBER [Service_web_services]
GO
ALTER ROLE [SAP] ADD MEMBER [Service_sap_team]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Service_datawarehouse]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Service_datawarehouse]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sap_team]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Rajesh_HIS62647]
GO
ALTER ROLE [db_datareader] ADD MEMBER [pvu_HIS91948]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mvillar_HIS94466]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [merik]
GO
ALTER ROLE [db_datareader] ADD MEMBER [merik]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [merik]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Kswamy_HIS61784]
GO
ALTER ROLE [db_datareader] ADD MEMBER [JayNohProductionLogin]
GO
ALTER ROLE [db_owner] ADD MEMBER [Hyundai_user]
GO
ALTER ROLE [db_owner] ADD MEMBER [Hyundai_APP]
GO
ALTER ROLE [db_datareader] ADD MEMBER [his92416]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [his91948]
GO
ALTER ROLE [db_datareader] ADD MEMBER [his91948]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [his91948]
GO
ALTER ROLE [db_datareader] ADD MEMBER [HIS62797_Komal]
GO
ALTER ROLE [db_owner] ADD MEMBER [Gen2Login]
GO
ALTER ROLE [grp_support] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [grp_HyundaiApp_support] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Erik_HIS62546]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [db_owner] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Bradpark_HIS10296]
GO
ALTER ROLE [HyundaiAPP] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BradPark_10296]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bharadwaj_HIS61575]
GO
ALTER ROLE [grp_support] ADD MEMBER [Bhagyashree_HIS64103]
GO
ALTER ROLE [grp_HyundaiApp_support] ADD MEMBER [Bhagyashree_HIS64103]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bhagyashree_HIS64103]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Ayisha_HIS62584]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aporter]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [aporter]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Anjali_HIS62565]
GO
ALTER ROLE [db_owner] ADD MEMBER [Andrew_SA_Login]
GO
/****** Object:  Schema [AS400]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [AS400]
GO
/****** Object:  Schema [Byo]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [Byo]
GO
/****** Object:  Schema [dealer]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [dealer]
GO
/****** Object:  Schema [developer]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [developer]
GO
/****** Object:  Schema [dwh]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [dwh]
GO
/****** Object:  Schema [Inventory]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [Inventory]
GO
/****** Object:  Schema [mig]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [mig]
GO
/****** Object:  Schema [PIN]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [PIN]
GO
/****** Object:  Schema [profile]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE SCHEMA [profile]
GO
/****** Object:  UserDefinedFunction [dbo].[Date_GetMonthListByDateRange]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO




--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_Util_Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
--DROP FUNCTION [dbo].[udf_Util_Split]

create FUNCTION [dbo].[Date_GetMonthListByDateRange]
(
	@startDate datetime,
	@endDate datetime
)  
RETURNS @RtnValue table (
	MonthDate datetime
) 
AS  
BEGIN

while @startDate<=@endDate
begin	
	set @startDate=[dbo].[FirstDateOfMonth](@startDate)
	 insert @RtnValue select @startDate
	set @startDate=DATEADD(month,1,@startDate)

end

    Return
END







GO
/****** Object:  UserDefinedFunction [dbo].[FirstDateOfMonth]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:  Nick Nguyen
-- Created on: 12/16/2010
-- Description: returns a datetime value for the specified year, month and day
-- =============================================
create function [dbo].[FirstDateOfMonth]
( @Date datetime)
returns datetime
as
    begin
		return dateadd(month,((Year(@date)-1900)*12)+Month(@date)-1,0)
    end

--Select [dbo].[MidDateOfMonth](getdate())

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetAccessories]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 5/3/1012
-- Description: Return Accessories 
-- Ex: select * from dbo.[fnHCircle_GetAccessories] ('63452F45','2013')
-- Ex: select * from dbo.[fnHCircle_GetAccessories] (null,0)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetAccessories]
    (
      @MapModelCodePID varchar(100),
      @Year  varchar(4)
    )
RETURNS @ResultTable table
(
                [MapModelCodePID] varchar(10),
                [ModelYear] varchar(10),
                [AcesssoryCode] nvarchar(256),
                [DescCode] nvarchar(256)


)
AS
BEGIN

	DECLARE @ModelCode varchar(50)
	SET @ModelCode=''   
    SELECT @ModelCode=@ModelCode+','+[EquivalentModelCodeID] 
			FROM [dbo].[EquivalentModelCode] 
	WHERE Charindex(@MapModelCodePID,[EquivalentModelCodeID])>0

	 IF @ModelCode='' SET @ModelCode=null			   
     SET @ModelCode=COALESCE(@ModelCode,@MapModelCodePID)


    INSERT  INTO @ResultTable
			SELECT 
				  [ModelCode]
				  ,[ModelYear]
				  ,[AccessoryCode]
				  ,replace([DescCode],'*','')
			  FROM [HyundaiApp].[Byo].[VehicleAccessory]
      WHERE   (charindex(ModelCode,@ModelCode)>0 or  @ModelCode is null)
				AND ([ModelYear]=@Year or @Year =0) and [ModelYear] >2011
				and [HyundaiApp].[Byo].[VehicleAccessory].[Desc] <>'*'

   RETURN
 END




GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetAccessories_Hfleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 5/3/1012
-- Description: Return Accessories 
-- Ex: select * from [dbo].[fnHCircle_GetAccessories_Hfleet] ('16402F45','2014')
-- Ex: select * from dbo.[fnHCircle_GetAccessories_Hfleet] (null,0)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetAccessories_Hfleet]
    (
      @MapModelCodePID varchar(100),
      @Year  varchar(4)
    )
RETURNS @ResultTable table
(
                [MapModelCodePID] varchar(10),
                [ModelYear] varchar(10),
                [AcesssoryCode] nvarchar(256),
                [DescCode] nvarchar(256),
                [ExColorCode] varchar(5),
                [InColorCode] varchar(5),
                [PkgCode] varchar(5),
                [InColorCodeDesc] varchar(50)
)
AS
BEGIN
    INSERT  INTO @ResultTable
			SELECT distinct 
			B.MODELCODE
			,B.[MODELYEAR] as [ModelYear]
			,B.[ACCESSORYCODE] as [AcesssoryCode]
			,replace(replace(replace(replace(A.ACCESSORY_DESC,':',''),'*',''),'Â¿','®'),'/ ','/') + ' (' + B.[ACCESSORYCODE] +')' as [DescCode] 
			,B.EXTERIORCOLORCODE as [ExColorCode]
			,B.INTERIORCOLORCODE as [InColorCode]
			,B.ACCESSORYGROUPCODE as [PkgCode]
			,CASE WHEN B.INTERIORCOLORCODE IS NULL THEN NULL ELSE B.INTERIORCOLORCODE + '-' + c.InteriorColorLongDesc END AS [InColorCodeDesc]
			FROM [HyundaiUSA].[dwh].[ACCESSORY_MASTER] A
			inner join [HyundaiUSA].[dwh].[ACCESSORY_AVAIL_RULE] B on
			A.MODELYEAR=B.MODELYEAR and ([SERIESCODE] + [FAMILYCODE] + [DOORCODE] + [TRIMCODE] + [TRANSCODE]+ [DRIVETRAINCODE] + [ENGINETYPECODE] + [MODELEMISSIONCODE])=B.MODELCODE
			and A.[ACCESSORYCODE]=B.[ACCESSORYCODE]
			left outer join HyundaiUSA.dwh.ModelColorDesc C
			on C.InteriorColorCode =B.INTERIORCOLORCODE
			where (B.ModelCode=@MapModelCodePID or  @MapModelCodePID is null)
		   AND (B.MODELYEAR=@Year or @Year =0) and (B.[ModelYear] >2011 and B.[ACCESSORYCODE] not in ('PD','CS','FE') and B.[IS_AVAILABLE_FOR_ALLOCATION]=1 and B.[ACCESSORYTYPECODE]='PIO')
		   and B.MODELYEAR > year(DATEADD(year,-3,getdate()))
   RETURN
 END




GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetAccessoriesCodeByVIN]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Nick Nguyen
-- Create date: 5/3/1012
-- Description: Return AccessoriesByVIN
-- Ex: select * from [dbo].[fnHCircle_GetAccessoriesCodeByVIN]('KMHGH4JH3DU062439')
-- Ex: 
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetAccessoriesCodeByVIN]
    (
      @VIN varchar(100)
   
    )
RETURNS @ResultTable table
				(
                [VIN] varchar(17) null,
                [AcesssoryCode] nvarchar(10) null,
                [Description] nvarchar(100) null
                )
AS
BEGIN

	DECLARE @list as varchar(100)
	DECLARE @SplitOn as varchar(2)
	SET  @SplitOn=','
	--------------------------------------------------------------------------
	--GET AccessoryList
	
	SELECT @list=[C2PC01_PortInstlOPT1]
       +','+[C2PC02_PortInstlOPT2]
       +','+[C2PC03_PortInstlOPT3]
       +','+[C2PC04_PortInstlOPT4]
       +','+[C2PC05_PortInstlOPT5]
       +','+[C2PC06_PortInstlOPT6]
       +','+[C2PC07_PortInstlOPT7]
       +','+[C2PC08_PortInstlOPT8]
       +','+[C2PC09_PortInstlOPT9]
       +','+[C2PC10_PortInstlOPT10]
       +','+[C2PA01_FrtLoadPIO1]
       +','+[C2PA02_FrtLoadPIO2]
       +','+[C2PA03_FrtLoadPIO3]
       +','+[C2PA04_FrtLoadPIO4]
       +','+[C2PA05_FrtLoadPIO5]
       +','+[C2PA06_FrtLoadPIO6] 
       +','+[C2PA07_FrtLoadPIO7]
       +','+[C2PA08_FrtLoadPIO8]
       +','+[C2PA09_FrtLoadPIO9]
       +','+[C2PA10_FrtLoadPIO10]+','
       FROM [mig].[Tb_400_VWVM2P_VINMaster]
       WHERE [C2FVIN_FullVIN]=@VIN
		-----------------------------------------------------
	WHILE (Charindex(@SplitOn,@List)>0)
	BEGIN
	 Insert Into @ResultTable ([VIN],AcesssoryCode,Description)
	  Select 
	    VIN=@VIN,
		AcesssoryCode = ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1))), 
		isnull(replace((select top 1 [Desc] FROM  Byo.VehicleAccessory where AccessoryCode=ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1))) and [ModelYear] > 2011 ),'*',''),'')
		
	  Set @List = Substring(@List,Charindex(@SplitOn,@List)+len(@SplitOn),len(@List))
	END
   ---------------------------------------------------------------------
   DELETE FROM @ResultTable WHERE AcesssoryCode=''
    
         
   RETURN
 END


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetColors]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.[fnHCircle_GetColors] (null,2013) where mapvehiclepid='E' order by colorname
--  select * from dbo.[fnHCircle_GetColors] ('E0422R85_01',2013) where mapvehiclepid='E' order by colorname
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetColors]
    (
      @MapModelCodePID varchar(100),
      @Year int
    )
RETURNS @ResultTable table
(
                [MapVehiclePID] varchar(10),
                [MapModelCodePID] varchar(13),
                [MapColorPID] varchar(10),
                [ColorName] nvarchar(256),
                [ColorDesc] nvarchar(256),
                [MapInteriorColorID] VARCHAR(50),
                [InteriorColorName] VARCHAR(50),
                [InteriorColorDesc] VARCHAR(50),
                [VehicleModelCodeID] varchar(13),
                [VehicleExteriorColorID]varchar(10),
				[Year]  int
)
AS
BEGIN

    DECLARE @LatestDate datetime
    SELECT top 1 @LatestDate=datemodified FROM HyundaiUSA.Byo.VehicleExteriorColor order by DateModified desc
    SET @LatestDate= DATEADD(mi,-1,@LatestDate)





    INSERT  INTO @ResultTable
        SELECT  distinct
                 Series [MapVehiclePID],
                 CASE WHEN Series='E' THEN  right(COI.ModelCode,11) ELSE  CO.ModelCode END [MapModelCodePID],
                 ExteriorColorCode [MapColorPID],
                 COI.ExteriorColorName  ExteriorColorName,
                 COI.ExteriorColorName   ExteriorColorName,
                 CO.SeatColorDesc [MapInteriorColorPID],
                 CO.SeatColorDesc InteriorColorName, 
                 CO.SeatColorDesc InteriorColorName, 
                 CO.ModelCode [VehicleModelCodeID],
                 CO.ExteriorColorCode [VehicleExteriorColorID],
                CO.ModelYear    
       FROM HyundaiUSA.dwh.ModelColorDesc CO 
			INNER JOIN  HyundaiUSA.[dbo].[vw_ExteriorColor] COI 
			ON  charindex(CO.ModelCode,COI.ModelCode)>0
			AND CO.ModelYear=COI.VehicleYear
			AND CO.ExteriorColorCode IN (SELECT value from [dbo].[udf_Util_Split](COI.ExteriorID,','))
		WHERE CO.ModelCode is not null
			AND (charindex(@MapModelCodePID,COI.ModelCode)>0    
				OR @MapModelCodePID is null)
			AND (@Year IN (ModelYear,0)) and ModelYear   >2010
			 AND COI.DateModified>@LatestDate
	--AND  InteriorID not like '%RY_1%'

   RETURN
 END




GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetColors_Hfleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.[fnHCircle_GetColors_Hfleet] ('E0422R85_02',2013) order by MAPMODELCODEPID
-- select * from dbo.[fnHCircle_GetColors_Hfleet] (null,'2014') WHERE MapModelCodePID='16402F45'  order by MAPMODELCODEPID
-- Modified: 5/2/2019, Erik Mildner, Added temporary import logic for 2019 Accent|Elantra
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetColors_Hfleet]
    (
      @MapModelCodePID varchar(100),
      @Year  int
    )
RETURNS @ResultTable table
(
                [MapVehiclePID] varchar(10),
                [MapModelCodePID] varchar(14),
                [MapColorPID] varchar(10),
                [ColorName] nvarchar(256),
                [ColorDesc] nvarchar(256),
                [MapInteriorColorID] VARCHAR(50),
                [InteriorColorName] VARCHAR(50),
                [InteriorColorDesc] VARCHAR(50),
                [VehicleModelCodeID] varchar(14),
                [VehicleExteriorColorID]varchar(10),
				[Year]  int
)
AS
BEGIN







    INSERT  INTO @ResultTable
        SELECT  distinct
                 Series [MapVehiclePID],
                 CO.ModelCode [MapModelCodePID],
                 ExteriorColorCode [MapColorPID],
                 CO.ExteriorColorLongDesc + ' (' +ExteriorColorCode + ')'  ExteriorColorName,
                 CO.ExteriorColorLongDesc   ExteriorColorName,
                 CO.InteriorColorCode [MapInteriorColorPID],
                 SeatColorDesc + ' (' +CO.InteriorColorCode + ')' InteriorColorName, 
                 SeatColorDesc InteriorColorName, 
                  CO.ModelCode [VehicleModelCodeID],
                 ExteriorColorCode [VehicleExteriorColorID],
                CO.ModelYear   
         FROM HyundaiUSA.dwh.ModelColorDesc CO 
          JOIN   Byo.VWMCMP_HyundaiFleet C
      ON (CO.ModelYear=C.S4CTNE+C.S4YRNE

	     AND CO.Series=C.S4SERI
	     AND charindex(CO.ModelCode,C.HyundaiFleetModelCode)>0
	     )         
		 WHERE CO.ModelCode is not null
			AND (@MapModelCodePID=CO.ModelCode
				OR  @MapModelCodePID is null)
			AND (CO.ModelYear  =@Year or @Year =0) and CO.ModelYear  >2010 		
			AND IsDeleted=0
			AND (CO.IsPoActive=1 OR (LEFT(CO.ModelCode,1) IN('4','1') AND CO.ModelYear = 2019)) -- TEMPORARY FIX to set agreed upon colors as active in Fleet 


   RETURN
 END


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetExteriorColors]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Erik Mildner
-- Create date: 11/15/2017
-- Description:	Get color inventory not relying on HyundaiUSA.[dbo].[vw_ExteriorColor].  Reason is user input data.
-- Modified: 4/30/2018, Erik Mildner, Added using of two model codes because some trim names have two model codes.
-- Ex: select * from dbo.[fnHCircle_GetExteriorColors] ('48462F45', 2017)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetExteriorColors]
    (
      @MapModelCodePID varchar(100),
      @Year  int
    )
RETURNS @ResultTable table
(
                [MapVehiclePID] varchar(10),
                [MapModelCodePID] varchar(13),
                [MapColorPID] varchar(10),
                [ColorDesc] nvarchar(256),
				[ColorName] nvarchar(256),
                [VehicleModelCodeID] varchar(13),
                [VehicleExteriorColorID]varchar(10),
				[Year] int
)
AS
BEGIN

    INSERT  INTO @ResultTable
        SELECT DISTINCT			
			CO.Series [MapVehiclePID],
			@MapModelCodePID [MapModelCodePID],
			CO.ExteriorColorCode [MapColorPID],
			CO.ExteriorColorLongDesc [ColorDesc],
			CO.ExteriorColorLongDesc [ColorName], 
			@MapModelCodePID [VehicleModelCodeID],
			CO.ExteriorColorCode [VehicleExteriorColorID],
			CO.ModelYear
		FROM HyundaiUSA.dwh.ModelColorDesc CO
		INNER JOIN (
			select trims1.MapModelCodePID from dbo.fnHCircle_GetTrims_Ex(left(@MapModelCodePID,1),@Year,0,0) trims1
				inner join 
					(
						select trimname, MapModelCodePID from dbo.fnHCircle_GetTrims_Ex(left(@MapModelCodePID,1),@Year,0,0)
						where MapModelCodePID = @MapModelCodePID
					) trims2
					on trims2.TrimName = trims1.TrimName
			) as TrimCodes
		ON  CO.ModelCode = TrimCodes.MapModelCodePID
		AND (@Year IN (CO.ModelYear,0)) AND CO.ModelYear > 2016


   RETURN
 END

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetInteriorColors]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Erik Mildner
-- Create date: 11/21/2017
-- Description:	Get interior color inventory.
-- Ex: select * from dbo.[fnHCircle_GetInteriorColors] ('48462F45', 2017, 'MJB')
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetInteriorColors]
    (
      @MapModelCodePID varchar(100),
      @Year int,
	  @ExteriorColorCode varchar(10)
    )
RETURNS @ResultTable table
(
                [MapColorPID] varchar(10),
				[ColorName] nvarchar(256)
)
AS
BEGIN

    INSERT INTO @ResultTable
        SELECT  distinct
                 CO.InteriorColorCode [MapColorPID],
                 CO.InteriorColorShortDesc [ColorName]
       FROM HyundaiUSA.dwh.ModelColorDesc CO 
			WHERE  CO.ModelCode = @MapModelCodePID
			AND (@Year IN (CO.ModelYear,0)) AND CO.ModelYear > 2010
			AND ExteriorColorCode = @ExteriorColorCode;

   RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetSpeicalCoupons]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from [fnHCircle_GetSpeicalCoupons] ('16402F45',2,2014,'affl') 
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetSpeicalCoupons] ( 
@VehicleModelCodeId nvarchar(30),
@PlanTypePid int,
@Modelyear int,
@PackageCode nvarchar(20)
 )

RETURNS @ResultTable table
(
       [CouponPID] int
      ,[VehicleID] varchar(100)
      ,[EffectiveDate] datetime
      ,[ExpirationDate] datetime
      ,[IncentiveCashAmt] numeric(6,2)
      ,[SpecialText] varchar(500)
      ,[IncludePicture] bit
      ,[isActive] bit
      --,[UpdateSync] timestamp
      ,[ModelYear] nvarchar(4)
      ,[VehicleName] nvarchar(50)
      ,[PlanTypePID] int
      ,[ExclusionTypePID] int
      ,[VehiclePackageId] nvarchar(100)
      ,[VehicleModelCodeId] nvarchar(100)
)
AS
begin
	
	declare @ModelCode varchar(100),@packageAll varchar(10)
	SET @ModelCode=''
	SELECT  @ModelCode=@ModelCode+','+EquivalentModelCodeID
			 FROM [dbo].[EquivalentModelCode] E						
	WHERE charindex( @VehicleModelCodeId,[EquivalentModelCodeID])>0
    SELECT @ModelCode=@ModelCode+','+PZEVVehicleModelCodeID 
			  FROM [dbo].[PZEV_Packages]
			WHERE [OrgVehicleModelCodeID]=@VehicleModelCodeId 
					OR Charindex([OrgVehicleModelCodeID],@ModelCode)>0


if len(@ModelCode)=0
begin
set @ModelCode=@VehicleModelCodeId
end

	IF exists(select 1 from  dbo.vw_SpecialCoupon 
			  where charindex(vehiclemodelcodeid1,@ModelCode)>0 and PlanTypePID=@PlanTypePid and ModelYear=@Modelyear)
	BEGIN
		 select top 1 @packageAll=[VehiclePackageId]
		 from  dbo.vw_SpecialCoupon 
		 where (charindex(vehiclemodelcodeid1,@ModelCode)>0 and PlanTypePID=@PlanTypePid and ModelYear=@Modelyear) and substring(@VehicleModelCodeId,1,1)=vehicleid

		 if(@packageAll='All')
			set @PackageCode='01'
		INSERT  INTO @ResultTable
		select top 1 [CouponPID]
		  ,[VehicleID]
		  ,[EffectiveDate]
		  ,[ExpirationDate]
		  ,[IncentiveCashAmt]
		  ,[SpecialText]
		  ,[IncludePicture]
		  ,[isActive]
		 -- ,[UpdateSync]
		  ,[ModelYear]
		  ,[VehicleName]
		  ,[PlanTypePID]
		  ,[ExclusionTypePID]
		  ,[VehiclePackageId]
		  ,[VehicleModelCodeId1] as VehicleModelCodeId
		  from  dbo.vw_SpecialCoupon 
		 where (charindex(vehiclemodelcodeid1,@ModelCode)>0 and PlanTypePID=@PlanTypePid and ModelYear=@Modelyear) and substring(@VehicleModelCodeId,1,1)=vehicleid
		  AND ([VehiclePackageId] = @PackageCode or [VehiclePackageId]='All')
	   END 
   ELSE
   BEGIN
          select top 1 @packageAll=[VehiclePackageId]
		  from  dbo.vw_SpecialCoupon 
		  where (vehiclemodelcodeid1='All' and PlanTypePID=@PlanTypePid and ModelYear=@Modelyear)  and substring(@VehicleModelCodeId,1,1)=vehicleid
		  if(@packageAll='All')
			set @PackageCode='01'

		INSERT  INTO @ResultTable
		select [CouponPID]
		  ,[VehicleID]
		  ,[EffectiveDate]
		  ,[ExpirationDate]
		  ,[IncentiveCashAmt]
		  ,[SpecialText]
		  ,[IncludePicture]
		  ,[isActive]
		 -- ,[UpdateSync]
		  ,[ModelYear]
		  ,[VehicleName]
		  ,[PlanTypePID]
		  ,[ExclusionTypePID]
		  ,[VehiclePackageId]
		  ,[VehicleModelCodeId1] as VehicleModelCodeId
		  from  dbo.vw_SpecialCoupon 
		 where (vehiclemodelcodeid1='All' and PlanTypePID=@PlanTypePid and ModelYear=@Modelyear)  and substring(@VehicleModelCodeId,1,1)=vehicleid
		  AND ([VehiclePackageId] = @PackageCode or [VehiclePackageId]='All')
   END
	RETURN
end


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetVehicleExclusionsByPlan]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Erik Mildner
-- Create date: 4/23/2019
-- Description:	Get vehicle exclusion data to filter data business doesn't want in Circle
-- Ex: select * from dbo.[fnHCircle_GetVehicleExclusionsByPlan] (2, 2019, 1, 0)
-- Modified: 1/30/2020, Erik Mildner, added column Region to @ResultTable
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetVehicleExclusionsByPlan]
    (
      @PlanTypePID int,
      @Year int,
	  @ExclusionTypePID int,
	  @CompanyPID int
    )
RETURNS @ResultTable table
(
    [MapVehiclePID] varchar(20),
    [MapVehiclePackageID] varchar(20),
    [MapVehicleModelCD] varchar(20),
    [MapVehicleGroupPID] varchar(20),
	[MapVehicleRegion] varchar(20)
)
AS
BEGIN

    INSERT INTO @ResultTable
        SELECT DISTINCT
			VehicleId as [MapVehiclePID],
			VehiclePackageId as [MapVehiclePackageID],
			VehicleModelCodeId	as [MapVehicleModelCD],
			ModelGroupCode as [MapVehicleGroupPID],
			Region as [MapVehicleRegion]
		FROM byo.VehicleExclusions ve
		WHERE VE.PlanTypePID = @PlanTypePID
		  and (VE.modelYear = @Year or VE.modelYear = 0)
		  and VE.ExclusionTypePID = @ExclusionTypePID
		  and (VE.CompanyPID = @CompanyPID or VE.CompanyPID = 0)
		  and VE.isActive = 1;

   RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetYearExclusionsByPlan]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Erik Mildner
-- Create date: 5/16/2019
-- Description:	Get model year exclusion data
-- Modified: 10/22/2019, Erik, Added Brand to @ResultTable
-- Ex: select * from dbo.[fnHCircle_GetYearExclusionsByPlan] (1)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetYearExclusionsByPlan]
    (
      @PlanTypePID int
    )
RETURNS @ResultTable table
(
    ModelYear int,
	Brand varchar(20)
)
AS
BEGIN

    INSERT INTO @ResultTable
        SELECT DISTINCT
			modelYear as [ModelYear],
			Brand as [Brand]
		FROM byo.VehicleExclusions VE
		WHERE VE.PlanTypePID IN (@PlanTypePID, 0)
		  and VE.ExclusionTypePID = 4
		  and VE.isActive = 1;

   RETURN
 END

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_SAPGetTrims_Hfleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- select * from [dbo].[fnHCircle_SAPGetTrims_Hfleet] (null,'0')
CREATE FUNCTION [dbo].[fnHCircle_SAPGetTrims_Hfleet] ( 
@VehicleMapID varchar(100),
@Year int
 )
RETURNS @ResultTable table
(
MapVehiclePID varchar(1),
MapModelCodePID varchar(13),
VehicleYear varchar(4),
VehicleName varchar(150),
TrimName varchar(150),
EquivalentModelCode varchar(150)
)
AS
BEGIN
	
	DECLARE @CheckYear int
	SET  @CheckYear=YEAR(getdate())-2  

	INSERT INTO @ResultTable

       SELECT   distinct 
                MapVehiclePID,
                [dbo].[udf_CheckEquusModelCode] (HyundaiFleetModelCode,A.TrimName) 'MapModelCodePID',             
                A.VehicleYear,
                'VehicleName' = case left(A.MapVehiclePID,1)
                when 'G' then 'Sonata Hybrid'
                else A.VehicleName
                end,
                ( A.[S4SERD]) + ' (' + [dbo].[udf_CheckEquusModelCode] (HyundaiFleetModelCode,A.[S4SERD]) + ')' as TrimName,
               (select [dbo].[udf_HyundaiFleet_EquivalentModelCodeID](HyundaiFleetModelCode,VehicleYear)) as 'EquivalentModelCode'
       FROM       Byo.AS400ToTrimMap_HyundaiFleet (NOLOCK) A 
      WHERE    (VehicleYear=@Year OR @Year = 0) 
		 AND VehicleYear > @CheckYear 
		 AND (MapVehiclePID=@VehicleMapID OR @VehicleMapID is null) 
		 and SUBSTRING(HyundaiFleetModelCode, 5, 1) not in ('1','3')
         AND HyundaiFleetModelCode<>'0'
		 order by VehicleYear

      RETURN
end


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_SAPGetTrims_Inventory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnHCircle_SAPGetTrims_Inventory] ( 
@VehicleMapID varchar(100),
@Year int
 )
RETURNS @ResultTable table
(
MapVehiclePID varchar(1),
MapModelCodePID varchar(13),
VehicleYear varchar(4),
VehicleName varchar(150),
TrimName varchar(150)
)
AS
begin
	DECLARE @LatestDate datetime
    SELECT top 1 @LatestDate=datemodified FROM HyundaiUSA.Byo.VehicleExteriorColor order by DateModified desc
    SET @LatestDate= DATEADD(mi,-1,@LatestDate)

insert into @ResultTable
SELECT  distinct 
                left(A.ModelCode,1) as MapVehiclePID,           
               [dbo].[udf_CheckEquusModelCode] (A.ModelCode,A.TrimName) 'MapModelCodePID' ,
                A.VehicleYear,
                'VehicleName' = case @VehicleMapID
                when 'G' then 'Sonata Hybrid'
                else A.VehicleName
                end,
                A.PowertrainName as TrimName
      FROM      hyundaiusa.dbo.vw_GetVehicleInfoBySapModelCode (NOLOCK) A
			   --INNER JOIN dbo.udf_Split(    (case when @VehicleMapID IN('6','J')then '6,J' 
						--					 else @VehicleMapID end),',') B
      -- ON left(A.ModelCode,1)=B.Value   OR @VehicleMapID is null
      WHERE (left(A.ModelCode,1)=@VehicleMapID   OR @VehicleMapID is null) and    
      (VehicleYear=@Year OR @Year = 0) AND A.DateModified>@LatestDate
      return
  end
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircleTrimBeginLeadingZero]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnHCircleTrimBeginLeadingZero] ( @str varchar(3) )
RETURNS varchar(3)
AS BEGIN
    DECLARE @RET varchar(3) 
    select  @RET = case when SUBSTRING(@str, 1, 1) = '0'
                        then ltrim(SUBSTRING(@str, 2, len(@str) - 1))
                        else ltrim(@str)
                   end
    return @RET

   END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetLatestModel]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.[fnHCirlce_GetLatestModel]('0','Accent')
-- =============================================
--drop FUNCTION [dbo].[fnHCirlce_GetLatestModel] 
CREATE FUNCTION [dbo].[fnHCirlce_GetLatestModel] 
(	
	-- Add the parameters for the function here
	 @MapVehiclePID varchar(20),
	 @vehicleName varchar(50)
)
RETURNS  @ResultTable table
(
                [MapVehiclePID] varchar(20),
                [ModelYear]  varchar(4),
                [VehicleName] varchar(100)
                --[VehicleTypeName] varchar(100),
                --[DrivetrainDesc] nvarchar(256),
                --[VehicleImageLoc] nvarchar(256)
				
) 
AS BEGIN 
	-- Add the SELECT statement with parameter references here
	
	if @MapVehiclePID = '0'
	begin
			INSERT  INTO @ResultTable
			select  [MapVehiclePID], 
				max([ModelYear]) as ModelYear
				,LTRIM(RTRIM([VehicleName]))  as [VehicleName]
				--, COALESCE([VehicleTypeName],'') AS [VehicleTypeName]
				--, COALESCE(DrivetrainDesc,'') AS [DrivetrainDesc]
				--, [DefaultImage] AS [VehicleImageLoc]  
				   from [dbo].[As400ToVehicleMap] 
				   where MapVehiclePID NOT IN (
                SELECT  Byo.SAPVehicleExclusions.VehicleId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.SAPVehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.SAPVehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.SAPVehicleExclusions.ExclusionTypePID
                WHERE   Byo.SAPVehicleExclusions.modelyear = [dbo].[As400ToVehicleMap].[ModelYear]
                        AND Byo.SAPVehicleExclusions.ExclusionTypePID = 1
                        AND Byo.SAPVehicleExclusions.isActive = 1
                       )
				group by  [MapVehiclePID], 
				 [VehicleName] 
	end
	else
		begin
			INSERT  INTO @ResultTable
			select top 2[MapVehiclePID], 
				  [ModelYear]
				,LTRIM(RTRIM([VehicleName]))  as [VehicleName]
				--, COALESCE([VehicleTypeName],'') AS [VehicleTypeName]
				--, COALESCE(DrivetrainDesc,'') AS [DrivetrainDesc]
				--, [DefaultImage] AS [VehicleImageLoc]  
				   from [dbo].[As400ToVehicleMap] 
				   where [MapVehiclePID]=@MapVehiclePID
				   and [VehicleName] =@vehicleName  AND MapVehiclePID NOT IN (
                SELECT  Byo.SAPVehicleExclusions.VehicleId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.SAPVehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.SAPVehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.SAPVehicleExclusions.ExclusionTypePID
                WHERE   Byo.SAPVehicleExclusions.modelyear = [dbo].[As400ToVehicleMap].[ModelYear]
                        AND Byo.SAPVehicleExclusions.ExclusionTypePID = 1
                        AND Byo.SAPVehicleExclusions.isActive = 1
                       )
				   order by [ModelYear] desc
		end
   RETURN
 END


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetLatestModel_Hfleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.[fnHCirlce_GetLatestModel_Hfleet]('0','Accent') order by mapvehiclepid
-- =============================================
--drop FUNCTION [dbo].[fnHCirlce_GetLatestModel] 
CREATE FUNCTION [dbo].[fnHCirlce_GetLatestModel_Hfleet] 
(	
	-- Add the parameters for the function here
	 @MapVehiclePID varchar(20),
	 @vehicleName varchar(50)
)
RETURNS  @ResultTable table
(
                [MapVehiclePID] varchar(20),
                [ModelYear]  varchar(4),
                [VehicleName] varchar(100)
                --[VehicleTypeName] varchar(100),
                --[DrivetrainDesc] nvarchar(256),
                --[VehicleImageLoc] nvarchar(256)
				
) 
AS BEGIN 
	-- Add the SELECT statement with parameter references here
	
	if @MapVehiclePID = '0'
	begin
			INSERT  INTO @ResultTable
			select  A.[MapVehiclePID], 
				max(A.[ModelYear]) as ModelYear
				,LTRIM(RTRIM(A.[VehicleName]))  as [VehicleName]
				--, COALESCE([VehicleTypeName],'') AS [VehicleTypeName]
				--, COALESCE(DrivetrainDesc,'') AS [DrivetrainDesc]
				--, [DefaultImage] AS [VehicleImageLoc]  
				   from [dbo].[As400ToVehicleMap] A
				   inner join [HyundaiUSA].[dwh].[ModelColorDesc] B
				   on A.ModelYear=b.ModelYear and A.MapVehiclePID=B.Series and B.IsPoActive=1
				   where A.[ModelYear] >=YEAR(getdate())-1
				group by  [MapVehiclePID], 
				[VehicleName] 
	end
	else
		begin
			INSERT  INTO @ResultTable
			select top 2 A.[MapVehiclePID], 
				  A.[ModelYear]
				,LTRIM(RTRIM(A.[VehicleName]))  as [VehicleName]
				--, COALESCE([VehicleTypeName],'') AS [VehicleTypeName]
				--, COALESCE(DrivetrainDesc,'') AS [DrivetrainDesc]
				--, [DefaultImage] AS [VehicleImageLoc]  
				   from [dbo].[As400ToVehicleMap] A  
				    inner join [HyundaiUSA].[dwh].[ModelColorDesc] B
				   on A.ModelYear=b.ModelYear and A.MapVehiclePID=B.Series and B.IsPoActive=1
				   where A.[MapVehiclePID]=@MapVehiclePID
				   and A.[VehicleName] =@vehicleName  
				   and A.[ModelYear] >=YEAR(getdate())-1
				   order by [ModelYear] desc
		end
   RETURN
 END



GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetModelByYearEx_noLonger]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- select * from dbo.fnHCirlce_GetModelByYearEx('2013', 'Plan A')
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_GetModelByYearEx_noLonger]
    (
      -- Add the parameters for the function here
      @ModelYear as nvarchar(4),
      @PlanName as nvarchar(10) = NULL
    )
RETURNS @ReturnTable TABLE
    (
      MapVehiclePID varchar(20),
      ModelYear varchar(10),
      VehicleName varchar(30),
      VehicleTypeName varchar(50),
      DrivetrainDesc varchar(50),
      VehicleImageLoc varchar(50)
    )
AS begin

    IF @PlanName = 'Plan Costco' 
        
            insert  into @ReturnTable
                    SELECT  [MapVehiclePID],
                            [ModelYear],
                            LTRIM(RTRIM([VehicleName]))  as [VehicleName],
							COALESCE([VehicleTypeName], '') AS [VehicleTypeName],
                            COALESCE(DrivetrainDesc, '') AS [DrivetrainDesc],
                            [DefaultImage] AS [VehicleImageLoc]
                    FROM    [dbo].[As400ToVehicleMap]
                    WHERE   [ModelYear] = @ModelYear  -- TO DO: NEED TO DO COSTCO PLAN HERE

    ELSE IF @PlanName = 'Plan A' 
	
				if @ModelYear = '2011'
					begin
						insert  into @ReturnTable
								SELECT  [MapVehiclePID],
										[ModelYear],
										[VehicleName],
										COALESCE([VehicleTypeName], '') AS [VehicleTypeName],
										COALESCE(DrivetrainDesc, '') AS [DrivetrainDesc],
										[DefaultImage] AS [VehicleImageLoc]
								FROM    [dbo].[As400ToVehicleMap]
								WHERE   [ModelYear] = @ModelYear And VehicleName NOT IN ('Equus', 'Elantra', 'Sonata Turbo', 'Sonata Hybrid') 
					end
                else
					begin
						insert  into @ReturnTable
								SELECT  [MapVehiclePID],
										[ModelYear],
										LTRIM(RTRIM([VehicleName]))  as [VehicleName],
										COALESCE([VehicleTypeName], '') AS [VehicleTypeName],
										COALESCE(DrivetrainDesc, '') AS [DrivetrainDesc],
										[DefaultImage] AS [VehicleImageLoc]
								FROM    [dbo].[As400ToVehicleMap]
								WHERE   [ModelYear] = @ModelYear  --And VehicleName NOT IN ('Equus', 'Elantra', 'Sonata Turbo') 
					end
        
     ELSE 
      
                insert  into @ReturnTable
                        SELECT  [MapVehiclePID],
                                [ModelYear],
                                LTRIM(RTRIM([VehicleName]))  as [VehicleName],
                                COALESCE([VehicleTypeName], '') AS [VehicleTypeName],
                                COALESCE(DrivetrainDesc, '') AS [DrivetrainDesc],
                                [DefaultImage] AS [VehicleImageLoc]
                        FROM    [dbo].[As400ToVehicleMap]
                        WHERE   [ModelYear] = @ModelYear 
     
   
	RETURN
   end
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_isValidGetModelByYear_Ex]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen>
-- Create date: 10/21/2011
-- Description: to be used inside dbo.fnHCirle_Get_DealersInventory_ByVin to determind if we should return any value
--select  [dbo].[fnHCirlce_isValidGetModelByYear_Ex]('2012',1,'C')
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_isValidGetModelByYear_Ex]
    (
      -- Add the parameters for the function here
      @ModelYear as nvarchar(4),
      @PlanTypePID as int,
      @MapVehiclePID varchar(20)
     
    )
RETURNS bit
AS
BEGIN
		DECLARE @Return bit
		SET @Return=0
    IF EXISTS(SELECT  1	FROM [dbo].[As400ToVehicleMap]
			  WHERE     [ModelYear] = @ModelYear
			            AND MapVehiclePID=@MapVehiclePID
						AND MapVehiclePID NOT IN (
												SELECT  Byo.VehicleExclusions.VehicleId
												FROM    Byo.ExclusionType
														INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
																							AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
														LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
												WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
														AND Byo.VehicleExclusions.ExclusionTypePID = 1
														AND Byo.VehicleExclusions.isActive = 1
														AND Byo.VehicleExclusions.PlanTypePID IN (@PlanTypePID, 0 )
									        )
			 )   
        SET @Return=1
   
	ELSE SET @Return=0
	
	RETURN @Return
		
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Get_DealersInventory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--(SELECT top 1 [EquivalentModelCodeID] FROM [dbo].[EquivalentModelCode] 
--								WHERE Charindex('45412F45',[EquivalentModelCodeID])>0)

--SET @NoPREZ=''
--		    SELECT PZEVVehicleModelCodeID 
--			  FROM [dbo].[PZEV_Packages]
--			WHERE [OrgVehicleModelCodeID]='45412F45' 
--					OR Charindex([OrgVehicleModelCodeID],'45412F45,46412F45')>0

-- =============================================
-- Date: 3/12/2010
-- Author:Nick Nguyen
-- select * from [dbo].[fnHCirle_Get_DealersInventory_New] ('1', 'CA310,CA267,CA293,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA219,CA221,CA121,CA197', '', '','', '2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('1','CA310,CA293,CA325,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA335,CA334,CA219,CA336',null,null,null,'2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('2','MO023,MO039,MO040,IL064,MO016,MO011,MO035,MO029,MO030,MO006,KS015,IL014,MO026,KS010,MO031',null,null,null,'2014',29)
-- SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory_test]('6','FL108',null,null,null,'2013',28)
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('1','AL008,AL025,FL107,GA021,FL128,FL087,AL015,GA014,AL028,FL080,GA066,GA055,GA057,AL027,GA029',null,null,null,'2013')
-- WHERE TranmissionDesc like '%%'
-- SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory](2,'CA172,CA340,CA339,CA310,CA293,CA327,CA197,CA323,CA303,CA281,CA321,CA342,CA121',null,null,null,'2013',29)


-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Get_DealersInventory]
    (
      @MapVehiclePID nvarchar(10),
      @dealerCodes varchar(200),
      @MapModelCodePID varchar(100) = NULL,
      @MapPackagePID varchar(20) = NULL,
      @MapColorPID varchar(10) = NULL,
      @ModelYear varchar(4)=null,
      @PlanPID int
     )
RETURNS @ResultTable table
    (
      C2PIOM_TotPIOMSRP [numeric](7, 2),
      C2COST_AdvertsingCost [numeric](7, 2),
      C2EXCL_ExteriorClrHMA varchar(3),
      C2DELR_DealerCodeCURRET varchar(5),
      C2FOBP_BasePriceDCost [numeric](7, 2),
      C2PIOD_TorPIODealer [numeric](7, 2),
      C2FRTC_FreightCharge [numeric](7, 2),
      C2CTNE_YearCentryCode varchar(2),
      C2YRNE_ShortVINYear varchar(2),
      C2MSRP_BasePriceMSRP [numeric](7, 2),
      C2FVIN_FullVIN varchar(17),
      C2FACM_TotFacAccMSRP [numeric](7, 2),
      ColorDesc varchar(100),
      ModelYear varchar(4),
      PackageDesc varchar(100),
	  PackageMapPID varchar(20),
      TransmissionDesc varchar(100),
      VehicleName varchar(100),
      DealerCashAmount [numeric](7, 2),
      DealerName varchar(50),
      Address1   varchar(50),
      Address2   varchar(50),
      City       varchar(30),
      State      varchar(5),
	  Zip		  varchar(5),
	  SalesPhone varchar(20),
      AutoID int
    )
AS BEGIN

    DECLARE @MapVehiclePID_int nvarchar(10),
        @MapModelCodePID_int nvarchar(100),
        @MapPackagePID_int nvarchar(10),
        @MapColorPID_int nvarchar(10),
        @MapInteriorColorPID_int nvarchar(50),
		@NoPREZ varchar(50),
        @PREZPackage varchar(15),
        @ModelCode varchar(100),
        @PlanTypePID int,
        @ColorSet varchar(100)

        SET @MapVehiclePID_int	=case when @MapVehiclePID='' then null else @MapVehiclePID end
		SET @MapModelCodePID_int	=case when @MapModelCodePID='' then null else @MapModelCodePID  end
		SET @MapPackagePID_int	=case when @MapPackagePID ='' then null else @MapPackagePID end
		SET @MapColorPID_int	=case when @MapColorPID='' then null else @MapColorPID  end
		--SET @MapInteriorColorPID_int	=case when @MapInteriorColorPID='' then null else @MapInteriorColorPID  end


	 --Check for modelcode
      SET @ModelCode=''
	SELECT  @ModelCode=@ModelCode+','+(CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
			 FROM dbo.udf_Split(@MapModelCodePID , ',') M
			LEFT JOIN  [dbo].[EquivalentModelCode] E						
	ON  Charindex(M.Value,[EquivalentModelCodeID])>0
	
	--Color
	

	 -------------------------------------------------------------------------------------------------
	  SET @NoPREZ=''
		    SELECT @NoPREZ=@NoPREZ+','+PZEVVehicleModelCodeID 
			  FROM [dbo].[PZEV_Packages]
			WHERE [OrgVehicleModelCodeID]=@MapModelCodePID 
					OR Charindex([OrgVehicleModelCodeID],@ModelCode)>0

       SET @PREZPackage = [dbo].[udf_PREVPackage_GET](@MapModelCodePID,@MapPackagePID,@ModelYear)
     -----------------------------------------------------------------------------------------------------

	   SELECT @PlanTypePID=PlanTypePID FROM [HyundaiApp].[profile].[Plan] WHERE PlanPID=@PlanPID

	 -----------------------------------------------------------------------------------------------------

	IF 	@MapPackagePID= '01'
		BEGIN	
			INSERT  INTO @ResultTable
					SELECT DISTINCT  [C2PIOM_TotPIOMSRP],
							[C2COST_AdvertsingCost],
							[C2EXCL_ExteriorClrHMA],
							[C2DELR_DealerCodeCURRET],
							[C2FOBP_BasePriceDCost],
							[C2PIOD_TorPIODealer],
							[C2FRTC_FreightCharge],
							[C2CTNE_YearCentryCode],
							[C2YRNE_ShortVINYear],
							[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
							[C2FVIN_FullVIN],
							[C2FACM_TotFacAccMSRP],
							[ColorDesc],
							C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
							[PackageDesc],
							MapPackagePID,
							TransmissionDesc as TransmissionDesc,
							--HUSA.[C2REGN_RegionCode]+HUSA.MapTrimPID  as [VehicleName]
							HUSA.MapModelCodePID  as [VehicleName]
							,[dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							------------------------------------------------
							--Dealer Info
						    ,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone
							,D.Id


					FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
					INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
					ON HUSA.C2DELR_DealerCodeCURRET=D.Value
					INNER JOIN HyundaiUSA.Dealer.DealerInfo (nolock) Dealer
					ON D.Value=Dealer.DealerCode and Dealer.[sales_phone] is not null
					--INNER JOIN dbo.udf_Split( (case when @MapVehiclePID_int='6'  then '6,J' 
					--						 when @MapVehiclePID_int='J'  then '6,J'
					--						 else @MapVehiclePID_int end),',') B
					--ON left(HUSA.MapModelCodePID,1)=B.Value
					WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
								AND(							
								 (	charindex(HUSA.MapModelCodePID,@NoPREZ)>0
									OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
								 )
								  OR @MapModelCodePID_int IS NULL
								)
							AND ( HUSA.MapColorPID = @MapColorPID
								  OR @MapColorPID_int IS NULL
								)
							AND ( HUSA.MapPackagePID IN (SELECT PackageCode FROM dbo.NoPackageLookup)

								)
							AND C2DELR_DealerCodeCURRET in (
							SELECT  value
							from    dbo.udf_Split(@dealerCodes, ',') )
						   AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
					   AND HUSA.[C2DSLD_DateSold]=0
					 AND HUSA.C2IVST_InventoryStatus='DS' 
					 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
					 AND left(HUSA.MapModelCodePID,8) NOT IN (
                SELECT  Byo.VehicleExclusions.VehicleModelCodeId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 2
                        AND VehicleId = @MapVehiclePID_int
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ('0', 0 ) ) 
						ORDER BY D.Id 

		END
	ELSE
		BEGIN

				INSERT  INTO @ResultTable
						SELECT  DISTINCT [C2PIOM_TotPIOMSRP],
								[C2COST_AdvertsingCost],
								[C2EXCL_ExteriorClrHMA],
								[C2DELR_DealerCodeCURRET],
								[C2FOBP_BasePriceDCost],
								[C2PIOD_TorPIODealer],
								[C2FRTC_FreightCharge],
								[C2CTNE_YearCentryCode],
								[C2YRNE_ShortVINYear],
								[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
								[C2FVIN_FullVIN],
								[C2FACM_TotFacAccMSRP],
								[ColorDesc],
								C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
								PackageDesc AS PackageDesc,
								MapPackagePID,
								TransmissionDesc,
							    --HUSA.[C2REGN_RegionCode]+HUSA.MapTrimPID  as [VehicleName]								
							    HUSA.MapModelCodePID  as [VehicleName]								
								 ,[dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							   ------------------------------------------------
							--Dealer Info
						   --Dealer Info
							,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone
 						    ,D.Id			                   
						FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
						INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
						ON HUSA.C2DELR_DealerCodeCURRET=D.Value
						INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
						ON D.Value=Dealer.DealerCode and Dealer.[sales_phone] is not null
						
						WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
								AND(							
										 (charindex(HUSA.MapModelCodePID,@NoPREZ)>0
										  OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
										  ) 
									     OR @MapModelCodePID_int IS NULL
									)
								AND ( HUSA.MapColorPID = @MapColorPID
									  OR @MapColorPID_int IS NULL
									)
							AND (MapPackagePID  IN (@MapPackagePID,@PREZPackage)
									OR @MapPackagePID_int IS NULL)
						  AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
						   AND HUSA.C2IVST_InventoryStatus='DS' 
						  AND HUSA.[C2DSLD_DateSold] =0 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
						   AND left(HUSA.MapModelCodePID,8) NOT IN (
                SELECT  Byo.VehicleExclusions.VehicleModelCodeId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 2
                        AND VehicleId = @MapVehiclePID_int
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ('0', 0 ) )
						ORDER BY D.Id 
			END
    RETURN
   END








GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Get_DealersInventory_ALL]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--(SELECT top 1 [EquivalentModelCodeID] FROM [dbo].[EquivalentModelCode] 
--								WHERE Charindex('45412F45',[EquivalentModelCodeID])>0)
				
--SET @NoPREZ=''
--		    SELECT PZEVVehicleModelCodeID 
--			  FROM [dbo].[PZEV_Packages]
--			WHERE [OrgVehicleModelCodeID]='45412F45' 
--					OR Charindex([OrgVehicleModelCodeID],'45412F45,46412F45')>0

-- =============================================
-- Date: 3/12/2010
-- Author:Nick Nguyen
-- select * from [dbo].[fnHCirle_Get_DealersInventory_ALL] ('1', 'CA310,CA267,CA293,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA219,CA221,CA121,CA197', '', '','', '2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_all]('1','CA310,CA293,CA325,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA335,CA334,CA219,CA336',null,null,null,'2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_all]('E','CA310,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273,CA003,CA296,CA219,CA121,CA221,CA197',null,null,null,null,'2013','DS')
-- SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory_all]('8','OR033,OR016,OR031',null,null,null,'2012')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_All]('D','TX132,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273,CA003,CA296,CA219,CA121,CA221,CA197','D1533F45',null,null,null,'2013','DS')
 
 
 --WHERE TranmissionDesc like '%%'
 --SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory_all](4,'CA273,CA317,CA325,CA310,CA293,CA327,CA197,CA323,CA303,CA281,CA321,CA342,CA121','45412F45',null,null,null,'2012')

 --SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_all]('E','CA310,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273','E0422R85_02',null,null,null,'BEIGE','2013','DS')
 --SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_all]('B','CA310,CA293,CA325,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA335,CA334,CA219,CA336','B0422R65',null,null,'CASHMERE','2013','DS')

-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Get_DealersInventory_ALL]
    (
      @MapVehiclePID nvarchar(20),
      @dealerCodes varchar(200),
      @MapModelCodePID varchar(100) = NULL,
      @MapPackagePID varchar(20) = NULL,
      @MapColorPID varchar(10) = NULL,
      @MapInteriorColorPID varchar(50)=null,
      --@MapSeatColorPID varchar(50)=null,
      @ModelYear varchar(4)=null,
      @InventoryStatus varchar(4)=null
     )
RETURNS @ResultTable table
    (
      C2PIOM_TotPIOMSRP [numeric](7, 2),
      C2COST_AdvertsingCost [numeric](7, 2),
      C2EXCL_ExteriorClrHMA varchar(10),
      MapInteriorColorPID varchar(50),
      InteriorColorName varchar(100),
      C2DELR_DealerCodeCURRET varchar(5),
      C2FOBP_BasePriceDCost [numeric](7, 2),
      C2PIOD_TorPIODealer [numeric](7, 2),
      C2FRTC_FreightCharge [numeric](7, 2),
      C2CTNE_YearCentryCode varchar(2),
      C2YRNE_ShortVINYear varchar(2),
      C2MSRP_BasePriceMSRP [numeric](7, 2),
      C2FVIN_FullVIN varchar(17),
      C2FACM_TotFacAccMSRP [numeric](7, 2),
      ExColorDesc varchar(100),
      ModelYear varchar(4),
      PackageDesc varchar(100),
      TransmissionDesc varchar(100),
      MapVehiclePID varchar(20),
      VehicleName varchar(100),
      MapModelCodePID varchar(20),
      DealerCashAmount [numeric](7, 2),
      DealerName varchar(50),
      Address1   varchar(50),
      Address2   varchar(50),
      City       varchar(30),
      State      varchar(5),
	  Zip		  varchar(5),
	  SalesPhone varchar(20),
      AutoID int,
      InventoryStatus varchar(4),
      PackageCode varchar(20),
      MSRP [numeric](7, 2),
      EquusEnabled varchar(2)
    )
AS BEGIN
   
    DECLARE @MapVehiclePID_int nvarchar(20),
        @MapModelCodePID_int nvarchar(100),
        @MapPackagePID_int nvarchar(10),
        @MapColorPID_int nvarchar(10),
        @MapInteriorColorPID_int nvarchar(50),
        --@MapSeatColorPID_int nvarchar(50),
        @NoPREZ varchar(50),
        @PREZPackage varchar(15),
        @ModelCode varchar(100),
        @ColorSet varchar(100)
        
        SET @MapVehiclePID_int	    =case when @MapVehiclePID='' then null else @MapVehiclePID end
		SET @MapModelCodePID_int	=case when @MapModelCodePID='' then null else @MapModelCodePID  end
		SET @MapPackagePID_int	    =case when @MapPackagePID ='' then null else @MapPackagePID end
		SET @MapColorPID_int	    =case when @MapColorPID='' then null else @MapColorPID  end
		SET @MapInteriorColorPID_int	=case when @MapInteriorColorPID='' then null else @MapInteriorColorPID  end
    	--SET @MapSeatColorPID_int	=case when @MapSeatColorPID='' then null else @MapSeatColorPID  end
		
   	 
	 --Check for modelcode
     SET @ModelCode=''
	SELECT  @ModelCode=@ModelCode+','+(CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
			 FROM dbo.udf_Split(@MapModelCodePID , ',') M
			LEFT JOIN  [dbo].[EquivalentModelCode] E						
	ON  Charindex(M.Value,[EquivalentModelCodeID])>0
	AND [Year]=@ModelYear
	------------------------------------------------------------------
	--Color
	--SELECT @ColorSet=[ExteriorID]
 --    FROM dbo.udf_Split(@MapModelCodePID , ',') M
	--	LEFT JOIN  [dbo].[EquivalentColor] E						
	--	ON  Charindex(M.Value,[modelCode])>0
	--	AND CHARINDEX(@MapColorPID,[ExteriorID])>0
	--WHERE VehicleYear=@ModelYear
 -- SET @MapColorPID= Coalesce(@ColorSet,@MapColorPID)
  
  
	 -------------------------------------------------------------------------------------------------
	  SET @NoPREZ=''
		    SELECT @NoPREZ=@NoPREZ+','+PZEVVehicleModelCodeID 
		  FROM [dbo].[PZEV_Packages]
			WHERE [OrgVehicleModelCodeID]=@MapModelCodePID 
					OR Charindex([OrgVehicleModelCodeID],@ModelCode)>0
		
       SET @PREZPackage =  [dbo].[udf_PREVPackage_GET_String] (@MapModelCodePID,@MapPackagePID,@ModelYear)
     -----------------------------------------------------------------------------------------------------
     --Temp fix for Equus--> We only convert all Equus modelcode  to E0422R85_01
     -- and wil determind whether or not it’s Ultimate by logic at the end of the proc
     --SET @ModelCode= REPLACE(@ModelCode,'_02','_01')
     -----------------------------------------------------------------------------------------------------
	  
	IF 	@MapPackagePID= '01'
		BEGIN	
			INSERT  INTO @ResultTable
					SELECT DISTINCT top(500) [C2PIOM_TotPIOMSRP],
							[C2COST_AdvertsingCost],
							[C2EXCL_ExteriorClrHMA],
							MapInteriorColorPID,
							HUSA.VehicleSeatColorID,
						    [C2DELR_DealerCodeCURRET],
							[C2FOBP_BasePriceDCost],
							[C2PIOD_TorPIODealer],
							[C2FRTC_FreightCharge],
							[C2CTNE_YearCentryCode],
							[C2YRNE_ShortVINYear],
							[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
							[C2FVIN_FullVIN],
							[C2FACM_TotFacAccMSRP],
							[ColorDesc],
							C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
							[PackageDesc],
							TransmissionDesc as TransmissionDesc,
							@MapVehiclePID,
							[VehicleName],
							[dbo].[udf_getOrgModelCode](HUSA.MapModelCodePID,C2CTNE_YearCentryCode + C2YRNE_ShortVINYear)
							 ,
							[dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							------------------------------------------------
							--Dealer Info
						    ,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Stuff(Stuff(replace(dbo.udf_RemoveSpicalChars(Dealer.Sales_Phone),' ',''),7,0,'-'),4,0,'-')  as SalesPhone
							------------------------------------------------
							,D.Id
							,HUSA.C2IVST_InventoryStatus
							,HUSA.MapPackagePID
							,MSRP = case  when (CHARINDEX('_02',MapModelCodePID) > 0 and @MapVehiclePID='E') then (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge)
							 else (C2MSRP_BasePriceMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) END
							 ,Dealer.EquusEnabled
		                   
					FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
					INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
					ON HUSA.C2DELR_DealerCodeCURRET=D.Value
					INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
					ON D.Value=Dealer.DealerCode
					WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
							AND (							
								 (	charindex(HUSA.MapModelCodePID,@NoPREZ)>0
									OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
								 )
								  OR @MapModelCodePID_int IS NULL
								)
							AND ( charindex(HUSA.MapColorPID,@MapColorPID)>0
								  OR @MapColorPID_int IS NULL
								)
							AND ( charindex(HUSA.VehicleSeatColorID,@MapInteriorColorPID)>0
								  OR @MapInteriorColorPID_int IS NULL
								)
							AND ( HUSA.MapPackagePID IN (SELECT PackageCode FROM dbo.NoPackageLookup)
								 
								)
							AND C2DELR_DealerCodeCURRET in (
							SELECT  value
							from    dbo.udf_Split(@dealerCodes, ',') )
						   AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
					   AND HUSA.[C2DSLD_DateSold]=0 
					 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
					 AND (HUSA.C2IVST_InventoryStatus=@InventoryStatus or @InventoryStatus is null)
						ORDER BY D.Id 
						
		END
		
	ELSE IF @InventoryStatus<>'1' OR @InventoryStatus is null
		BEGIN
			
				INSERT  INTO @ResultTable
						SELECT  DISTINCT top(500) [C2PIOM_TotPIOMSRP],
								[C2COST_AdvertsingCost],
								[C2EXCL_ExteriorClrHMA],
								MapInteriorColorPID,
								HUSA.VehicleSeatColorID,
								[C2DELR_DealerCodeCURRET],
								[C2FOBP_BasePriceDCost],
								[C2PIOD_TorPIODealer],
								[C2FRTC_FreightCharge],
								[C2CTNE_YearCentryCode],
								[C2YRNE_ShortVINYear],
								[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
								[C2FVIN_FullVIN],
								[C2FACM_TotFacAccMSRP],
								[ColorDesc],
								C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
								PackageDesc AS PackageDesc,
								TransmissionDesc as TransmissionDesc,
							    @MapVehiclePID,
							    [VehicleName],
							   [dbo].[udf_getOrgModelCode](HUSA.MapModelCodePID,C2CTNE_YearCentryCode + C2YRNE_ShortVINYear)												 
							 ,
							 [dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							   ------------------------------------------------
							--Dealer Info
						   --Dealer Info
							,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Stuff(Stuff(replace(dbo.udf_RemoveSpicalChars(Dealer.Sales_Phone),' ',''),7,0,'-'),4,0,'-')  as SalesPhone
							------------------------------------------------
							,D.Id
							,HUSA.C2IVST_InventoryStatus
							,HUSA.MapPackagePID
							,MSRP = case  when (CHARINDEX('_02',MapModelCodePID) > 0 and @MapVehiclePID='E') then (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge)
							 else (C2MSRP_BasePriceMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) END
							,Dealer.EquusEnabled
						FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
						INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
						ON HUSA.C2DELR_DealerCodeCURRET=D.Value
						INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
						ON D.Value=Dealer.DealerCode
						WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
								AND (							
										 (charindex(HUSA.MapModelCodePID,@NoPREZ)>0
										  OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
										  ) 
									     OR @MapModelCodePID_int IS NULL
									)
								AND ( charindex(HUSA.MapColorPID,@MapColorPID)>0
								  OR @MapColorPID_int IS NULL
								)
								AND ( charindex(HUSA.VehicleSeatColorID,@MapInteriorColorPID)>0
								  OR @MapInteriorColorPID_int IS NULL
								)
							AND (MapPackagePID=@MapPackagePID
									OR charindex(MapPackagePID,@PREZPackage) >0
									OR @MapPackagePID_int IS NULL)
						  AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
						AND HUSA.[C2DSLD_DateSold] =0 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
						AND (HUSA.C2IVST_InventoryStatus=@InventoryStatus or @InventoryStatus is null)
							ORDER BY D.Id 
			
			END
		ELSE IF @InventoryStatus=1
			BEGIN
			    INSERT  INTO @ResultTable
				SELECT * FROM [HyundaiApp].[dbo].[fnHCirle_Get_DealersInventory_NO_DS] (
				   @MapVehiclePID  
				   ,@dealerCodes
				  ,@MapModelCodePID
				  ,@MapPackagePID
				  ,@MapColorPID
				  ,@MapInteriorColorPID
				  ,@ModelYear
  )
			END
	
          
    RETURN
   END

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Get_DealersInventory_ByVin]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 10/5/2011
-- Author:Nick Nguyen KMHGC4DDXCU161118
--: Return a vehicle information based on VIN
-- SELECT * FROM [dbo].[fnHCirle_Get_DealersInventory_ByVin]('KMHGC4DDXCU161488','Akk')
-- Modified: Erik Mildner, 1/5/2018, Added interior color to query
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Get_DealersInventory_ByVin]
    (
      @Vin varchar(17)
      ,@PIN varchar(24)
     )
RETURNS @ResultTable table
    (
      C2PIOM_TotPIOMSRP [numeric](7, 2),
      C2COST_AdvertsingCost [numeric](7, 2),
      C2EXCL_ExteriorClrHMA varchar(3),
      C2DELR_DealerCodeCURRET varchar(5),
      C2FOBP_BasePriceDCost [numeric](7, 2),
      C2PIOD_TorPIODealer [numeric](7, 2),
      C2FRTC_FreightCharge [numeric](7, 2),
      C2CTNE_YearCentryCode varchar(2),
      C2YRNE_ShortVINYear varchar(2),
      C2MSRP_BasePriceMSRP [numeric](7, 2),
      C2FVIN_FullVIN varchar(17),
      C2FACM_TotFacAccMSRP [numeric](7, 2),
      ColorDesc varchar(100),
      ModelYear varchar(4),
      PackageDesc varchar(100),
	  PackageMapPID varchar(20),
      TransmissionDesc varchar(100),
      VehicleName varchar(100),
      DealerCashAmount [numeric](7, 2),
      DealerName varchar(50),
      Address1   varchar(50),
      Address2   varchar(50),
      City       varchar(30),
      State      varchar(5),
	  Zip		  varchar(5),
	  SalesPhone varchar(20),
	  MapVehiclePID varchar(4),
	  InteriorColorDesc varchar(100)
	 
    
    )
AS BEGIN
   
			    DECLARE @PlanPID int
			    SET @PlanPID= CASE WHEN LEFT(@PIN,1)='A' THEN 1
			                       WHEN LEFT(@PIN,1)='E' THEN 2
			                   ELSE 3 END
				INSERT  INTO @ResultTable
						SELECT  
							[C2PIOM_TotPIOMSRP],
							[C2COST_AdvertsingCost],
							[C2EXCL_ExteriorClrHMA],
							[C2DELR_DealerCodeCURRET],
							[C2FOBP_BasePriceDCost],
							[C2PIOD_TorPIODealer],
							[C2FRTC_FreightCharge],
							[C2CTNE_YearCentryCode],
							[C2YRNE_ShortVINYear],
							[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
							[C2FVIN_FullVIN],
							[C2FACM_TotFacAccMSRP],
							[ColorDesc],
							C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
							[PackageDesc],
							MapPackagePID,
							TransmissionDesc as TransmissionDesc,
							--HUSA.[C2REGN_RegionCode]+HUSA.MapTrimPID  as [VehicleName]
							HUSA.MapModelCodePID  as [VehicleName]
							,[dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							------------------------------------------------
							--Dealer Info
						    ,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone
							,HUSA.[MapVehiclePID]
							,HUSA.InteriorColorName
							------------------------------------------------		                   
					FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
					INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
					ON HUSA.C2DELR_DealerCodeCURRET=Dealer.DealerCode
					WHERE   HUSA.[C2DSLD_DateSold]=0 
					 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
					-- AND HUSA.C2DELR_DealerCodeCURRET not in(select DealerCode FROM dealer.DealerExclusion)
					 and [C2FVIN_FullVIN]=@Vin
			---check the valid of the VIN
			IF NOT EXISTS(SELECT 1 FROM @ResultTable WHERE  [dbo].[fnHCirlce_isValidGetModelByYear_Ex](ModelYear,@PlanPID,[MapVehiclePID])=1)
				DELETE FROM @ResultTable
                   
                      
          
    RETURN
   END
    



GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Get_DealersInventory_NO_DS]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--(SELECT top 1 [EquivalentModelCodeID] FROM [dbo].[EquivalentModelCode] 
--								WHERE Charindex('45412F45',[EquivalentModelCodeID])>0)
				
--SET @NoPREZ=''
--		    SELECT PZEVVehicleModelCodeID 
--			  FROM [dbo].[PZEV_Packages]
--			WHERE [OrgVehicleModelCodeID]='45412F45' 
--					OR Charindex([OrgVehicleModelCodeID],'45412F45,46412F45')>0

-- =============================================
-- Date: 3/12/2010
-- Author:Nick Nguyen
-- select * from [dbo].[fnHCirle_Get_DealersInventory_New] ('1', 'CA310,CA267,CA293,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA219,CA221,CA121,CA197', '', '','', '2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('1','CA310,CA293,CA325,CA323,CA317,CA303,CA003,CA273,CA321,CA300,CA296,CA335,CA334,CA219,CA336',null,null,null,'2011')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('E','CA310,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273,CA003,CA296,CA219,CA121,CA221,CA197','B0422R65',null,null,'2012')
-- SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory]('8','OR033,OR016,OR031',null,null,null,'2012')
-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory_All]('2','CA310,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273,CA003,CA296,CA219,CA121,CA221,CA197','27472F4P,27402F4P',null,null,null,'2012',null)
 
 
 --WHERE TranmissionDesc like '%%'
 --SELECT *  FROm [dbo].[fnHCirle_Get_DealersInventory](4,'CA273,CA317,CA325,CA310,CA293,CA327,CA197,CA323,CA303,CA281,CA321,CA342,CA121','45412F45',null,null,null,'2012')

-- SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('2','CA310,CA267,CA293,CA317,CA323,CA303,CA321,CA300,CA273,CA003,CA296,CA219,CA121,CA221,CA197','27472F45',null,null,null,'2012')

-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Get_DealersInventory_NO_DS]
    (
      @MapVehiclePID nvarchar(20),
      @dealerCodes varchar(200),
      @MapModelCodePID varchar(100) = NULL,
      @MapPackagePID varchar(20) = NULL,
      @MapColorPID varchar(10) = NULL,
      @MapInteriorColorPID varchar(50)=null,
      @ModelYear varchar(4)=null
     )
RETURNS @ResultTable table
    (
      C2PIOM_TotPIOMSRP [numeric](7, 2),
      C2COST_AdvertsingCost [numeric](7, 2),
      C2EXCL_ExteriorClrHMA varchar(3),
      MapInteriorColorPID varchar(50),
      InteriorColorName varchar(100),
      C2DELR_DealerCodeCURRET varchar(5),
      C2FOBP_BasePriceDCost [numeric](7, 2),
      C2PIOD_TorPIODealer [numeric](7, 2),
      C2FRTC_FreightCharge [numeric](7, 2),
      C2CTNE_YearCentryCode varchar(2),
      C2YRNE_ShortVINYear varchar(2),
      C2MSRP_BasePriceMSRP [numeric](7, 2),
      C2FVIN_FullVIN varchar(17),
      C2FACM_TotFacAccMSRP [numeric](7, 2),
      ExColorDesc varchar(100),
      ModelYear varchar(4),
      PackageDesc varchar(100),
      TransmissionDesc varchar(100),
      MapVehiclePID varchar(20),
      VehicleName varchar(100),
      MapModelCodePID varchar(20),
      DealerCashAmount [numeric](7, 2),
      DealerName varchar(50),
      Address1   varchar(50),
      Address2   varchar(50),
      City       varchar(30),
      State      varchar(5),
	  Zip		  varchar(5),
	  SalesPhone varchar(20),
      AutoID int,
      InventoryStatus varchar(4),
      MapPackagePID varchar(10),
      MSRP [numeric](7, 2),
      EquusEnabled varchar(2)
    )
AS BEGIN
   
    DECLARE @MapVehiclePID_int nvarchar(20),
        @MapModelCodePID_int nvarchar(100),
        @MapPackagePID_int nvarchar(10),
        @MapColorPID_int nvarchar(10),
        @MapInteriorColorPID_int nvarchar(50),
        @NoPREZ varchar(50),
        @PREZPackage varchar(15),
        @ModelCode varchar(50)
        
        SET @MapVehiclePID_int	=case when @MapVehiclePID='' then null else @MapVehiclePID end
		SET @MapModelCodePID_int	=case when @MapModelCodePID='' then null else @MapModelCodePID  end
		SET @MapPackagePID_int	=case when @MapPackagePID ='' then null else @MapPackagePID end
		SET @MapColorPID_int	=case when @MapColorPID='' then null else @MapColorPID  end
		SET @MapInteriorColorPID_int	=case when @MapInteriorColorPID='' then null else @MapInteriorColorPID  end
    	
   	 
	 --Check for modelcode
     SET @ModelCode=''
	SELECT  @ModelCode=@ModelCode+','+(CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
			 FROM dbo.udf_Split(@MapModelCodePID , ',') M
			LEFT JOIN  [dbo].[EquivalentModelCode] E						
	ON  Charindex(@MapModelCodePID,[EquivalentModelCodeID])>0
	
	 -------------------------------------------------------------------------------------------------
	  SET @NoPREZ=''
		    SELECT @NoPREZ=@NoPREZ+','+PZEVVehicleModelCodeID 
			  FROM [dbo].[PZEV_Packages]
			WHERE [OrgVehicleModelCodeID]=@MapModelCodePID 
					OR Charindex([OrgVehicleModelCodeID],@ModelCode)>0
		
       SET @PREZPackage =  [dbo].[udf_PREVPackage_GET_String] (@MapModelCodePID,@MapPackagePID,@ModelYear)
     -----------------------------------------------------------------------------------------------------
     
	 
	IF 	@MapPackagePID= '01'
		BEGIN	
			INSERT  INTO @ResultTable
					SELECT  DISTINCT  top(500) [C2PIOM_TotPIOMSRP],
							[C2COST_AdvertsingCost],
							[C2EXCL_ExteriorClrHMA],
							MapInteriorColorPID,
							InteriorColorName,
							[C2DELR_DealerCodeCURRET],
							[C2FOBP_BasePriceDCost],
							[C2PIOD_TorPIODealer],
							[C2FRTC_FreightCharge],
							[C2CTNE_YearCentryCode],
							[C2YRNE_ShortVINYear],
							[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
							[C2FVIN_FullVIN],
							[C2FACM_TotFacAccMSRP],
							[ColorDesc],
							C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
							[PackageDesc],
							TransmissionDesc as TransmissionDesc,
							--HUSA.[C2REGN_RegionCode]+HUSA.MapTrimPID  as [VehicleName]
							HUSA.MapVehiclePID,
							VehicleName,
							[dbo].[udf_getOrgModelCode](HUSA.MapModelCodePID,C2CTNE_YearCentryCode + C2YRNE_ShortVINYear),
							[dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							------------------------------------------------
							--Dealer Info
						    ,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone

							------------------------------------------------
							,D.Id
							,HUSA.C2IVST_InventoryStatus
							,HUSA.MapPackagePID
							,MSRP = case  when (CHARINDEX('_02',MapModelCodePID) > 0 and @MapVehiclePID='E') then (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge)
							 else (C2MSRP_BasePriceMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) END
							,Dealer.EquusEnabled
					FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
					INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
					ON HUSA.C2DELR_DealerCodeCURRET=D.Value
					INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
					ON D.Value=Dealer.DealerCode
					WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
							AND (							
								 (	charindex(HUSA.MapModelCodePID,@NoPREZ)>0
									OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
								 )
								  OR @MapModelCodePID_int IS NULL
								)
							AND ( HUSA.MapColorPID = @MapColorPID
								  OR @MapColorPID_int IS NULL
							     )
							AND ( HUSA.VehicleSeatColorID = @MapInteriorColorPID
								  OR @MapInteriorColorPID_int IS NULL
								)
							AND ( HUSA.MapPackagePID IN (SELECT PackageCode FROM dbo.NoPackageLookup)
								 
								)
							AND C2DELR_DealerCodeCURRET in (
							SELECT  value
							from    dbo.udf_Split(@dealerCodes, ',') )
						   AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
					   AND HUSA.[C2DSLD_DateSold]=0 
					 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
					 AND (HUSA.C2IVST_InventoryStatus<>'DS')
						ORDER BY D.Id 
						
		END
		
	ELSE
		BEGIN
			
				INSERT  INTO @ResultTable
						SELECT  DISTINCT  top(500) [C2PIOM_TotPIOMSRP],
								[C2COST_AdvertsingCost],
								[C2EXCL_ExteriorClrHMA],
								MapInteriorColorPID,
								InteriorColorName,
								[C2DELR_DealerCodeCURRET],
								[C2FOBP_BasePriceDCost],
								[C2PIOD_TorPIODealer],
								[C2FRTC_FreightCharge],
								[C2CTNE_YearCentryCode],
								[C2YRNE_ShortVINYear],
								[C2MSRP_BasePriceMSRP]+[PriceModification] as [C2MSRP_BasePriceMSRP],
								[C2FVIN_FullVIN],
								[C2FACM_TotFacAccMSRP],
								[ColorDesc],
								C2CTNE_YearCentryCode + C2YRNE_ShortVINYear as [ModelYear],
								PackageDesc AS PackageDesc,
								TransmissionDesc,
							    --HUSA.[C2REGN_RegionCode]+HUSA.MapTrimPID  as [VehicleName]								
							    HUSA.MapVehiclePID,
							    VehicleName,
							    [dbo].[udf_getOrgModelCode](HUSA.MapModelCodePID,C2CTNE_YearCentryCode + C2YRNE_ShortVINYear),
							    [dbo].[udf_getDealerCash](HUSA.[C2REGN_RegionCode],[C2DELR_DealerCodeCURRET],C2CTNE_YearCentryCode + C2YRNE_ShortVINYear,HUSA.MapVehiclePID,HUSA.MapModelCodePID)  --Dealer Cash Amount
							   ------------------------------------------------
							--Dealer Info
						   --Dealer Info
							,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone
							------------------------------------------------
							,D.Id
							,HUSA.C2IVST_InventoryStatus
							,HUSA.MapPackagePID
							,MSRP = case  when (CHARINDEX('_02',MapModelCodePID) > 0 and @MapVehiclePID='E') then (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge)
							 else (C2MSRP_BasePriceMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) END
							,Dealer.EquusEnabled
						FROM    mig.vw_Tb_400_VWVM2P_VINMaster_Search HUSA
						INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D
						ON HUSA.C2DELR_DealerCodeCURRET=D.Value
						INNER JOIN HyundaiUSA.Dealer.DealerInfo Dealer
						ON D.Value=Dealer.DealerCode
						WHERE   HUSA.MapVehiclePID = @MapVehiclePID 
								AND (							
										 (charindex(HUSA.MapModelCodePID,@NoPREZ)>0
										  OR charindex(HUSA.MapModelCodePID,@ModelCode)>0
										  ) 
									     OR @MapModelCodePID_int IS NULL
									)
								AND ( HUSA.MapColorPID = @MapColorPID
									  OR @MapColorPID_int IS NULL
									)
								AND ( HUSA.VehicleSeatColorID = @MapInteriorColorPID
								  OR @MapInteriorColorPID_int IS NULL
								)
							AND (MapPackagePID=@MapPackagePID
									OR charindex(MapPackagePID,@PREZPackage) >0
									OR @MapPackagePID_int IS NULL)
						  AND C2CTNE_YearCentryCode + C2YRNE_ShortVINYear =@ModelYear
						AND HUSA.[C2DSLD_DateSold] =0 AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)
						 AND (HUSA.C2IVST_InventoryStatus<>'DS')
							ORDER BY D.Id 
			
			END
                   
                      
          
    RETURN
   END
    





GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_GetPinCodeHistoryByPinCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Date: 08/1/2011
-- Author:Sudhir Sharma
-- SELECT * FROm [dbo].[fnHCirle_GetPinCodeHistoryByPinCode] ('EGA0062339','null') --ACAKYUREHL
-- Modified: 5/1/2019, Erik Mildner, Added field Brand,
-- Modified: 7/8/2019, Erik Mildner, Added field ModelGroupCd
-- Modified: 10/27/2021, Kumaraswamy Kovuru, Added FirstName and LastName  
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_GetPinCodeHistoryByPinCode]
    (
      @PinCode varchar(10),
      @VIN varchar(24) = null
    )
RETURNS @PinOwner TABLE
    (
      PinCode varchar(24),
      BuyerFirstName varchar(30),
      BuyerLastName varchar(30),
      Address1 varchar(50),
      City varchar(50),
      StateID int,
      Zipcode varchar(50),
      Email varchar(128),
      Phone1 varchar(18),
      RelationshipPID int,
      companyID varchar(24),
      companyName varchar(256),
      CreatedBy int,
      VIN varchar(24),
      MapVehiclePID varchar(20),
      TrimMapPID varchar(10),
      Year varchar(4),
      SubmittedBy varchar(2),
      companyPID int,
      PlanTypePID int,
      PlanPID int,
      PlanName varchar(50),
      companyRelation int,
      ExpirationDate datetime,
      PinStatusPID int,
      ModelName varchar(50),
      UserID varchar(128),
      EmployeeFirstName varchar(30),
      EmployeeMiddleName Varchar(30),
      EmployeeLastName varchar(30),
      EmployeeEmail varchar(128),
      CreaterRef uniqueidentifier,
	  Brand varchar(50),
	  ModelGroupCd varchar(4),
	  FirstName varchar(30),   
      LastName varchar(30)
    )
as begin

    Declare @EmployeeType varchar(2)

    Select  @EmployeeType = SubmittedBy
    From    PIN.PinDetail
    WHERE   ( PIN.PinDetail.PinCode = @PinCode )

    insert  into @PinOwner
            (
              PinCode,
              BuyerFirstName,
              BuyerLastName,
              Address1,
              City,
              StateID,
              Zipcode,
              Email,
              Phone1,
              RelationshipPID,
              companyID,
              companyName,
              CreatedBy,
              VIN,
              MapVehiclePID,
              TrimMapPID,
              Year,
              SubmittedBy,
              companyPID,
              PlanTypePID,
              PlanPID,
              PlanName,
              companyRelation,
              ExpirationDate,
              PinStatusPID,
              ModelName,
              UserID,
              EmployeeFirstName,
              EmployeeMiddleName,
              EmployeeLastName,
              EmployeeEmail,
              CreaterRef,
			  Brand,
			  ModelGroupCd,
			  FirstName,
	          LastName
            )
            SELECT  PIN.PinDetail.PinCode,
                    profile.T_Profile.FirstName,
                    profile.T_Profile.LastName,
                    profile.T_Profile.Address1,
                    profile.T_Profile.City,
                    profile.T_Profile.StateID,
                    profile.T_Profile.Zipcode,
                    profile.T_Profile.Email,
                    profile.T_Profile.Phone1,
                    profile.T_Profile.RelationshipPID,
                    isnull(profile.T_Company.companyID,( select B.[companyID] FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyID,
                    isnull(profile.T_Company.companyName,(select B.companyName FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyName,
                    --profile.T_Company.companyID,
                    --profile.T_Company.companyName,
                    PIN.PinDetail.CreatedBy,
                    PIN.PinDetail.VIN,
                    PIN.PinDetail.MapVehiclePID,
                    coalesce(PIN.PinDetail.TrimMapPID,'') as TrimMapPID,
                    PIN.PinDetail.Year,
                    pin.PinDetail.SubmittedBy,
                    isnull(profile.T_Company.companyPID,( select B.companyPID FROM [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyPID,
                    --profile.T_Company.companyPID,
                    dbo.vw_active_plan.PlanTypePID,
                    dbo.vw_active_plan.PlanPID,
                    dbo.vw_active_plan.PlanName,
                    isnull(profile.T_Company.companyPID,( select B.companyRelation FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyRelation,
                    --profile.T_Company.companyRelation,
                    PIN.PinDetail.ExpirationDate,
                    PIN.PinDetail.PinStatusPID,
      --              (SELECT top 1 M.Name FROM (SELECT SUBSTRING(@VIN, 4, 1) + SUBSTRING(@VIN, 6, 1) + SUBSTRING(@VIN, 5, 1) + SUBSTRING(@VIN, 8, 1) + SUBSTRING(@VIN, 10, 1) as ModelID) A 
						--INNER JOIN [172.20.0.153].[HMA_OS_APP].[dbo].Modl_Model M ON A.ModelID = M.Modl_Model_Number) as ModelName,
                    (select top 1 vehicleName from dbo.fnHCircle_GetTrims (substring(ISNULL(NULLIF(PIN.PinDetail.MapVehiclePID,''),PIN.PinDetail.TrimMapPID),1,1),PIN.PinDetail.Year)) as ModelName,
                    null,
                    null,
                    null,
                    null,
                    null,
                    CreaterRef,
					PIN.PinDetail.Brand,
					PIN.PinDetail.ModelGroupCd,
					profile.T_Profile.EmpFirstName,
	                profile.T_Profile.EmpLastName
            FROM    PIN.PinDetail
                    left JOIN profile.T_Company ON PIN.PinDetail.CreaterRef = profile.T_Company.GlobalID
                    INNER JOIN dbo.vw_active_plan ON PIN.PinDetail.PlanPID = dbo.vw_active_plan.PlanPID
                    INNER JOIN profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID
                    INNER JOIN profile.RelationShip ON profile.T_Profile.RelationshipPID = profile.RelationShip.RelationShipPID
                    INNER JOIN profile.State_Codes ON profile.T_Profile.StateID = profile.State_Codes.StatePID
            WHERE   ( PIN.PinDetail.PinCode = @PinCode)

    if ( @EmployeeType = 'E' ) 
        begin
				--- To Get Sponsor Details---------
            update  @PinOwner
            set     UserID = a.UserID,
                    EmployeeFirstName = b.FirstName,
                    EmployeeMiddleName = b.MiddleInitial,
                    EmployeeLastName = b.LastName,
                    EmployeeEmail = b.Email
            FROM    profile.T_User AS a
                    INNER JOIN profile.T_Profile AS b ON a.GlobalID = b.GlobalRefID
                    LEFT OUTER JOIN PIN.PinDetail ON a.GlobalID = PIN.PinDetail.CreaterRef
                    inner join @PinOwner c on pin.PinDetail.PinCode = c.PinCode
            WHERE   (PIN.PinDetail.PinCode = @PinCode )
        end
          
    RETURN
   END
    




GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_GetPinCodeHistoryByPinCode1]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Date: 08/1/2011
-- Author:Sudhir Sharma
-- SELECT * FROm [dbo].[fnHCirle_GetPinCodeHistoryByPinCode1] ('AILHQPEU1A','null') --ACAKYUREHL
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_GetPinCodeHistoryByPinCode1]
    (
      @PinCode varchar(10),
      @VIN varchar(24) = null
    )
RETURNS @PinOwner TABLE
    (
      PinCode varchar(24),
      BuyerFirstName varchar(30),
      BuyerLastName varchar(30),
      Address1 varchar(50),
      City varchar(50),
      StateID int,
      Zipcode varchar(50),
      Email varchar(128),
      Phone1 varchar(18),
      RelationshipPID int,
      companyID varchar(24),
      companyName varchar(256),
      CreatedBy int,
      VIN varchar(24),
      MapVehiclePID varchar(10),
      TrimMapPID varchar(10),
      Year varchar(4),
      SubmittedBy varchar(2),
      companyPID int,
      PlanTypePID int,
      PlanPID int,
      PlanName varchar(50),
      companyRelation int,
      ExpirationDate datetime,
      PinStatusPID int,
      ModelName varchar(50),
      UserID varchar(128),
      EmployeeFirstName varchar(30),
      EmployeeMiddleName Varchar(30),
      EmployeeLastName varchar(30),
      EmployeeEmail varchar(128),
      CreaterRef uniqueidentifier
    )
as begin

    Declare @EmployeeType varchar(2)

    Select  @EmployeeType = SubmittedBy
    From    PIN.PinDetail
    WHERE   ( PIN.PinDetail.PinCode = @PinCode )

    insert  into @PinOwner
            (
              PinCode,
              BuyerFirstName,
              BuyerLastName,
              Address1,
              City,
              StateID,
              Zipcode,
              Email,
              Phone1,
              RelationshipPID,
              companyID,
              companyName,
              CreatedBy,
              VIN,
              MapVehiclePID,
              TrimMapPID,
              Year,
              SubmittedBy,
              companyPID,
              PlanTypePID,
              PlanPID,
              PlanName,
              companyRelation,
              ExpirationDate,
              PinStatusPID,
              ModelName,
              UserID,
              EmployeeFirstName,
              EmployeeMiddleName,
              EmployeeLastName,
              EmployeeEmail,
              CreaterRef
            )
            SELECT  PIN.PinDetail.PinCode,
                    profile.T_Profile.FirstName,
                    profile.T_Profile.LastName,
                    profile.T_Profile.Address1,
                    profile.T_Profile.City,
                    profile.T_Profile.StateID,
                    profile.T_Profile.Zipcode,
                    profile.T_Profile.Email,
                    profile.T_Profile.Phone1,
                    profile.T_Profile.RelationshipPID,
                    isnull(profile.T_Company.companyID,( select B.[companyID] FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyID,
                    isnull(profile.T_Company.companyName,(select B.companyName FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyName,
                    --profile.T_Company.companyID,
                    --profile.T_Company.companyName,
                    PIN.PinDetail.CreatedBy,
                    PIN.PinDetail.VIN,
                    PIN.PinDetail.MapVehiclePID,
                    coalesce(PIN.PinDetail.TrimMapPID,'') as TrimMapPID,
                    PIN.PinDetail.Year,
                    pin.PinDetail.SubmittedBy,
                    isnull(profile.T_Company.companyPID,( select B.companyPID FROM [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyPID,
                    --profile.T_Company.companyPID,
                    dbo.vw_active_plan.PlanTypePID,
                    dbo.vw_active_plan.PlanPID,
                    dbo.vw_active_plan.PlanName,
                    isnull(profile.T_Company.companyPID,( select B.companyRelation FROM   [profile].T_User A inner join [HyundaiApp].[profile].T_Company B on A.[companyPID] = B.companyPID
                    and A.GlobalID=PIN.PinDetail.CreaterRef)) as companyRelation,
                    --profile.T_Company.companyRelation,
                    PIN.PinDetail.ExpirationDate,
                    PIN.PinDetail.PinStatusPID,
                    (SELECT top 1 M.Name FROM (SELECT SUBSTRING(@VIN, 4, 1) + SUBSTRING(@VIN, 6, 1) + SUBSTRING(@VIN, 5, 1) + SUBSTRING(@VIN, 8, 1) + SUBSTRING(@VIN, 10, 1) as ModelID) A INNER JOIN [HMA_OS_APP].[dbo].Modl_Model M ON A.ModelID = M.Modl_Model_Number) as ModelName,
                    --(select top 1 vehicleName from dbo.fnHCircle_GetTrims (substring(ISNULL(NULLIF(PIN.PinDetail.MapVehiclePID,''),PIN.PinDetail.TrimMapPID),1,1),PIN.PinDetail.Year)) as ModelName,
                    null,
                    null,
                    null,
                    null,
                    null,
                    CreaterRef
            FROM    PIN.PinDetail
                    left JOIN profile.T_Company ON PIN.PinDetail.CreaterRef = profile.T_Company.GlobalID
                    INNER JOIN dbo.vw_active_plan ON PIN.PinDetail.PlanPID = dbo.vw_active_plan.PlanPID
                    INNER JOIN profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID
                    INNER JOIN profile.RelationShip ON profile.T_Profile.RelationshipPID = profile.RelationShip.RelationShipPID
                    INNER JOIN profile.State_Codes ON profile.T_Profile.StateID = profile.State_Codes.StatePID
            WHERE   ( PIN.PinDetail.PinCode = @PinCode)

    if ( @EmployeeType = 'E' ) 
        begin
				--- To Get Sponsor Details---------
            update  @PinOwner
            set     UserID = a.UserID,
                    EmployeeFirstName = b.FirstName,
                    EmployeeMiddleName = b.MiddleInitial,
                    EmployeeLastName = b.LastName,
                    EmployeeEmail = b.Email
            FROM    profile.T_User AS a
                    INNER JOIN profile.T_Profile AS b ON a.GlobalID = b.GlobalRefID
                    LEFT OUTER JOIN PIN.PinDetail ON a.GlobalID = PIN.PinDetail.CreaterRef
                    inner join @PinOwner c on pin.PinDetail.PinCode = c.PinCode
            WHERE   (PIN.PinDetail.PinCode = @PinCode )
        end
          
    RETURN
   END
    



GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_Company_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.
--
-- SELECT * FROM  [dbo].[fnHCirle_Reports_Company_Company_PINUseSummary]('1/1/2011','10/12/2011')
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Reports_Company_Company_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT IssueDate
             ,[companyID]
			,[companyName]
			,PlanType
			,totalGen
			,totalUsed
     
      FROM
     
  ( SELECT Gen.*,coalesce(Used.totalUsed,0) as totalUsed FROM 
     
		(SELECT 
			[companyID]
			,[companyName]
			,PlanType
			,IssueDate
			,count(IssueDate)as totalGen
		 FROM  
			(
			 SELECT
				   [companyID]
				  ,[companyName]
				  ,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
			  FROM [HyundaiApp].[profile].[T_Company] C
			  INNER JOIN PIN.PinDetail P
			  ON C.GlobalID=P.CreaterRef
			  LEFT JOIN PIN.PINSale PS
			  ON P.PinPID=PS.PinPID
			  WHERE P.PlanPID in (28,29)
			   and P.IsActive=1
			   and [companyName]<>''
			 
			  ) A
		  
		  GROUP BY 
				[companyID]
				,[companyName]
				,PlanType
				,IssueDate
		 )  Gen
	 
			LEFT JOIN 
			 		
	 				(SELECT 
						[companyID]
						,[companyName]
						,PlanType
						,UsedDate
						,count(UsedDate)as totalUsed
					FROM 
							(
							 SELECT
								   [companyID]
								  ,[companyName]
								  --,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
								  ,[dbo].[FirstDateOfMonth](P.IssueDate) as UsedDate
								  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
							  FROM [HyundaiApp].[profile].[T_Company] C
							  INNER JOIN PIN.PinDetail P
							  ON C.GlobalID=P.CreaterRef
							  LEFT JOIN PIN.PINSale PS
							  ON P.PinPID=PS.PinPID
							  WHERE P.PlanPID in (28,29)
							  and PS.SaleDate is not null
							   and P.IsActive=1
							   and companyName<>''
							  
					 ) A
			  
					  GROUP BY 
							[companyID]
							,[companyName]
							,PlanType
						    ,UsedDate
					)Used
			  
			  ON Gen.CompanyID=Used.companyID
				 AND Gen.PlanType=Used.PlanType
				 AND Gen.IssueDate=Used.UsedDate
	WHERE IssueDate >=@StartDate and IssueDate <=@EndDate

	)A	  

 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.
--
-- SELECT * FROM  [dbo].[fnHCirle_Reports_Company_PINUseSummary]('1/1/2011','2/12/2011') where companyid='CID-113084'
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Reports_Company_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT  C.MonthDate
             ,T.[companyID]
			,T.[companyName]
			,P.PlanType
			,coalesce(Sum(totalGen),0)
			,coalesce(Sum(totalUsed),0)
     
      FROM dbo.Date_GetMonthListByDateRange(@StartDate,@EndDate) C
      FULL JOIN profile.T_Company T ON 1=1
      FULL JOIN (SELECT 'A' as PlanType UNION SELECT 'E') P ON 1=1      
     LEFT JOIN  
     (
     SELECT * FROM dbo.fnHCirle_Reports_Company_User_PINUseSummary(@startDate,@EndDate) 
     UNION ALL
     SELECT * FROM [dbo].[fnHCirle_Reports_Company_Company_PINUseSummary](@startDate,@EndDate) 
     )
     CPU
      ON C.Monthdate=CPU.MonthDate
         AND P.PlanType=CPU.PlanType
         AND T.CompanyID=CPU.CompanyID
      group by  C.MonthDate
				 ,T.[companyID]
				,T.[companyName]
				,P.PlanType
      
     

 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_Sponsor_Company_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.
--
-- SELECT * FROM  [dbo].[fnHCirle_Reports_Company_Sponsor_Company_PINUseSummary]('1/1/2011','10/12/2011')
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Reports_Company_Sponsor_Company_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      Lastname varchar(100),
      FirstName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT  IssueDate
             ,[companyID]
			,[companyName]
			,[companyName]
			,''
			,PlanType
			,totalGen
			,totalUsed
     
      FROM
     
  ( SELECT Gen.*,coalesce(Used.totalUsed,0) as totalUsed FROM 
     
		(SELECT 
			[companyID]
			,[companyName]
			,PlanType
		    ,IssueDate
			,count(IssueDate)as totalGen
		 FROM  
			(
			 SELECT
				   [companyID]
				  ,[companyName]
				  ,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
							  
			  FROM [HyundaiApp].[profile].[T_Company] C
			  INNER JOIN PIN.PinDetail P
			  ON C.GlobalID=P.CreaterRef
			  LEFT JOIN PIN.PINSale PS
			  ON P.PinPID=PS.PinPID
			  WHERE P.PlanPID in (28,29)
			  and P.IsActive=1
			 
			  ) A
		  
		  GROUP BY 
				[companyID]
				,[companyName]
				,PlanType
				,IssueDate
		 )  Gen
	 
			LEFT JOIN 
			 		
	 				(SELECT 
						[companyID]
						,[companyName]
						,PlanType
						,UsedDate
						,count(UsedDate)as totalUsed
					FROM 
							(
							 SELECT
								   [companyID]
								  ,[companyName]
								  --,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
								  ,[dbo].[FirstDateOfMonth](P.IssueDate) as UsedDate
								  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
							FROM [HyundaiApp].[profile].[T_Company] C
							  INNER JOIN PIN.PinDetail P
							  ON C.GlobalID=P.CreaterRef
							  LEFT JOIN PIN.PINSale PS
							  ON P.PinPID=PS.PinPID
							  WHERE P.PlanPID in (28,29)
							  and PS.SaleDate is not null
							   and P.IsActive=1
							  
					 ) A
			  
					  GROUP BY 
							[companyID]
							,[companyName]
							,PlanType
							,UsedDate
					)Used
			  
			  ON Gen.CompanyID=Used.companyID
				 AND Gen.PlanType=Used.PlanType
				 AND Gen.IssueDate=Used.UsedDate
	WHERE IssueDate >=@StartDate and IssueDate <=@EndDate

	)A	  

 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_Sponsor_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.

/*
SELECT * FROM  [dbo].[fnHCirle_Reports_Company_PINUseSummary]('1/1/2011','2/12/2011') where companyid='CID-113084'
SELECT * FROM  [dbo].[fnHCirle_Reports_Company_Sponsor_PINUseSummary]('1/1/2010','12/12/2010') where companyid='HMA'
and firstname='Robert' and lastname='sturgeon'
*/
-- =============================================
CREATE  FUNCTION [dbo].[fnHCirle_Reports_Company_Sponsor_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      FirstName varchar(100),
      LastName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT  C.MonthDate
             ,T.[companyID]
			 ,T.[companyName]
			 ,T.CompanyName
			 ,T.CompanyName
			 ,P.PlanType
			 ,coalesce(Sum(totalGen),0)
			 ,coalesce(Sum(totalUsed),0)
      FROM dbo.Date_GetMonthListByDateRange(@StartDate,@EndDate) C
      FULL JOIN profile.T_Company T ON 1=1
      FULL JOIN (SELECT 'A' as PlanType UNION SELECT 'E') P ON 1=1      
     LEFT JOIN  
     (
       SELECT * FROM [dbo].[fnHCirle_Reports_Company_Sponsor_Company_PINUseSummary](@startDate,@EndDate) 
     )
     CPU
      ON C.Monthdate=CPU.MonthDate
         AND P.PlanType=CPU.PlanType
         AND T.CompanyID=CPU.CompanyID
      group by  C.MonthDate
				 ,T.[companyID]
				,T.[companyName]
				,P.PlanType
      UNION ALL
      SELECT  C.MonthDate
             ,T.[companyID]
			 ,T.[companyName]
			 ,PF.FirstName
			 ,PF.LastName
			 ,P.PlanType
			 ,coalesce(Sum(totalGen),0)
			 ,coalesce(Sum(totalUsed),0)
      FROM dbo.Date_GetMonthListByDateRange(@StartDate,@EndDate) C
      FULL JOIN profile.T_Company T ON 1=1
      INNER JOIN profile.T_User U on U.companyPID=T.companyPID
      INNER JOIN profile.T_Profile PF ON PF.GlobalRefID=U.GlobalID
      FULL JOIN (SELECT 'A' as PlanType UNION SELECT 'E') P ON 1=1      
     LEFT JOIN  
     (
        SELECT * FROM dbo.fnHCirle_Reports_Company_Sponsor_User_PINUseSummary(@startDate,@EndDate) 
     )
     CPU
      ON C.Monthdate=CPU.MonthDate
         AND P.PlanType=CPU.PlanType
         AND T.CompanyID=CPU.CompanyID
         AND U.GlobalID=CPU.GlobalID
      group by  C.MonthDate
				 ,T.[companyID]
				,T.[companyName]
				,PF.FirstName
			    ,PF.LastName
				,P.PlanType

     

 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_Sponsor_User_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.
--
-- SELECT * FROM  [dbo].[fnHCirle_Reports_Company_User_PINUseSummary]('1/1/2010','10/12/2011') WHERE CompanyID='TX124'
--
/*
SELECT * FROM  [dbo].[fnHCirle_Reports_Company_Sponsor_User_PINUseSummary]('1/1/2011','11/12/2011') WHERE CompanyID='HMA'
and firstname='Robert' and lastname='sturgeon'
*/
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Reports_Company_Sponsor_User_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      GlobalID uniqueidentifier,
      FirstName varchar(100),
      LastName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int,
      RelationshipPID int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT IssueDate
            ,[companyID]
			,[companyName]
			,GlobalID
			,FirstName
			 ,LastName
			,PlanType
			,totalGen
			,totalUsed
			,RelationshipPID
       FROM      
     ( SELECT Gen.*,coalesce(Used.totalUsed,0) as totalUsed FROM 
     
		(SELECT 
			[companyID]
			,[companyName]
			,GlobalID
			 ,FirstName
			 ,LastName
			,PlanType
			,IssueDate
			,RelationshipPID
			,count(IssueDate)as totalGen
		 FROM  
			(
			 SELECT
	   			  
				   [companyID]
				  ,[companyName]
				  ,U.GlobalID
				  ,PF.FirstName
				  ,PF.LastName
				  ,PF.RelationshipPID
				  ,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
			  FROM [HyundaiApp].[profile].[T_Company] C
			  INNER JOIN [profile].[T_User] U ON 
			  U.companyPID=C.companyPID
			  INNER JOIN profile.T_Profile PF
			  ON PF.GlobalRefID=U.GlobalID
			  INNER JOIN PIN.PinDetail P
			  ON U.GlobalID=P.CreaterRef
			  LEFT JOIN PIN.PINSale PS
			  ON P.PinPID=PS.PinPID
			  WHERE P.PlanPID in (28,29)
			  AND  IssueDate >=@StartDate and IssueDate <=@EndDate
			   and P.IsActive=1
			   ) A
		  
		  GROUP BY 
				[companyID]
				,[companyName]
				,GlobalID
				,FirstName
				,LastName
				,RelationshipPID
				,PlanType
				,IssueDate
		 )  Gen
	 
			LEFT JOIN 
			 		
	 				(SELECT 
						[companyID]
						,[companyName]
						,GlobalID
						,PlanType
						,UsedDate
						,count(UsedDate)as totalUsed
					FROM 
							(
							 SELECT	   			  
							   [companyID]
							  ,[companyName]
							  ,U.GlobalID
							  ,[dbo].[FirstDateOfMonth](P.IssueDate) As UsedDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
						  FROM [HyundaiApp].[profile].[T_Company] C
						    INNER JOIN [profile].[T_User] U ON
						     U.companyPID=C.companyPID
							  INNER JOIN PIN.PinDetail P
							  ON U.GlobalID=P.CreaterRef
							  LEFT JOIN PIN.PINSale PS
							  ON P.PinPID=PS.PinPID
							  WHERE P.PlanPID in (28,29)
							   and PS.SaleDate is not null
							    AND  IssueDate >=@StartDate and IssueDate <=@EndDate
							     and P.IsActive=1
					 ) A
			  
					  GROUP BY 
							[companyID]
							,[companyName]
							,GlobalID
							,PlanType
							 ,UsedDate
					)Used
			  
			  ON Gen.CompanyID=Used.companyID
				 AND Gen.PlanType=Used.PlanType
				 AND Gen.IssueDate=Used.UsedDate
				 AND  GEN.GlobalID=Used.GlobalID	
				 --WHERE Gen.PlanType='A'

	)A	  

	
 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_Company_User_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.
--
-- SELECT * FROM  [dbo].[fnHCirle_Reports_Company_User_PINUseSummary]('1/1/2010','10/12/2011') WHERE CompanyID='TX124' and plan ='A'
-- =============================================
CREATE FUNCTION [dbo].[fnHCirle_Reports_Company_User_PINUseSummary]
    (
       @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      MonthDate datetime,
      CompanyID varchar(20),
      CompanyName varchar(100),
      PlanType varchar(3),
      TotalGen int,
      TotalUsed int
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
     SELECT IssueDate
            ,[companyID]
			,[companyName]
			,PlanType
			,totalGen
			,totalUsed
       FROM      
     ( SELECT Gen.*,coalesce(Used.totalUsed,0) as totalUsed FROM 
     
		(SELECT 
			[companyID]
			,[companyName]
			,PlanType
			,IssueDate
			,count(IssueDate)as totalGen
		 FROM  
			(
			 SELECT
	   			  
				   [companyID]
				  ,[companyName]
				  ,[dbo].[FirstDateOfMonth](P.IssueDate) As IssueDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
				FROM [HyundaiApp].[profile].[T_Company] C
			  INNER JOIN [profile].[T_User] U ON
			  U.companyPID=C.companyPID
			  INNER JOIN PIN.PinDetail P
			  ON U.GlobalID=P.CreaterRef
			  LEFT JOIN PIN.PINSale PS
			  ON P.PinPID=PS.PinPID
			  WHERE P.PlanPID in (28,29)
			  AND  IssueDate >=@StartDate and IssueDate <=@EndDate
			   and P.IsActive=1
			   ) A
		  
		  GROUP BY 
				[companyID]
				,[companyName]
				,PlanType
				,IssueDate
		 )  Gen
	 
			LEFT JOIN 
			 		
	 				(SELECT 
						[companyID]
						,[companyName]
						,PlanType
						,UsedDate
						,count(UsedDate)as totalUsed
					FROM 
							(
							 SELECT	   			  
							   [companyID]
							  ,[companyName]
							  ,[dbo].[FirstDateOfMonth](P.IssueDate) As UsedDate
				  --,[dbo].[FirstDateOfMonth](PS.SaleDate) as UsedDate
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
				   FROM [HyundaiApp].[profile].[T_Company] C
						    INNER JOIN [profile].[T_User] U ON
						     U.companyPID=C.companyPID
							  INNER JOIN PIN.PinDetail P
							  ON U.GlobalID=P.CreaterRef
							  LEFT JOIN PIN.PINSale PS
							  ON P.PinPID=PS.PinPID
							  WHERE P.PlanPID in (28,29)
							   and PS.SaleDate is not null
							    AND  IssueDate >=@StartDate and IssueDate <=@EndDate
							     and P.IsActive=1
					 ) A
			  
					  GROUP BY 
							[companyID]
							,[companyName]
							,PlanType
						    ,UsedDate
					)Used
			  
			  ON Gen.CompanyID=Used.companyID
				 AND Gen.PlanType=Used.PlanType
				 AND Gen.IssueDate=Used.UsedDate
	--WHERE Gen.PlanType='A'

	)A	  

	
 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirle_Reports_PurchaseDetail_PINUseSummary]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Date: 11/16/2011
-- Author:Nick Nguyen
--: Return PIN use that created from T_Company table. If the PIN exists on PINSalse it is used.

/*
SELECT * FROM [dbo].[fnHCirle_Reports_PurchaseDetail_PINUseSummary]('1/1/2010','12/12/2010')
where VIN='5XYZG4AG0BG020686'
*/
-- =============================================
CREATE  FUNCTION [dbo].[fnHCirle_Reports_PurchaseDetail_PINUseSummary]
    (
      @StartDate datetime
      ,@EndDate datetime
     )
RETURNS @ResultTable table
    (
      CompanyID varchar(30),
      CompanyName varchar(100),
      FirstName varchar(100),
      LastName varchar(100),
      PlanType varchar(2),
      PIN varchar(10),
      PLastname varchar(100),
      PFistname varchar(100),
      City varchar(100),
      State varchar(3),
      Region varchar(3),
      DealerCode varchar(5),
      DealerName varchar(100),
      VIN varchar(17),
      ModelYear varchar(20),
      SaleDate datetime,
      [RDRDate]datetime,
      InvoiceAmt money
      ,DealerCash money
      ,Incentive Money
      ,[HCCoupon] Money
      , RelationShipName varchar(15)
    
    )
AS BEGIN
   

     INSERT INTO @ResultTable
			SELECT distinct 
				  SU.CompanyID
				  ,SU.CompanyName
				  ,SU.FirstName
				  ,SU.LastName
				  ,SU.PlanType
				  ,P.PinCode
				  ,[BuyerFirstName]
				  ,[BuyerLastName]				  
				  ,D.city
				  ,D.state
				  ,D.region
				  ,D.[dealerCode]
				  ,D.dealer_name
				  ,S.[VIN]
				  ,P.[Year] as [ModelYear]
				  ,[SaleDate]
				  ,[RDRDate]
				   ,coalesce(P.[HCInvoice],0) as [InvoiceAmt]  
				   ,coalesce(P.[HCECash] ,0)   
				   ,coalesce(P.[Incentive],0) 
				  , coalesce(P.[HCCoupon],0)
				  ,RelationShipName 
			  FROM [HyundaiApp].[PIN].[PINSale] S
			  INNER JOIN PIN.PinDetail P
			  ON S.PinPID=P.PinPID
			  INNER JOIN Dealer.DealerInfo D
			  on S.DealerCode=D.dealerCode
			  INNER JOIN [dbo].[fnHCirle_Reports_Company_Sponsor_User_PINUseSummary](@StartDate,@EndDate) SU
			  ON SU.GlobalID=P.CreaterRef
			   INNER JOIN profile.RelationShip R
			  ON SU.RelationshipPID=R.RelationShipPID
			  UNION ALL  
			  SELECT distinct 
				  C.CompanyID
				  ,C.CompanyName
				  ,C.CompanyName
				  ,C.CompanyName
				  ,case when P.PlanPID='28' THEN 'A' ELSE 'E' END as PlanType
				  ,P.PinCode
				  ,[BuyerFirstName]
				  ,[BuyerLastName]
				  ,D.city
				   ,D.state
				  ,D.region
				  ,D.[dealerCode]
				  ,D.dealer_name
				  ,S.[VIN]
				  ,P.[Year] as [ModelYear]
				  ,[SaleDate]
				   ,[RDRDate] 
				  ,P.[HCInvoice] as   [InvoiceAmt]
				   ,P.[HCECash]    
				   ,P.[Incentive] 
				   ,P.[HCCoupon] 
				   ,RelationShipName
			  FROM [HyundaiApp].[PIN].[PINSale] S
			  INNER JOIN PIN.PinDetail P
			  ON S.PinPID=P.PinPID
			  INNER JOIN Dealer.DealerInfo D
			  on S.DealerCode=D.dealerCode
			  INNER JOIN profile.T_Company C
			  ON C.GlobalID=P.CreaterRef
			  INNER JOIN profile.T_Profile T
			  ON P.BuyerRef=T.GlobalRefID
			  INNER JOIN profile.RelationShip R
			  ON T.RelationshipPID=R.RelationShipPID
			  WHERE P.IssueDate between @startDate and @EndDate
			 
     

 RETURN
 END
GO
/****** Object:  UserDefinedFunction [dbo].[fnReturnVehicleDrivetrainId]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[fnReturnVehicleDrivetrainId] (23,'ACCENT GS 3-DOOR AUTOMATIC')
-- =============================================
CREATE FUNCTION [dbo].[fnReturnVehicleDrivetrainId] 
( @MapVehiclePID nvarchar(100)
  ,@VehicleDrviveTrainID varchar(100)
  )
  
RETURNS varchar(100)
AS BEGIN
    DECLARE @RET varchar(100) 
    SELECT   @RET =[VehicleDrivetrainId]
    FROM [HyundaiApp].[dbo].[As400ToVehicleMap]
	  where MapVehiclePID=@MapVehiclePID
	  
   return isnull(@RET,@VehicleDrviveTrainID)

   END
GO
/****** Object:  UserDefinedFunction [dbo].[MidDateOfMonth]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:  Nick Nguyen
-- Created on: 12/16/2010
-- Description: returns a datetime value for the specified year, month and day
-- =============================================
create function [dbo].[MidDateOfMonth]
( @Date datetime)
returns datetime
as
    begin
		return dateadd(month,((Year(@date)-1900)*12)+Month(@date)-1,15)
    end

--Select [dbo].[MidDateOfMonth](getdate())
GO
/****** Object:  UserDefinedFunction [dbo].[udf_CheckEquusModelCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 12/5/2012
-- Description:	<Description, ,>
--select [dbo].[udf_CheckEquusModelCode]  ('Edd','Usdf')
-- =============================================
CREATE FUNCTION [dbo].[udf_CheckEquusModelCode] 
( @ModelCode varchar(200)
  ,@TrimName varchar(200)
  )

RETURNS varchar(20)
AS BEGIN
    DECLARE @RET varchar(20) 
    SET @RET= (case  when  left(@ModelCode,1) ='E' and 'S'=substring(@TrimName,1,1) Then left(@ModelCode,8) + '_01' 
					 when  left(@ModelCode,1) ='E' and 'U'=substring(@TrimName,1,1) Then left(@ModelCode,8) + '_02' 
				 else left(@ModelCode,8) END
				 ) 

   return @RET

   END



GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_IncludeByState]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By State (TYPE S)
-- select [dbo].[udf_DealerCash_VerifyByState] ('2011205','FL088')
-- =============================================
create FUNCTION [dbo].[udf_DealerCash_IncludeByState] 
( 
    @ProgramCode varchar(10)
   ,@State varchar(5)
  
)
  
RETURNS bit
AS BEGIN
	
	IF	 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							 WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='S'
									AND Data=@State
								
						)
				
	RETURN 1
			
		
			
		--ELSE	SET @RetValue= 0
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_VerifyByDealer]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By Dealer (TYPE D)
-- select [dbo].[udf_DealerCash_VerifyByDealer] ('2011205','FL088')
-- =============================================
CREATE FUNCTION [dbo].[udf_DealerCash_VerifyByDealer] 
( 
    @ProgramCode varchar(10)
   ,@Dealer varchar(5)
  
)
  
RETURNS bit
AS BEGIN
	
	
	DECLARE @RetValue bit
	
	IF not exists( SELECT 1	FROM [dbo].[DealerCashException] 
					WHERE ProgramCode=@ProgramCode
						  AND [Type]='D'
			      )
			RETURN 1
			 
	 	  
	ELSE 
	
		IF			 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							 WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='D'
									AND Data=@Dealer
									--AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
						)
				OR
				       (EXISTS (SELECT 1 FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='D'
							    )
							    AND
								@Dealer  NOT IN--Exclude
								( SELECT Data FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='D'
								)
						)
			RETURN 1
			
		
			
		--ELSE	SET @RetValue= 0
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_VerifyByRegion]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By Region (TYPE R)
-- select [dbo].[udf_DealerCash_VerifyByRegion] ('2011101','CA')
-- =============================================
CREATE FUNCTION [dbo].[udf_DealerCash_VerifyByRegion] 
( 
    @ProgramCode varchar(10)
   ,@Region varchar(5)
)
  
RETURNS bit
AS BEGIN
	
		
	IF not exists( SELECT 1	FROM [dbo].[DealerCashException] 
					WHERE ProgramCode=@ProgramCode
						  AND [Type]='R'
			      )
			RETURN 1
			 
	 	  
	ELSE 
	
		IF			 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							 WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='R'
									AND Data=CASE WHEN @Region='ALL' THEN Data ELSE @Region END
									
						)
				OR
				       (EXISTS (SELECT 1 FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='R'
							    )
							    AND
								@Region  NOT IN--Exclude
								( SELECT Data FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='R'
								)
						)
			RETURN 1
			
		
			
	
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_VerifyBySeries]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By Series (TYPE M)
-- select [dbo].[udf_DealerCash_VerifyBySeries] ('2011217','E','2010')
-- =============================================
CREATE FUNCTION [dbo].[udf_DealerCash_VerifyBySeries] 
( 
    @ProgramCode varchar(10)
   ,@Series varchar(2)
   ,@ModelYear varchar(4)
)
  
RETURNS bit
AS BEGIN
	
	
	DECLARE @RetValue bit
	
	IF not exists( SELECT 1	FROM [dbo].[DealerCashException] 
					WHERE ProgramCode=@ProgramCode
						  AND [Type]='M'
			      )
			RETURN 1
			 
	 	  
	ELSE 
		IF			 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							 WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='M'
									AND Data=@Series
									AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
						)
				OR
						
						(EXISTS --Exclude
									( SELECT 1 	FROM [dbo].[DealerCashException]
											 WHERE  ProgramCode=@ProgramCode
													AND [Incl Flag]=0 
													AND [Type]='M'
													--AND Data<>@Series
													AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
									)
						      AND
						         @Series NOT IN
											 (SELECT 1 	FROM [dbo].[DealerCashException]
											 WHERE  ProgramCode=@ProgramCode
													AND [Incl Flag]=0 
													AND [Type]='M'
													AND Data<>@Series
													AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
											)
						)
			RETURN 1
									
									
		
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_VerifyBySeries_Test]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By Series (TYPE M)
-- select [dbo].[udf_DealerCash_VerifyBySeries] ('2011217','E','2010')
--  select dbo.udf_DealerCash_VerifyBySeries('2014292','C','2013')
-- =============================================
create FUNCTION [dbo].[udf_DealerCash_VerifyBySeries_Test] 
( 
    @ProgramCode varchar(10)
   ,@Series varchar(2)
   ,@ModelYear varchar(4)
)
  
RETURNS bit
AS BEGIN
	
	
	DECLARE @RetValue bit
	
	IF not exists( SELECT 1	FROM [dbo].[DealerCashException] 
					WHERE ProgramCode=@ProgramCode
						  AND [Type]='M'
						  AND Data=@Series
						  AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
						  
			      )
			RETURN 1
			 
	 	  
	ELSE 
		IF			 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							  WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='M'
									AND Data=@Series
									AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
						)
				OR
						
						(EXISTS --Exclude
									( SELECT 1 	FROM [dbo].[DealerCashException]
											 WHERE  ProgramCode=@ProgramCode
													AND [Incl Flag]=0 
													AND [Type]='M'
													--AND Data<>@Series
													AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
									)
						      AND
						         @Series NOT IN
											 (SELECT 1 	FROM [dbo].[DealerCashException]
											 WHERE  ProgramCode=@ProgramCode
													AND [Incl Flag]=0 
													AND [Type]='M'
													AND Data<>@Series
													AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
											)
						)
			RETURN 1
									
									
		
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_DealerCash_VerifyByState]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 3/82011
-- Description:	Verify By State (TYPE S)
-- select [dbo].[udf_DealerCash_VerifyByState] ('2011205','FL088')
-- =============================================
create FUNCTION [dbo].[udf_DealerCash_VerifyByState] 
( 
    @ProgramCode varchar(10)
   ,@State varchar(5)
  
)
  
RETURNS bit
AS BEGIN
	
		
	IF not exists( SELECT 1	FROM [dbo].[DealerCashException] 
					WHERE ProgramCode=@ProgramCode
						  AND [Type]='S'
			      )
			RETURN 1
			 
	 	  
	ELSE 
	
		IF			 EXISTS --Include
							( SELECT 1 	FROM [dbo].[DealerCashException]
							 WHERE  ProgramCode=@ProgramCode
							        AND [Incl Flag]=1 
							        AND [Type]='S'
									AND Data=@State
									--AND @ModelYear in (ModelYear1,ModelYear2,ModelYear3)
						)
				OR
				       (EXISTS (SELECT 1 FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='S'
							    )
							    AND
								@State  NOT IN--Exclude
								( SELECT Data FROM [dbo].[DealerCashException]
										 WHERE  ProgramCode=@ProgramCode
												AND [Incl Flag]=0 
												AND [Type]='S'
								)
						)
			RETURN 1
			
		
			
		--ELSE	SET @RetValue= 0
	
	RETURN 0

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_getDealerCash]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 11/17/2011
-- Description:	<Description, ,>
-- select [dbo].[udf_getDealerCash] ('SC','AL008','2011','6','62442')

-- =============================================
CREATE FUNCTION [dbo].[udf_getDealerCash] 
( 
   @Region char(2)
  ,@DealerCode varchar(5)
  ,@Year varchar(4)
  ,@Series varchar(2)
  ,@ModelCode varchar(10)
  )
  
RETURNS [numeric](7, 2) 
AS BEGIN
	
	DECLARE @State char(2)
	DECLARE @RetValue [numeric](7, 2)
    SET @State=LEFT(@DealerCode,2)     
    set @ModelCode=	SUBSTRING(@ModelCode,1,8) 
     
	SET  @RetValue= (
				SELECT Max([Amount]) FROM
						(	SELECT Amount,ProgramCode
							FROM [dbo].[DealerCashRegular]
							  WHERE Region in (@Region,'ALL')
									AND ModelYear=@year
									AND ModelCode=@ModelCode
									AND Series=@Series
									AND GETDATE()  between [start Date] and dateadd(day,1,[End Date])
						) A
						WHERE
							---Check for Restriction
					         dbo.udf_DealerCash_VerifyBySeries(ProgramCode,@Series,@Year)=1
					         AND dbo.udf_DealerCash_VerifyByDealer(ProgramCode,@DealerCode)=1
					         AND dbo.udf_DealerCash_VerifyByState(ProgramCode,@State)=1
					         AND 
							(dbo.udf_DealerCash_VerifyByRegion(ProgramCode,@Region)=1
					        OR  dbo.[udf_DealerCash_IncludeByState] (ProgramCode,@State)=1)
					     
					)
				
		
		
	RETURN COALESCE(@RetValue,0)

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_getDealerCash_TEST]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 11/17/2011
-- Description:	<Description, ,>
-- select [dbo].[udf_getDealerCash_TEST] ('WE','CA310','2012','B','B0422R65')

-- =============================================
CREATE FUNCTION [dbo].[udf_getDealerCash_TEST] 
( 
   @Region char(2)
  ,@DealerCode varchar(5)
  ,@Year varchar(4)
  ,@Series varchar(2)
  ,@ModelCode varchar(10)
  )
  
RETURNS [numeric](7, 2) 
AS BEGIN
	
	DECLARE @State char(2)
	DECLARE @RetValue [numeric](7, 2)
    SET @State=LEFT(@DealerCode,2)     
	 	  
	SET  @RetValue= (
				SELECT Max([Amount]) FROM
						(	SELECT Amount,ProgramCode
							FROM [dbo].[DealerCashRegular]
							  WHERE Region in (@Region,'ALL')
									AND ModelYear=@year
									AND ModelCode=@ModelCode
									AND Series=@Series
									AND GETDATE()  between [start Date] and dateadd(day,1,[End Date])
						) A
						WHERE
							---Check for Restriction
					         dbo.udf_DealerCash_VerifyBySeries(ProgramCode,@Series,@Year)=1
					         AND dbo.udf_DealerCash_VerifyByDealer(ProgramCode,@DealerCode)=1
					         AND dbo.udf_DealerCash_VerifyByState(ProgramCode,@State)=1
					         AND 
							(dbo.udf_DealerCash_VerifyByRegion(ProgramCode,@Region)=1
					        OR  dbo.[udf_DealerCash_IncludeByState] (ProgramCode,@State)=1)
					     
					)
				
		
		
	RETURN COALESCE(@RetValue,0)

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_getDealerCash_TESTNEW]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 11/17/2011
-- Description:	<Description, ,>
-- select [dbo].[udf_getDealerCash] ('SC','AL008','2011','6','62442')
-- select [dbo].[udf_getDealerCash_TESTNEW] ('CE','IL071','2014','4','46432F45')

-- =============================================
CREATE FUNCTION [dbo].[udf_getDealerCash_TESTNEW] 
( 
   @Region char(2)
  ,@DealerCode varchar(5)
  ,@Year varchar(4)
  ,@Series varchar(2)
  ,@ModelCode varchar(10)
  )
  
RETURNS [numeric](7, 2) 
AS BEGIN
	
	DECLARE @State char(2)
	DECLARE @RetValue [numeric](7, 2)
    SET @State=LEFT(@DealerCode,2)     
    set @ModelCode=	SUBSTRING(@ModelCode,1,8) 
     
	SET  @RetValue= (
				SELECT Max([Amount]) FROM
						(	SELECT Amount,ProgramCode
							FROM [dbo].[DealerCashRegular]
							  WHERE Region in (@Region,'ALL')
									AND ModelYear=@year
									AND ModelCode=@ModelCode
									AND Series=@Series
									AND GETDATE()  between [start Date] and dateadd(day,1,[End Date])
						) A
						 WHERE 1=1
						--	---Check for Restriction
					AND    dbo.udf_DealerCash_VerifyBySeries(ProgramCode,@Series,@Year)=1
					      --   AND dbo.udf_DealerCash_VerifyByDealer(ProgramCode,@DealerCode)=1
					  --       AND dbo.udf_DealerCash_VerifyByState(ProgramCode,@State)=1
					  --       AND 
							--(dbo.udf_DealerCash_VerifyByRegion(ProgramCode,@Region)=1
					  --      OR  dbo.[udf_DealerCash_IncludeByState] (ProgramCode,@State)=1)
					     
					)
				
		
		
	RETURN COALESCE(@RetValue,0)

END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_getEquusModelCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 12/5/2012
-- Description:	<Description, ,>
--select  [dbo].[udf_getEquusModelCode]  ('E0422R85','01', 2017)
-- Modify History:
--	   10/24/2016_DTon: Added ModelYear to parameter because 'E' can apply to Equus or G90 
-- =============================================
CREATE FUNCTION [dbo].[udf_getEquusModelCode]
                                            (
               @ModelCode VARCHAR(100), @AccCode VARCHAR(100), @ModelYear int = NULL
                                            )
RETURNS VARCHAR(20)
AS
     BEGIN
         DECLARE @RET VARCHAR(20);
         SET @RET = (CASE
                         WHEN LEFT(@ModelCode, 1) = 'E' AND '01' = @AccCode AND @ModelYear < 2017 THEN LEFT(@ModelCode, 8)+'_01'
                         WHEN LEFT(@ModelCode, 1) = 'E' AND '02' = @AccCode AND @ModelYear < 2017 THEN LEFT(@ModelCode, 8)+'_02'
                         ELSE LEFT(@ModelCode, 8)
                     END);
         RETURN @RET;
     END;
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetInventorySearch_String]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:           Nick Nguyen
-- Create date: 3/18/2014
-- Description:      Return string to use to search for inventory
-- =============================================
CREATE FUNCTION [dbo].[udf_GetInventorySearch_String]
(
       -- Add the parameters for the function here
       @MapVehiclePID varchar(20),
       @dealerCodes varchar(200),
       @MapModelCodePID varchar(100) = NULL,
       @MapPackagePID varchar(20) = NULL,
       @MapColorPID varchar(10) = NULL,
       @MapInteriorColorPID varchar(50) = NULL,
       @ModelYear varchar(4) = NULL,
       @InventoryStatus varchar(4) = NULL
)
RETURNS Varchar(Max)
AS
BEGIN
              

       DECLARE @Select varchar(max)
       SET @Select = 
              'SELECT DISTINCT top(500) '
                     + 'husa.[C2PIOM_TotPIOMSRP],'
                     + 'husa.[C2COST_AdvertsingCost],'
                     + 'husa.[C2EXCL_ExteriorClrHMA],'
                     + 'MapInteriorColorPID,'
                     + 'HUSA.VehicleSeatColorID,'
                     + 'husa.[C2DELR_DealerCodeCURRET],'
                     + 'husa.[C2FOBP_BasePriceDCost],'
                     + 'husa.[C2PIOD_TorPIODealer],'
                     + 'husa.[C2FRTC_FreightCharge],'
                     + 'husa.[C2CTNE_YearCentryCode],'
                     + 'husa.[C2YRNE_ShortVINYear],'
                     + 'husa.[C2MSRP_BasePriceMSRP]+husa.[PriceModification] as [C2MSRP_BasePriceMSRP],'
                     + 'husa.[C2FVIN_FullVIN],'
                     + 'husa.[C2FACM_TotFacAccMSRP],'
                     + 'husa.[ColorDesc],'
                     + 'husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear as [ModelYear],'
                     + 'husa.[PackageDesc],'
                     + 'husa.TransmissionDesc as TransmissionDesc,'
                     + '@pMapVehiclePID,'
                     + 'husa.[VehicleName],'
                     + 'HUSA.MapModelCodePID,'
                     + 'null'
                     + ',null'
                     + ',D.Id'
                     + ',HUSA.C2IVST_InventoryStatus'
                     + ',HUSA.MapPackagePID'
                     + ',MSRP = case  when (CHARINDEX(''_02'',husa.MapModelCodePID) > 0 and @pMapVehiclePID = ''E'') then (husa.C2MSRP_BasePriceMSRP + husa.C2FACM_TotFacAccMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge)'
                           + 'else (husa.C2MSRP_BasePriceMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge) END'
                     + ',HUSA.[C2REGN_RegionCode]'
                     + ',husa.[PriceModification]'
                     + ',HUSA.C2PC01_PortInstlOPT1'
                     + ',HUSA.C2PC02_PortInstlOPT2'
                     + ',HUSA.C2PC03_PortInstlOPT3'
                     + ',HUSA.C2PC04_PortInstlOPT4'
                     + ',HUSA.C2PC05_PortInstlOPT5'
                     + ',HUSA.C2PC06_PortInstlOPT6'
                     + ',HUSA.C2PC07_PortInstlOPT7'
                     + ',HUSA.C2PC08_PortInstlOPT8'
                     + ',HUSA.C2PC09_PortInstlOPT9'
                     + ',HUSA.C2PC10_PortInstlOPT10'
                     + ',HUSA.C2PA01_FrtLoadPIO1'
                     + ',HUSA.C2PA02_FrtLoadPIO2'
                     + ',HUSA.C2PA03_FrtLoadPIO3'
                     + ',HUSA.C2PA04_FrtLoadPIO4'
                     + ',HUSA.C2PA05_FrtLoadPIO5'
                     + ',HUSA.C2PA06_FrtLoadPIO6'
                     + ',HUSA.C2PA07_FrtLoadPIO7'
                     + ',HUSA.C2PA08_FrtLoadPIO8'
                     + ',HUSA.C2PA09_FrtLoadPIO9'
                     + ',HUSA.C2PA10_FrtLoadPIO10'
              + ' FROM dbo.fn_GetInventoryAll() HUSA '
                     + ' INNER JOIN  dbo.udf_SplitTop3(@pdealerCodes, '','') D'
                           + ' ON HUSA.C2DELR_DealerCodeCURRET=D.Value'
                     ;

       -- Dynamically build the where clause based on procedure parameters\\
       DECLARE @Where varchar(2000)
       SET @Where = 
              ' WHERE HUSA.MapVehiclePID = @pMapVehiclePID '
                     + ' AND husa.ModelYear =@pModelYear'
                     + ' AND HUSA.[C2DSLD_DateSold]=0 '
                     + ' AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)';
       IF(@MapModelCodePID IS NOT NULL)
              SET @Where = @Where
                     + ' AND (charindex(HUSA.MapModelCodePID,@pNoPREZ)>0'
                           + ' OR charindex(HUSA.MapModelCodePID,@pModelCode)>0'
                     + ' )';
       IF(@MapColorPID IS NOT NULL)
              SET @Where = @Where
                     + ' AND charindex(HUSA.MapColorPID,@pMapColorPID)>0';
       IF(@MapInteriorColorPID IS NOT NULL)
              SET @Where = @Where
                     + ' AND charindex(HUSA.VehicleSeatColorID,@pMapInteriorColorPID)>0';
       ---------------------------------------------------------------------------------
       IF(@MapPackagePID = '01')
       BEGIN
              SET @Where = @Where 
                     + ' AND HUSA.MapPackagePID IN (SELECT PackageCode FROM dbo.NoPackageLookup)';
       END
       ELSE
              BEGIN
                           IF(@MapPackagePID IS NOT NULL)
                                  SET @Where = @Where 
                           + ' AND (husa.MapPackagePID=@pMapPackagePID'
                                  + ' OR charindex(husa.MapPackagePID,@pPREZPackage) >0'
                           + ' )';
              END 
       ------------------------------------------------------------------------------------
              
       IF(@InventoryStatus IS NOT NULL AND @InventoryStatus <> '1')
              SET @Where = @Where 
                           + ' AND HUSA.C2IVST_InventoryStatus=@pInventoryStatus';

       ELSE IF(@InventoryStatus = '1')
              SET @Where = @Where
                     + ' AND (HUSA.C2IVST_InventoryStatus<>''DS'')';

       
  Return @Select+@Where
END


GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetInventorySearch_String_HC]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/18/2014
-- Description:	Return string to use to search for inventory
-- Modified: 11/28/2017, Erik Mildner, add interior color data.
-- =============================================
CREATE FUNCTION [dbo].[udf_GetInventorySearch_String_HC]
(
	-- Add the parameters for the function here
	@MapVehiclePID varchar(20),
	@dealerCodes varchar(200),
	@MapModelCodePID varchar(100) = NULL,
	@MapPackagePID varchar(20) = NULL,
	@MapColorPID varchar(10) = NULL,
	@MapInteriorColorPID varchar(50) = NULL,
	@ModelYear varchar(4) = NULL,
	@InventoryStatus varchar(4) = NULL,
	@PlanPID int
)
RETURNS Varchar(Max)
AS
BEGIN
		

	DECLARE @Select varchar(max)
	DECLARE @PlanODateLimit int; 

     SET @planODateLimit=180;

	SET @Select = 
		'SELECT DISTINCT '
			+ 'husa.[C2PIOM_TotPIOMSRP]'
			+ ',husa.[C2COST_AdvertsingCost]'
			+ ',husa.[C2EXCL_ExteriorClrHMA]'
			--+ 'MapInteriorColorPID,'
			+ ',husa.[VehicleSeatColorID]'
			+ ',husa.[C2DELR_DealerCodeCURRET]'
			+ ',husa.[C2FOBP_BasePriceDCost]'
			+ ',husa.[C2PIOD_TorPIODealer]'
			+ ',husa.[C2FRTC_FreightCharge]'
			+ ',husa.[C2CTNE_YearCentryCode]'
			+ ',husa.[C2YRNE_ShortVINYear]'
			+ ',husa.[C2MSRP_BasePriceMSRP]+husa.[PriceModification] as [C2MSRP_BasePriceMSRP]'
			+ ',husa.[C2FVIN_FullVIN]'
			+ ',husa.[C2FACM_TotFacAccMSRP]'
			+ ',husa.[ColorDesc]'
			+ ',husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear as [ModelYear]'
			+ ',husa.[PackageDesc]'
			+ ',husa.TransmissionDesc as TransmissionDesc'
			+ ',@pMapVehiclePID'
			+ ',husa.[VehicleName]'
			+ ',HUSA.MapModelCodePID'
			--+ 'null'
			+ ',null'
			+ ',D.Id'
			--+ ',HUSA.C2IVST_InventoryStatus'
			+ ',HUSA.MapPackagePID'
			--+ ',MSRP = case  when (CHARINDEX(''_02'',husa.MapModelCodePID) > 0 and @pMapVehiclePID = ''E'') then (husa.C2MSRP_BasePriceMSRP + husa.C2FACM_TotFacAccMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge)'
			--	+ 'else (husa.C2MSRP_BasePriceMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge) END'
			+ ',HUSA.[C2REGN_RegionCode]'
			--+ ',husa.[PriceModification]'
		+ ' FROM dbo.fn_GetInventoryAll() HUSA '
			+ ' INNER JOIN  dbo.udf_Split(@pdealerCodes, '','') D'
				+ ' ON HUSA.C2DELR_DealerCodeCURRET=D.Value'
			;

	-- Dynamically build the where clause based on procedure parameters\\
	DECLARE @Where varchar(2000)
	SET @Where = 
		' WHERE HUSA.MapVehiclePID = @pMapVehiclePID '
			+ ' AND husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear =@pModelYear'
			+ ' AND HUSA.[C2DSLD_DateSold]=0 '
			+ ' AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0)';
	IF(@MapModelCodePID IS NOT NULL)
		SET @Where = @Where
			+ ' AND (charindex(HUSA.MapModelCodePID,@pNoPREZ)>0'
				+ ' OR charindex(HUSA.MapModelCodePID,@pModelCode)>0'
			+ ' )';
	IF(@MapColorPID IS NOT NULL)
		SET @Where = @Where
			+ ' AND charindex(HUSA.MapColorPID,@pMapColorPID)>0';
	IF(@MapInteriorColorPID IS NOT NULL)
		SET @Where = @Where
			+ ' AND charindex(RTRIM(HUSA.C2INCL_InteriorClrHMA),@pMapInteriorColorPID)>0';
	---------------------------------------------------------------------------------
	IF(@MapPackagePID = '01')
	BEGIN
		SET @Where = @Where 
			+ ' AND HUSA.MapPackagePID IN (SELECT PackageCode FROM dbo.NoPackageLookup)';
	END
	ELSE
		BEGIN
				IF(@MapPackagePID IS NOT NULL)
					SET @Where = @Where 
				+ ' AND (husa.MapPackagePID=@pMapPackagePID'
					+ ' OR charindex(husa.MapPackagePID,@pPREZPackage) >0'
				+ ' )';
		END 
	------------------------------------------------------------------------------------
		
	/*IF(@PlanPID IS NOT NULL AND @PlanPID =42)
		SET @Where = @Where 
				+ ' AND DATEDIFF(DAY,CONVERT(datetime,CONVERT(VARCHAR(20),[C2PURD_PurifiedDate]),104),GETDATE()) > 180';*/
	
	IF(@InventoryStatus IS NOT NULL AND @InventoryStatus <> '1')
		SET @Where = @Where 
				+ ' AND HUSA.C2IVST_InventoryStatus=@pInventoryStatus';

	ELSE IF(@InventoryStatus = '1')
		SET @Where = @Where
			+ ' AND (HUSA.C2IVST_InventoryStatus<>''DS'')';

	
  Return @Select+@Where + ' order BY D.Id'
END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_getOrgModelCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 10/30/2012
-- Description:	<Description, ,>
--select   [dbo].[udf_getOrgModelCode]  ('634421F45',2013)
--63442F45,63452F45
-- =============================================
CREATE FUNCTION [dbo].[udf_getOrgModelCode] 
( @MapModelCodePID varchar(20)
  ,@Year varchar(4)
  )
  
RETURNS varchar(20)
AS BEGIN
    DECLARE @RET varchar(20)
    DECLARE @VehicleMapID  varchar(2)
    SET @VehicleMapID=LEFT(@MapModelCodePID,1) 
    ------------------------------------------------------------------------
    --PZEV
    IF right(@MapModelCodePID,1)='P'
    SELECT  top 1 @MapModelCodePID= [OrgVehicleModelCodeID]      
	  FROM [HyundaiApp].[dbo].[PZEV_Packages]
	  where [PZEVVehicleModelCodeID]=@MapModelCodePID
	  and [Year]=@Year AND [OrgVehicleModelCodeID]<>[PZEVVehicleModelCodeID]
  ----------------------------------------------------------------------------
  
  
	SET @RET= (SELECT top 1 MapModelCodePID
			  FROM  [dbo].[fnHCircle_SAPGetTrims_Inventory] (@VehicleMapID,@Year) A
			  --FROM  [dbo].[fnHCircle_SAPGetTrims] ('6',2013) A
			  INNER JOIN dbo.EquivalentModelCode B
			  ON CHARINDEX(A.MapModelCodePID,B.EquivalentModelCodeID)>0
			  AND CHARINDEX(@MapModelCodePID,B.EquivalentModelCodeID)>0
			  )
	
   return Coalesce(@RET,@MapModelCodePID)

   END
   



GO
/****** Object:  UserDefinedFunction [dbo].[udf_getOrgModelCodePREZ]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 10/30/2012
-- Description:	<Description, ,>
--select   [dbo].[udf_getOrgModelCode]  ('634421F41',2013)
--63442F45,63452F45
-- =============================================
create FUNCTION [dbo].[udf_getOrgModelCodePREZ] 
( @MapModelCodePID varchar(10)
  ,@Year varchar(4)
  )
  
RETURNS varchar(10)
AS BEGIN
    DECLARE @RET varchar(10)
    DECLARE @VehicleMapID  varchar(2)
    SET @VehicleMapID=LEFT(@MapModelCodePID,1) 
    SET @MapModelCodePID=COALESCE((SELECT top 1 OrgVehicleModelCodeID 
									FROM [dbo].[PZEV_Packages] WHERE
								PZEVVehicleModelCodeID=@MapModelCodePID 
								AND @MapModelCodePID<>OrgVehicleModelCodeID),@MapModelCodePID)
	SET @RET= (SELECT top 1 MapModelCodePID
			  FROM  [dbo].[fnHCircle_SAPGetTrims] (@VehicleMapID,@Year) A
			  --FROM  [dbo].[fnHCircle_SAPGetTrims] ('6',2013) A
			  INNER JOIN dbo.EquivalentModelCode B
			  ON CHARINDEX(A.MapModelCodePID,B.EquivalentModelCodeID)>0
			  AND CHARINDEX(@MapModelCodePID,B.EquivalentModelCodeID)>0
			  )
	
   return Coalesce(@RET,@MapModelCodePID)

   END
   
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetPinValidation]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_PowertrainName] (2,null)
--select * from udf_GetPinValidation ('EAL0027839','s','s','s')
-- =============================================
CREATE FUNCTION [dbo].[udf_GetPinValidation]
    (
      @PIN nvarchar(100),
      @BuyerFirstName nvarchar(100),
      @BuyerLastName nvarchar(100)
	--,@PlanTye nvarchar(100)
      ,
      @VIN nvarchar(20) = null
    )
RETURNS @RtnValue table
    (
      ReturnResult varchar(20),
      DescriptionResult varchar(100)
    )
AS begin
    DECLARE @countRet as int
    declare @output as int
		--declare @vPlanType as nvarchar(100)
		
--if @PlanTye='A'
--	set @vPlanType='Plan A'
--if @PlanTye='E'
--	set @vPlanType='Plan E'

		
    select  @countRet = count(*)
    FROM    dbo.vw_GetUser_PINCode
    Where   pincode = @PIN 

    if ( @countRet < 1 ) 
        begin
            begin
                INSERT  INTO @RtnValue
                        (
                          ReturnResult,
                          DescriptionResult
                        )
                        select  ReturnResult = 'E',
                                DescriptionResult = 'PIN Code not Valid'
                Return
            end
        end
		
		--select @countRet=count(*)  FROM dbo.vw_GetUser_PINCode
		--Where pincode=@PIN 
		--and firstname=@BuyerFirstName

		--if (@countRet<1)

		--	begin
		--		INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
		--		select ReturnResult='E', DescriptionResult='PIN is correct but FIRST NAME does not match'
		--		RETURN
		--	end

		--select @countRet=count(*)  FROM dbo.vw_GetUser_PINCode
		--Where pincode=@PIN 
		--and firstname=@BuyerFirstName and lastname=@BuyerLastName

		--if (@countRet<1)
		--	begin
		--		INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
		--		select ReturnResult='E', DescriptionResult='PIN is correct but LAST NAME does not match'
		--		RETURN
		--	end

		--select @countRet=count(*)  FROM dbo.vw_GetUser_PINCode
		--Where pincode=@PIN and firstname=@BuyerFirstName and lastname=@BuyerLastName and planname=@vPlanType

		--if (@countRet<1)
		--	begin
		--		INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
		--		select ReturnResult='Error', DescriptionResult='Plan Type not Valid'
		--		RETURN

		--	end
    else 
        begin
            INSERT  INTO @RtnValue
                    (
                      ReturnResult,
                      DescriptionResult
                    )
                    select  ReturnResult = 'S',
                            DescriptionResult = 'Pin is Valid'
            RETURN

        end
    RETURN
   End 
	
GO
/****** Object:  UserDefinedFunction [dbo].[udf_getProgramCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 11/17/2011
-- Description:	<Description, ,>
-- select [dbo].[udf_getProgramCode]  ('CID-588058','GLOVISALGAHC')

-- =============================================
CREATE FUNCTION [dbo].[udf_getProgramCode] 
( 
   @CompanyID nvarchar(24)
  ,@programCode varchar(50)
  
  )
  
RETURNS nvarchar(50)
AS BEGIN
	
	declare @returnProgramcode nvarchar(50)
		
	SET  @returnProgramcode=
	( SELECT top 1 programcode FROM [profile].[T_Company] WHERE ProgramCode=@ProgramCode and companyid=@CompanyID and IsActive=1
			      )

	if  @returnProgramcode is null
	begin
	SET  @returnProgramcode=
	(SELECT top 1 programcode FROM [dbo].[DealerCashException]
							 WHERE Data in (select region from hyundaiusa.[Dealer].[DealerInfo]
									where dealercode=@CompanyID))
	end

	if(@programCode='2015013')
	begin
		set @returnProgramcode='2015013'
	end

	return COALESCE(@returnProgramcode,'')

END



GO
/****** Object:  UserDefinedFunction [dbo].[udf_getProgramCode_test]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/


-- =============================================
-- Author:		<Nick Nguyen>
-- Create date: 11/17/2011
-- Description:	<Description, ,>
-- select [dbo].[udf_getProgramCode]  ('CID-588058','GLOVISALGAHC')

-- =============================================
Create FUNCTION [dbo].[udf_getProgramCode_test] 
( 
   @CompanyID nvarchar(24)
  ,@programCode varchar(50)
  
  )
  
RETURNS nvarchar(50)
AS BEGIN
	
	declare @returnProgramcode nvarchar(50)
		
	SET  @returnProgramcode=
	( SELECT top 1 programcode FROM [profile].[T_Company] WHERE ProgramCode=@ProgramCode and companyid=@CompanyID and IsActive=1
			      )

	if  @returnProgramcode is null
	begin
	SET  @returnProgramcode=
	(SELECT top 1 programcode FROM [dbo].[DealerCashException]
							 WHERE Data in (select region from hyundaiusa.[Dealer].[DealerInfo]
									where dealercode=@CompanyID))
	end
	if(@programCode='2014101')
	begin
		set @returnProgramcode='2014101'
	end

	return COALESCE(@returnProgramcode,'') 


END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_getShortVinTrim]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select  * [dbo].[udf_getShortVinTrim] (9,10)
-- =============================================
CREATE FUNCTION [dbo].[udf_getShortVinTrim] 
( @MapVehicleID int
  ,@MapTrimPID int
  )
  
RETURNS varchar(2)
AS BEGIN
    DECLARE @RET varchar(2) 
   -- SET @RET= (		Select top 1 DCSTrimCode FROM Byo.As400toTrimMap
		 --WHERE MapTrimPID=isnull(@mapTrimPID,MapTrimPID)
			--	AND MapVehiclePID=@MapVehicleID
			--	)
	  
   return @RET

   END


GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetUserAvailablePlanPID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DT
-- Create date: 10/15/2010
--	Ex: SELECT dbo.udf_GetUserAvailablePlanPID ('HIS10153')  -- affiliate
--		SELECT dbo.udf_GetUserAvailablePlanPID ('HMA02675')	-- plan admin
--		SELECT dbo.udf_GetUserAvailablePlanPID ('HMM103743')	-- employee admin
--		SELECT dbo.udf_GetUserAvailablePlanPID ('costco123')	-- costco
-- Description:	Return Available Plan for User
-- =============================================
CREATE FUNCTION [dbo].[udf_GetUserAvailablePlanPID] ( @UserID varchar(30) )
RETURNS varchar(30)
AS BEGIN
	-- Declare the return variable here
    DECLARE @ResultVar varchar(30)

    declare @AvailablePlanTypePID varchar(20)

    declare @PlanForEmployee varchar(30)
    declare @PlanForCostco varchar(30)
    declare @PlanForPlanAdmin varchar(30)
    declare @PlanForAffiate varchar(30)

    SET @PlanForEmployee = '1,2'
    SET @PlanForCostco = '5'
    SET @PlanForPlanAdmin = '1,2,5'
    SET @PlanForAffiate = '1'


    IF profile.udf_IsUserPlanAdmin(@UserID) = 1 
        BEGIN
            SELECT  @AvailablePlanTypePID = @PlanForPlanAdmin
        END 
    ELSE 
        BEGIN	
            select  @AvailablePlanTypePID = CASE WHEN CR.CompanyRelation = 1
                                                 THEN @PlanForEmployee -- PLAN A,E
                                                 WHEN CR.CompanyRelation IN (
                                                      2, 3 )
                                                 THEN @PlanForAffiate -- PLAN A
                                                 WHEN CR.CompanyRelation = 5
                                                 THEN @PlanForCostco -- PLAN Costco
                                            END
            from    profile.T_User U
                    join dbo.[vw_Company_Relation] CR ON u.companyPID = CR.CompanyPID
            where   U.UserID = @UserID
        END

	-- Return the result of the function
    RETURN @AvailablePlanTypePID

   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetVehicleNameByVIN]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_PowertrainName] (2,null)
-- =============================================
create FUNCTION [dbo].[udf_GetVehicleNameByVIN] 
( @VIN varchar(17)  
  )
  
RETURNS varchar(100)
AS BEGIN
    DECLARE @RET varchar(100) 
   SET @RET =(SELECT top 1 Name FROM( SELECT 
					 SUBSTRING(@VIN, 4, 1)
                    + SUBSTRING(@VIN, 6, 1)
                    + SUBSTRING(@VIN, 5, 1)
                    + SUBSTRING(@VIN, 8, 1)
                    + SUBSTRING(@VIN, 10, 1) as ModelID
                   ) A
                  left JOIN HMA_OS_APP.dbo.Modl_Model M
                  ON A.ModelID= M.Modl_Model_Number
        )

	  
   return @RET

   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetVehicleTrimCodeList]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.udf_GetDCSTrimCode (9,null)
--SELECT MapModelCodePID FROM [dbo].[udf_GetVehicleTrimCodeList]('20091','20091532ACCENT GS 3DOORAUTOMATIC')
-- =============================================
CREATE FUNCTION [dbo].[udf_GetVehicleTrimCodeList]
(	
	@MapVehicleID nvarchar(100)
	,@MapModelCodePID  nvarchar(100)
	
)
RETURNS 
@ResultTable table
(
				MapModelCodePID nvarchar(100) 
)       

AS

BEGIN
		DECLARE @DCSTRIMCODE as varchar(2)
		
		--SELECT @DCSTRIMCODE= DCSTRIMCODE FROM Byo.As400toTrimMap
		--where MapVehiclePID=@MapVehicleID 
		--	and  MapModelCodePID=@MapModelCodePID
		
		INSERT INTO @ResultTable 
		select  MapModelCodePID  FROM Byo.As400toTrimMap
		 where 
			MapVehiclePID=@MapVehicleID
			--AND DCSTRIMCODE=@DCSTRIMCODE
			and TrimName=
			(
			 Select top 1 TrimName FROM Byo.As400toTrimMap
			 WHERE MapModelCodePID=(@MapModelCodePID)
					AND MapVehiclePID=@MapVehicleID
			)
		
		RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[udf_HyundaiFleet_EquivalentModelCodeID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/25/20013
-- Description:	<Description, ,>
-- select  [dbo].[udf_HyundaiFleet_EquivalentModelCodeID]  ('45412F45','2013')
-- =============================================
CREATE FUNCTION [dbo].[udf_HyundaiFleet_EquivalentModelCodeID] 
( @ModelCode varchar(20)
  ,@Year varchar(200)
  )

RETURNS varchar(200)
AS BEGIN
    DECLARE @RET varchar(200),@ModelCodeString varchar(200) 
    SET @RET=''
    SET @ModelCodeString=''
    Select @ModelCodeString=@ModelCodeString+EquivalentModelCodeID+',' FROM [dbo].[EquivalentModelCode] 
							where EquivalentModelCodeID like '%'+@ModelCode+'%' AND [YEAR]=@Year
    IF RIGHT(@ModelCode,1)='P'
    	SELECT @RET=@RET+','+value from dbo.udf_Split(@ModelCodeString,',') WHERE RIGHT(value,1)='P'
    ELSE
    	SELECT @RET=@RET+','+value from dbo.udf_Split(@ModelCodeString,',') WHERE RIGHT(value,1)<>'P'
   return @RET--@RET

   END


GO
/****** Object:  UserDefinedFunction [dbo].[udf_Package_GetPackageCodeByTrimAndPackageID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[udf_Package_GetPackageCodeByTrimAndPackageID]

( @VehicleModelCodeID varchar(30),
  @PackageID varchar(15),
  @Year varchar(4)
)

RETURNS varchar(20)
AS
BEGIN
      DECLARE @PackageCode varchar(20)
						
				set @PackageCode=''
				select @PackageCode=@PackageCode+'-'+AccGroupCode FROM Byo.VPKGDS
				where VehicleModelCodeID= @VehicleModelCodeID and AccCode= @PackageID
				and Year=@Year
				ORDER BY AccGroupCode ASC		
			Return isnull( @PackageID+@PackageCode,'01')
END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_Package_GetPackageDescByTrimAndPackageID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[udf_Package_GetPackageDescByTrimAndPackageID]

( @VehicleModelCodeID varchar(30),
  @PackageID varchar(5),
  @Year varchar(4)
)

RETURNS varchar(200)
AS
BEGIN
      DECLARE @PackageDesc varchar(200)
				set @PackageDesc=''
				select @PackageDesc=@PackageDesc+ LTRIM(RTRIM(Description))+', and ' FROM Byo.VPKGDS
				where VehicleModelCodeID= @VehicleModelCodeID and AccCode= @PackageID	
				and Year=@Year
				ORDER BY AccGroupCode ASC
				SET @PackageDesc=coalesce(@PackageDesc,'')
				SET @PackageDesc= replace(@PackageDesc,':','')
			Return left(@PackageDesc,len(@PackageDesc)-4)
END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_Package_SortPackageIDs]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_Package_SortPackageIDs]('P3','P7','P2')
-- Modified by Erik Mildner 2/14/2019: added new parameter @Package5
-- =============================================
CREATE FUNCTION [dbo].[udf_Package_SortPackageIDs] 
( @Package1 varchar(4),
  @Package2 varchar(4),
  @Package3 varchar(4),
  @Package5 varchar(4)
  )
  
RETURNS varchar(20)
AS BEGIN
    DECLARE @Packages TABLE  (Package varchar(4))
    Declare @PackageCodes varchar(20)
    SET @PackageCodes=''
    INSERT INTO @Packages 
    select @Package1
     union 
     select @Package2
     union
     select @Package3
	 union
     select @Package5
     
     SELECT @PackageCodes=@PackageCodes+'-'+Package
     FROM @Packages
     WHERE RTRIM(Package)<>''
     ORDER BY Package asc
	
   return @PackageCodes

   END


GO
/****** Object:  UserDefinedFunction [dbo].[udf_PowertrainName]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_PowertrainName] (2,null)
-- =============================================
CREATE FUNCTION [dbo].[udf_PowertrainName] 
( @MapVehicleID nvarchar(100)
  ,@MapModelCodePID nvarchar(100)
  )
  
RETURNS varchar(100)
AS BEGIN
    DECLARE @RET varchar(100) 
    SET @RET= (		Select top 1 PowertrainName FROM Byo.As400toTrimMap
		 WHERE @MapModelCodePID=isnull(@MapModelCodePID,MapModelCodePID)
				AND MapVehiclePID=@MapVehicleID
				)
	  
   return @RET

   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_PREVPackage_GET]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_PowertrainName] (2,null)\
-- select [dbo].[udf_PREVPackage_GET]('45412F45','03-P3')
-- =============================================
CREATE FUNCTION [dbo].[udf_PREVPackage_GET] 
( @VehicleModelCodeID varchar(15)
  ,@PackageID varchar(15)
  ,@year varchar(4)
  )
  
RETURNS varchar(15)
AS BEGIN
    DECLARE @RET varchar(15) 
    SET @RET= (SELECT top 1 [SearchPackageID]
			 FROM [dbo].[PZEV_Packages]
			  WHERE [OrgVehicleModelCodeID]=@VehicleModelCodeID
			  AND [OrgPackageID]=@PackageID
			  and [Year]=@Year
			  )



	  
   return coalesce(@RET,'1')

   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_PREVPackage_GET_String]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 9/25/2012
-- Description:	<Description, ,>
-- select [dbo].[udf_PowertrainName] (2,null)
-- select [dbo].[udf_PREVPackage_GET]('45412F45','03-P3')
-- =============================================
create FUNCTION [dbo].[udf_PREVPackage_GET_String] 
( @VehicleModelCodeID varchar(15)
  ,@PackageID varchar(15)
  ,@year varchar(4)
  )
  
RETURNS varchar(100)
AS BEGIN
    DECLARE @RET varchar(100)
    SET @RET='' 
    SELECT  @RET=@RET+[SearchPackageID]
			 FROM [dbo].[PZEV_Packages]
			  WHERE charindex([OrgVehicleModelCodeID],@VehicleModelCodeID)>0
			  AND [OrgPackageID]=@PackageID
			  and [Year]=@Year
			



	  
   return coalesce(@RET,'1')

   END

GO
/****** Object:  UserDefinedFunction [dbo].[udf_Split]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO


/*
    author : Jung Sunki
    date : 2005.09.05

*/

CREATE FUNCTION [dbo].[udf_Split]
(
	@List nvarchar(2000),
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
/****** Object:  UserDefinedFunction [dbo].[udf_SplitTop3]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO


/*
    author : Jung Sunki
    date : 2005.09.05

*/

CREATE FUNCTION [dbo].[udf_SplitTop3]
(
	@List nvarchar(2000),
	@SplitOn varchar(5)
)  
RETURNS @RtnValue table 
(
		
	Id int identity(1,1),
	Value varchar(100)
) 
AS  
BEGIN

declare @count int
set @count = 0

While (Charindex(@SplitOn,@List)>0)
 Begin 
  --if @count < 3
	Insert Into @RtnValue (value)
	
  Select 
    Value = ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1))) 
  Set @List = Substring(@List,Charindex(@SplitOn,@List)+len(@SplitOn),len(@List))
 -- set @count = @count + 1
 End 

Insert Into @RtnValue (Value)
    Select Value = ltrim(rtrim(@List))

    Return
END





GO
/****** Object:  UserDefinedFunction [dbo].[udf_TrimName]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [dbo].[udf_PowertrainName] (2,null)
-- =============================================
CREATE FUNCTION [dbo].[udf_TrimName] 
( @MapVehicleID int
  ,@MapModelCodePID int
  )
  
RETURNS varchar(100)
AS BEGIN
    DECLARE @RET varchar(100) 
    SET @RET= (	Select top 1 TrimName FROM Byo.As400toTrimMap
		 WHERE MapModelCodePID=isnull(@MapModelCodePID,MapModelCodePID)
				AND MapVehiclePID=@MapVehicleID
				)
	  
   return @RET

   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_Util_Split]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO




create FUNCTION [dbo].[udf_Util_Split]
(
	@List nvarchar(2000),
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
/****** Object:  UserDefinedFunction [mig].[udf_DCSPackageCode_get]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [mig].[udf_DCSPackageCode_get]
--select mig.udf_DCSPackageCode_get('veracruz-2009-en-US-gls')
( @VehicleTrimID varchar(200))

RETURNS varchar(4)
AS
BEGIN
      DECLARE @Retval as varchar(4)
							SET @Retval=(SELECT  top 1 DCSPackageCode 
								FROM [HyundaiApp].[Byo].AS400ToPackageNoOptionLookup
								where VehiclePackageID like '%nooption%' AND
								[VehicleTrimID]=@VehicleTrimID)
							
		
			Return isnull(@RetVal,'01')
END

GO
/****** Object:  UserDefinedFunction [mig].[udf_isBadColor]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
--select [mig].[udf_isBadColor]   ('PEARL11')
-- =============================================
CREATE FUNCTION [mig].[udf_isBadColor] 
( @ColorName varchar(100)
 
  )
  
RETURNS bit
AS BEGIN
    DECLARE @RET bit 
    SET @RET= isnull( (SELECT top 1 1
						FROM [Byo].[BadColorName]
					WHERE CHARINDEX(Name,@ColorName)>0)
  
				,0)
	  
   return @RET

   END
GO
/****** Object:  UserDefinedFunction [mig].[udf_PackageCodeNoOption_get]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--select [mig].[udf_PackageCodeNoOption_get](43444)
CREATE function [mig].[udf_PackageCodeNoOption_get]
--select mig.udf_DCSPackageCode_get('veracruz-2009-en-US-gls')
( @VehicleModelCodeID varchar(10))

RETURNS varchar(4)
AS
BEGIN
      DECLARE @Retval as varchar(4)
							IF EXISTS (SELECT  1  
										FROM Byo.VWMCMP
								where VehicleModelCodeID=@VehicleModelCodeID 
								AND S4SERD like '%PZEV%')
								
							 SET @Retval='AA'
							
		
			Return isnull(@RetVal,'01')
END

GO
/****** Object:  UserDefinedFunction [profile].[udf_IsUserPlanAdmin]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DT
-- Create date: 10/14/2010
-- EX: SELECT profile.udf_IsUserPlanAdmin('HIS10153')
--	   SELECT profile.udf_IsUserPlanAdmin('try@try.com')
-- Description:	Check if it is plan admin
-- =============================================
CREATE FUNCTION [profile].[udf_IsUserPlanAdmin] ( -- Add the parameters for the function here
                                          @UserID varchar(50) )
RETURNS bit
AS BEGIN
	-- Declare the return variable here
    DECLARE @ResultVar bit

	-- Add the T-SQL statements to compute the return value here
    SET @ResultVar = isnull(( SELECT TOP 1
                                        1
                              FROM      profile.T_User U
                                        join profile.Role_User RU on U.UserPID = RU.UserPID
                              where     U.UserID = @UserID
                                        and RU.Role_PID = 5 -- Plan Admin
                            )
	, 0)
		
	-- Return the result of the function
    RETURN @ResultVar

   END
GO
/****** Object:  UserDefinedFunction [profile].[UserInRole]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11-30-2009
-- Description:	Returns whether the user is in a role or not
-- =============================================
CREATE FUNCTION [profile].[UserInRole]
(
	@UserPID int,
	@Role varchar(16)
)
RETURNS bit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @InRole bit, @RolePID int
	SET @InRole = 0
	
	SELECT		@RolePID = Rou.Role_PID
	FROM		[profile].[Role_User] Rou
	JOIN		[profile].[Roles] Rol ON Rol.Role_PID = Rou.Role_PID
		AND		Rol.[Role] = @Role
	WHERE		Rou.UserPID = @UserPID
	
	IF @RolePID is null
	BEGIN
		SET @InRole = 0
	END
	ELSE
	BEGIN
		SET @InRole = 1
	END

	RETURN @InRole
END
GO
/****** Object:  Table [Byo].[ExclusionType]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[ExclusionType](
	[ExclusionTypePID] [int] NOT NULL,
	[ExclusionType] [varchar](24) NOT NULL,
 CONSTRAINT [PK_ExclusionType] PRIMARY KEY CLUSTERED 
(
	[ExclusionTypePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[T_Company]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[T_Company](
	[companyPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GlobalID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[companyRelation] [int] NOT NULL,
	[companyID] [varchar](24) NOT NULL,
	[companyName] [varchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[ProgramCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_Company] PRIMARY KEY CLUSTERED 
(
	[companyPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VehicleExclusions]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VehicleExclusions](
	[ExclusionPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[VehicleId] [nvarchar](100) NOT NULL,
	[ExclusionTypePID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[VehiclePackageId] [nvarchar](100) NOT NULL,
	[VehicleModelCodeId] [nvarchar](100) NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[modelYear] [int] NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[CompanyPID] [int] NOT NULL,
	[ModelGroupCode] [nvarchar](4) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Region] [varchar](5) NOT NULL,
	[ExclusionFlag] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleExclusions] PRIMARY KEY CLUSTERED 
(
	[ExclusionPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VWMCMP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VWMCMP](
	[S4PLTC] [char](1) NOT NULL,
	[S4CTNE] [char](2) NOT NULL,
	[S4YRNE] [char](2) NOT NULL,
	[S4SERI] [char](1) NOT NULL,
	[S4FMLY] [char](1) NOT NULL,
	[S4DOOR] [char](1) NOT NULL,
	[S4TRIM] [char](1) NOT NULL,
	[S4TRAN] [char](1) NOT NULL,
	[S4SERD] [varchar](50) NOT NULL,
	[S4DORD] [char](20) NOT NULL,
	[S4TRMD] [varchar](200) NOT NULL,
	[S4TRND] [varchar](200) NOT NULL,
	[VehicleID] [varchar](10) NULL,
	[EngineDesc] [varchar](200) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[isDisplayed] [bit] NULL,
	[HyundaiFleetModelCode] [varchar](13) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VehicleModel]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VehicleModel](
	[VehicleId] [char](1) NOT NULL,
	[VehicleYear] [int] NULL,
	[VehicleName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Byo].[AS400ToTrimMap]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Byo].[AS400ToTrimMap]
AS
SELECT DISTINCT 
                         A.S4PLTC, A.VehicleID AS MapVehiclePID, A.VehicleModelCodeID AS MapModelCodePID, A.S4CTNE + A.S4YRNE AS VehicleYear, M.VehicleName, 
                         A.S4TRND AS TrimName, A.S4TRMD AS TrimDesc, A.S4SERD + ' ' + A.S4TRND AS VehicleEngineId, A.EngineDesc AS EngineName, A.EngineDesc, 
                         A.S4TRMD AS TransmissionName, A.S4TRMD AS TransmissionDesc, A.S4SERD + ' ' + A.S4TRND AS VehiclePowertrainId, 
                         A.S4SERD + ' ' + A.S4TRND AS VehicleDrivetrainId, A.S4SERD + ' ' + A.S4TRND AS PowertrainName, A.S4SERD + ' ' + A.S4TRND AS PowertrainDesc, 
                         A.isDisplayed AS TrimDisplayed, A.HyundaiFleetModelCode, A.S4SERD
FROM            Byo.VWMCMP AS A WITH (nolock) INNER JOIN
                         Byo.VehicleModel AS M ON A.S4SERI = M.VehicleId AND (M.VehicleYear = A.S4CTNE + A.S4YRNE OR
                         M.VehicleYear IS NULL)
WHERE        (RTRIM(LTRIM(A.S4CTNE)) + RTRIM(LTRIM(A.S4YRNE)) >= YEAR(GETDATE()) - 2)
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetTrims_Ex]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.fnHCircle_GetTrims_Ex ('4',2013,1,312) order by PowertrainName
-- Modified: 1/30/2018, Erik Mildner, added: (RIGHT(A.MapModelCodePID, 1) = 'P' AND A.MapVehiclePID = 'P')
-- Modified: 9/21/2018, Erik Mildner, removed PZEV filtering code
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetTrims_Ex]
    (
      @VehicleMapID varchar(100),
      @ModelYear INT,
      @PlanTypePID as INT,
      @CompanyPID INT
    )
RETURNS TABLE
AS
RETURN
    ( 

      SELECT  top 100 
                A.MapVehiclePID, 
                [dbo].[udf_CheckEquusModelCode] (A.MapModelCodePID,A.TrimName) 'MapModelCodePID' ,
                --'MapModelCodePID' = case 
                --when  @VehicleMapID ='E' and 'S'=substring(A.TrimName,1,1) Then A.MapModelCodePID + '_F' 
                --when  @VehicleMapID ='E' and 'U'=substring(A.TrimName,1,1) Then A.MapModelCodePID + '_H' 
                --else A.MapModelCodePID 
                --end,
                A.VehicleYear,
                'VehicleName' = case @VehicleMapID
                when 'G' then 'Sonata Hybrid'
                else A.VehicleName
                end,
                A.TrimName,
                COALESCE(A.TrimDesc, A.TrimName) AS TrimDesc, ---A.TrimDesc,
                A.EngineName,
                A.EngineDesc,
                A.TransmissionName,
                A.TransmissionDesc,
                A.TrimName as PowertrainName,
                COALESCE(A.TrimDesc, A.TrimName) as 'PowertrainDesc', --A.PowertrainDesc,                
                A.VehicleDrivetrainId
      FROM      Byo.AS400ToTrimMap (NOLOCK) A
      WHERE     A.MapVehiclePID = @VehicleMapID
                AND VehicleYear = @ModelYear
				--AND charindex('PZEV', PowertrainName) = 0
				--AND (RIGHT(A.MapModelCodePID,1)<> 'P' OR (RIGHT(A.MapModelCodePID, 1) = 'P' AND A.MapVehiclePID = 'L') OR (RIGHT(A.MapModelCodePID, 1) = 'P' AND A.MapVehiclePID = 'P'))--PZEV code
                AND A.MapModelCodePID NOT IN (
                SELECT  Byo.VehicleExclusions.VehicleModelCodeId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 2
                        AND VehicleId = @VehicleMapID
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ( @CompanyPID, 0 ) )
                        order by TransmissionName,2 desc
    )




GO
/****** Object:  Table [dbo].[NoPackageLookup]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoPackageLookup](
	[AutoID] [int] NOT NULL,
	[PackageCode] [varchar](10) NOT NULL,
	[OrgCode] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VPKGDS]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VPKGDS](
	[Year] [varchar](4) NOT NULL,
	[Series] [char](1) NOT NULL,
	[Family] [char](1) NOT NULL,
	[Door] [char](1) NOT NULL,
	[Trim] [char](1) NOT NULL,
	[Trans] [char](1) NOT NULL,
	[ACCCode] [char](2) NOT NULL,
	[AccGroupCode] [char](2) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[VehiclePackageID] [varchar](20) NULL,
	[CombineDesc] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_RemoveSpicalChars]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
-- select  [dbo].[udf_RemoveSpicalChars] ('sudhir@ shdarm')
CREATE function [dbo].[udf_RemoveSpicalChars] ( @s nvarchar(256) )
returns nvarchar(256)
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
    while @p <= @l
        begin
            declare @c int
            set @c = ascii(substring(@s, @p, 1))
            if @c between 48 and 57
                or @c between 65 and 90
                or @c between 97 and 122 
                or @c between 32 and 32
                set @s2 = @s2 + char(@c)
            set @p = @p + 1
        end
    if len(@s2) = 0 
        return null
    return @s2
end
GO
/****** Object:  View [Byo].[AS400ToPackageMap]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  select top 100 * from [Byo].[AS400ToPackageMap]
INNER JOIN
                  HyundaiUSA.Byo.VehiclePackage AS Vpa ON Vpa.VehiclePackageId = Pkm.VehiclePackageID
WHERE     (Pkm.VehicleID NOT IN
                          (SELECT     ve.VehicleId
                            FROM          Byo.VehicleExclusions AS ve INNER JOIN
                                                   Byo.ExclusionType AS et ON ve.ExclusionTypePID = et.ExclusionTypePID
                            WHERE      (et.ExclusionType = 'Package')))
-ORDER BY Pkm.MapVehiclePID, Pkm.MapTrimPID, Pkm.MapPackagePID*/
CREATE VIEW [Byo].[AS400ToPackageMap]
AS
SELECT DISTINCT 
                         A.VehicleID AS MapVehiclePID, A.VehiclePackageID AS MapPackagePID, A.VehicleModelCodeID AS MapModelCodePID, CASE WHEN B.PackageCode IS NULL 
                         THEN VehiclePackageID ELSE B.PackageCode END AS VehiclePackageID, A.Year AS VehicleYear, A.AccGroupCode, 
                         dbo.udf_RemoveSpicalChars(CAST(RTRIM(LTRIM(A.CombineDesc)) AS nvarchar(200))) AS PackageName, 
                         dbo.udf_RemoveSpicalChars(CAST(RTRIM(LTRIM(A.CombineDesc)) AS nvarchar(200))) AS PackageDesc
FROM            Byo.VPKGDS AS A LEFT OUTER JOIN
                         dbo.NoPackageLookup AS B ON A.ACCCode = B.OrgCode
WHERE        (A.Year > YEAR(GETDATE()) - 2)
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetPackages_Ex]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Modified: 5/23/2018, Erik Mildner, Added using of two model codes because some trim names have two model codes.
-- Ex: select * from dbo.[fnHCircle_GetPackages_Ex] ('E0422R85',2013,1,1)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetPackages_Ex]
    (
      @MapModelCodePID varchar(100),
      @ModelYear INT,
      @PlanTypePID as int,
      @CompanyPID INT
    )
RETURNS TABLE
AS
RETURN
    ( 

      SELECT  distinct
                [MapVehiclePID],
                [VehiclePackageID] as [MapPackagePID],
                A.[MapModelCodePID],
                [VehiclePackageID],
                [VehicleYear],
                [PackageName],
                [PackageDesc]
      FROM      Byo.AS400ToPackageMap (NOLOCK) A
      INNER JOIN (
			select trims1.MapModelCodePID from dbo.fnHCircle_GetTrims_Ex(left(@MapModelCodePID,1),@ModelYear,@PlanTypePID,@CompanyPID) trims1
				inner join 
					(
						select trimname, MapModelCodePID from dbo.fnHCircle_GetTrims_Ex(left(@MapModelCodePID,1),@ModelYear,@PlanTypePID,@CompanyPID)
						where MapModelCodePID = @MapModelCodePID
					) trims2
					on trims2.TrimName = trims1.TrimName
	  ) as TrimCodes
		ON  A.MapModelCodePID = TrimCodes.MapModelCodePID OR @MapModelCodePID is null
	  INNER JOIN dbo.udf_Split( replace(replace(@MapModelCodePID,'_01',''),'_02',''),',') B
		ON (A.MapModelCodePID=B.Value or A.MapModelCodePID = TrimCodes.MapModelCodePID) OR @MapModelCodePID is null
      WHERE     VehicleYear = @ModelYear
                AND [MapPackagePID] NOT IN ( SELECT PackageCode
                                             FROM   dbo.NoPackageLookup )
                AND [MapPackagePID] NOT IN (
                SELECT  Byo.VehicleExclusions.VehiclePackageId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 3
                        AND Byo.VehicleExclusions.isActive = 1
                        AND VehicleModelCodeId = @MapModelCodePID
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ( @CompanyPID, 0 ) )
      UNION
      SELECT    '1' as [MapVehiclePID],
                '01' as [MapPackagePID],
                @MapModelCodePID as [MapModelCodePID],
                '01' [VehiclePackageID],
                '2010' [VehicleYear],
                'NO PACKAGE' AS [PackageName],
                'NO PACKAGE' as [PackageDesc]
    )





GO
/****** Object:  View [dbo].[As400ToVehicleMap]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[As400ToVehicleMap]
AS
SELECT DISTINCT 
                         Byo.VPKGDS.VehicleID AS MapVehiclePID, RTRIM(LTRIM(Byo.VWMCMP.S4CTNE)) + RTRIM(LTRIM(Byo.VWMCMP.S4YRNE)) AS ModelYear, 
                         RTRIM(LTRIM(Byo.VWMCMP.S4CTNE)) AS CenCode, RTRIM(LTRIM(Byo.VWMCMP.S4YRNE)) AS YearCode, CAST(Byo.VWMCMP.S4YRNE AS bit) 
                         AS DoorCodePwrTrain, M.VehicleName, CAST(Byo.VWMCMP.S4YRNE AS nvarchar(100)) AS VehicleTypeName, CAST(Byo.VWMCMP.S4YRNE AS nvarchar(100)) 
                         AS DrivetrainDesc, CAST(Byo.VWMCMP.S4YRNE AS nvarchar(100)) AS vehicleDriveTrainId, CAST(Byo.VWMCMP.S4YRNE AS nvarchar(100)) AS DefaultImage
FROM            Byo.VPKGDS INNER JOIN
                         Byo.VWMCMP ON Byo.VPKGDS.Series = Byo.VWMCMP.S4SERI AND Byo.VPKGDS.Family = Byo.VWMCMP.S4FMLY AND 
                         Byo.VPKGDS.Door = Byo.VWMCMP.S4DOOR AND Byo.VPKGDS.Trim = Byo.VWMCMP.S4TRIM AND Byo.VPKGDS.Trans = Byo.VWMCMP.S4TRAN INNER JOIN
                         Byo.VehicleModel AS M ON M.VehicleId = Byo.VWMCMP.S4SERI AND (M.VehicleYear = Byo.VWMCMP.S4CTNE + Byo.VWMCMP.S4YRNE OR
                         M.VehicleYear IS NULL)
WHERE        (RTRIM(LTRIM(Byo.VWMCMP.S4CTNE)) + RTRIM(LTRIM(Byo.VWMCMP.S4YRNE)) >= YEAR(GETDATE()) - 2)
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetModelByYear_Ex]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.fnHCirlce_GetModelByYear_Ex('2010',1,11)
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_GetModelByYear_Ex]
    (
      -- Add the parameters for the function here
      @ModelYear as nvarchar(4),
      @PlanTypePID as int,
      @CompanyPID INT
    )
RETURNS TABLE
AS
RETURN
    (
	  SELECT    [MapVehiclePID],
                [ModelYear],
                LTRIM(RTRIM([VehicleName]))  as [VehicleName],
				COALESCE([VehicleTypeName], '') AS [VehicleTypeName],
                COALESCE(DrivetrainDesc, '') AS [DrivetrainDesc],
                [DefaultImage] AS [VehicleImageLoc]
      FROM      [dbo].[As400ToVehicleMap]
      WHERE     [ModelYear] = @ModelYear
                AND MapVehiclePID NOT IN (
                SELECT  Byo.VehicleExclusions.VehicleId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 1
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ( @CompanyPID, 0 ) )
    )

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetYear_Ex]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.fnHCirlce_GetYear_Ex(5,1)
-- Modified: 1/31/2018, Erik Mildner, Added: and [ModelYear] != 2019
-- Modified: 4/11/2019, Erik Mildner, Added: and [ModelYear] != 2020
-- Modified: 5/30/2019, Erik Mildner, Removed hardcoded year logic and instead use Byo.VehicleExclusions
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_GetYear_Ex] ( @PlanTypePID as INT, @CompanyPID INT )
RETURNS TABLE
AS
RETURN
    (
	-- Add the SELECT statement with parameter references here
   
   
    -- Old Code that we comment on 02/08/2011
   --   SELECT TOP 100
   --             [ModelYear]
   --   FROM      [dbo].[As400ToVehicleMap]
   --   WHERE     [ModelYear] NOT IN (
   --             SELECT  modelyear
   --             FROM    Byo.VehicleExclusions
   --             WHERE   ExclusionTypePID = 4
   --                     AND isActive = 1
   --                     AND PlanTypePID IN ( @PlanTypePID, 0 ) )
	  ----AND ModelYear >= 2009                        
   --   GROUP BY  ModelYear
   --   ORDER BY  ModelYear
      SELECT TOP 100
                [ModelYear]
      FROM      [dbo].[As400ToVehicleMap]
      WHERE     [ModelYear] NOT IN (
                SELECT  Byo.VehicleExclusions.modelyear
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID
                WHERE   --Byo.VehicleExclusions.modelyear = 2010
                        Byo.VehicleExclusions.ExclusionTypePID = 4
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ( @CompanyPID, 0 ) )
	 and [ModelYear] >=Year(getdate())-1
      GROUP BY  ModelYear
      ORDER BY  ModelYear
    )


GO
/****** Object:  Table [profile].[Plan]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[Plan](
	[PlanPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[PlanName] [varchar](50) NOT NULL,
	[PlanDescription] [varchar](1024) NOT NULL,
	[PlanStartDate] [datetime] NOT NULL,
	[PlanTermDate] [datetime] NULL,
	[RdrSaletype] [int] NOT NULL,
	[PlanDiscount] [decimal](4, 1) NOT NULL,
	[DiscountDate] [datetime] NOT NULL,
	[PinExpireDays] [int] NOT NULL,
	[CustCash] [bit] NOT NULL,
	[DealerCash] [bit] NOT NULL,
	[SpecialIncentive] [bit] NOT NULL,
	[PlanStatus] [int] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[AllowVehicleCoupons] [bit] NOT NULL,
	[AcbDescription] [varchar](256) NULL,
	[AcbAmount] [decimal](5, 2) NULL,
	[AcbEffectiveDate] [datetime] NULL,
	[AcbExpirationDate] [datetime] NULL,
	[DiscountAmt] [decimal](6, 2) NULL,
	[AS400ID] [varchar](2) NULL,
 CONSTRAINT [PK_Plan_1] PRIMARY KEY CLUSTERED 
(
	[PlanPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PinStatus]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PinStatus](
	[PinStatusPID] [int] NOT NULL,
	[PinStatus] [varchar](16) NOT NULL,
	[Description] [varchar](1024) NOT NULL,
	[AS400ID] [varchar](2) NULL,
 CONSTRAINT [PK_PinStatus] PRIMARY KEY CLUSTERED 
(
	[PinStatusPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[CompanyRelation]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[CompanyRelation](
	[RelationPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RelationID] [varchar](24) NOT NULL,
	[RelationDesc] [varchar](1024) NOT NULL,
	[DefaultRole] [int] NOT NULL,
	[SignUpAllowed] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyRelation] PRIMARY KEY CLUSTERED 
(
	[RelationPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PINVehicleSelectionCache]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PINVehicleSelectionCache](
	[PinPID] [int] NOT NULL,
	[MapVehiclePID] [nvarchar](100) NULL,
	[MapPackagePID] [nvarchar](100) NULL,
	[MapColorPID] [nvarchar](100) NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[MapModelCodePID] [nvarchar](100) NULL,
 CONSTRAINT [PK_PINVehicleSelectionCache] PRIMARY KEY CLUSTERED 
(
	[PinPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[T_Profile]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[T_Profile](
	[ProfilePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GlobalRefID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[MiddleInitial] [varchar](30) NULL,
	[LastName] [varchar](30) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateID] [int] NULL,
	[Zipcode] [varchar](50) NULL,
	[Email] [varchar](200) NOT NULL,
	[Phone1] [varchar](18) NULL,
	[Phone2] [varchar](18) NULL,
	[Fax] [varchar](18) NULL,
	[isActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[RelationshipPID] [int] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[Createdby] [nvarchar](50) NULL,
	[EmailModifyDate] [datetime] NULL,
	[EmpFirstName] [varchar](30) NULL,
	[EmpLastName] [varchar](30) NULL,
 CONSTRAINT [PK_T_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfilePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PinDetail]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PinDetail](
	[PinPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PinCode] [varchar](24) NOT NULL,
	[SponsorPID] [int] NOT NULL,
	[PlanPID] [int] NOT NULL,
	[PinStatusPID] [int] NOT NULL,
	[BuyerRef] [uniqueidentifier] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[SentToRDR] [datetime] NULL,
	[isActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[VIN] [nvarchar](24) NULL,
	[MapVehiclePID] [nvarchar](10) NULL,
	[Year] [varchar](4) NULL,
	[SubmittedBy] [varchar](2) NULL,
	[TrimMapPID] [nvarchar](10) NULL,
	[CreaterRef] [uniqueidentifier] NULL,
	[MSRP] [decimal](18, 2) NULL,
	[HCDiscount] [decimal](18, 2) NULL,
	[HCInvoice] [decimal](18, 2) NULL,
	[HCCash] [decimal](18, 2) NULL,
	[HCCoupon] [decimal](18, 2) NULL,
	[Incentive] [decimal](18, 2) NULL,
	[HCECash] [decimal](18, 0) NULL,
	[HCTotal] [decimal](18, 2) NULL,
	[TrimName] [nvarchar](200) NULL,
	[Package] [nvarchar](300) NULL,
	[Color] [nvarchar](30) NULL,
	[VehicleName] [nvarchar](50) NULL,
	[DealerCode] [varchar](5) NULL,
	[InteriorColor] [char](30) NULL,
	[ProgramId] [varchar](30) NULL,
	[Brand] [varchar](50) NULL,
	[ModelGroupCd] [varchar](4) NULL,
 CONSTRAINT [PK_PinDetail] PRIMARY KEY CLUSTERED 
(
	[PinPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[T_User]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[T_User](
	[UserPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GlobalID] [uniqueidentifier] NOT NULL,
	[companyPID] [int] NOT NULL,
	[UserID] [varchar](128) NOT NULL,
	[Password] [varchar](46) NULL,
	[Enabled] [bit] NOT NULL,
	[lLockedOut] [bit] NOT NULL,
	[nBadLoginCount] [int] NOT NULL,
	[lockoutExpires] [datetime] NOT NULL,
	[MustChangePassword] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[NeedsApproval] [bit] NOT NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[UserPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PINDealerSelection]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PINDealerSelection](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PinPID] [int] NOT NULL,
	[DealerCode] [char](5) NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ZipCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_PINDealerSelection] PRIMARY KEY CLUSTERED 
(
	[PinPID] ASC,
	[DealerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PINSale]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PINSale](
	[PinPID] [int] NOT NULL,
	[DealerCode] [char](5) NOT NULL,
	[RDRDate] [datetime] NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[PlanType] [int] NOT NULL,
	[VIN] [varchar](24) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[ModelCode] [varchar](20) NOT NULL,
	[Packagecode] [varchar](20) NOT NULL,
	[InvoiceAmt] [decimal](8, 2) NOT NULL,
	[BuyerFirstName] [varchar](30) NOT NULL,
	[BuyerLastName] [varchar](30) NOT NULL,
	[Notes] [varchar](max) NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PINSale] PRIMARY KEY CLUSTERED 
(
	[PinPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [profile].[PlanTypes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanTypes](
	[PlanTypePID] [int] NOT NULL,
	[PlanType] [varchar](24) NOT NULL,
	[PlanTypeDesc] [varchar](1024) NOT NULL,
	[PinCodePrefix] [varchar](4) NULL,
	[PinCodeMinNbr] [int] NULL,
 CONSTRAINT [PK_PlanTypes] PRIMARY KEY CLUSTERED 
(
	[PlanTypePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [PIN].[PinManagement2]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [PIN].[PinManagement2]
AS
SELECT     Pdet.PinPID, Pdet.PinCode AS PIN, Ptype.PlanType, Pst.PinStatus, Pdet.IssueDate, Cmp.companyName AS AffiliateName, 
                      Cmr.RelationID AS SponsorType, Prof.FirstName AS ParticipantFirstName, Prof.LastName AS ParticipantLastName, 
                      CASE WHEN Psale.DealerCode IS NULL THEN Dlr.DealerCode ELSE Psale.DealerCode END AS DealerCode, CASE WHEN Psale.ModelYear IS NULL 
                      THEN Veh.[S4CTNE]+Veh.[S4YRNE] ELSE Psale.ModelYear END AS ModelYear, CASE WHEN Psale.ModelCode IS NULL 
                      THEN Veh.S4SERI ELSE Psale.ModelCode END AS ModelCode, CASE WHEN Psale.Packagecode IS NULL 
                      THEN Pkg.VehiclePackageID ELSE Psale.Packagecode END AS OptionCode, Ptype.PlanTypePID, Cmp.companyID
FROM         PIN.PinDetail (nolock) AS Pdet INNER JOIN
                      PIN.PinStatus AS Pst ON Pst.PinStatusPID = Pdet.PinStatusPID INNER JOIN
                      profile.[Plan] AS Pln ON Pln.PlanPID = Pdet.PlanPID  INNER JOIN
                      profile.PlanTypes AS Ptype ON Ptype.PlanTypePID = Pln.PlanTypePID INNER JOIN
                      profile.T_User  (nolock) AS Usr ON Usr.UserPID = Pdet.SponsorPID INNER JOIN
                      profile.T_Company AS Cmp ON Cmp.companyPID = Usr.companyPID INNER JOIN
                      profile.CompanyRelation AS Cmr ON Cmr.RelationPID = Cmp.companyRelation INNER JOIN
                      profile.T_Profile AS Prof ON Prof.GlobalRefID = Pdet.BuyerRef LEFT OUTER JOIN
                      PIN.PINSale AS Psale ON Psale.PinPID = Pdet.PinPID LEFT OUTER JOIN
                      PIN.PINVehicleSelectionCache AS VehSel ON VehSel.PinPID = Pdet.PinPID LEFT OUTER JOIN
                      [Byo].[VWMCMP] AS Veh ON Veh.VehicleID = VehSel.MapVehiclePID LEFT OUTER JOIN
                      Byo.AS400ToPackageMap AS Pkg ON Pkg.MapPackagePID = VehSel.MapPackagePID LEFT OUTER JOIN
                      PIN.PINDealerSelection AS Dlr ON Dlr.PinPID = Pdet.PinPID


GO
/****** Object:  View [PIN].[VWPINDetailDT]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [PIN].[VWPINDetailDT]
AS
     SELECT PinPID,
            PinCode,
            SponsorPID,
            PlanPID,
            BuyerRef,
            IssueDate,
            ExpirationDate,
            pd.CreatedBy,
            SentToRDR,
            pd.isActive 'IsActivePIN',
            ModifiedDate,
            VIN,
            MapVehiclePID,
            [Year],
            SubmittedBy,
            TrimMapPID,
            CreaterRef,
            MSRP,
            HCDiscount,
            HCInvoice,
            HCCash,
            HCCoupon,
            Incentive,
            HCECash,
            [PinStatus],
            [Description],
            c.companyPID,
            c.GlobalID,
            companyRelation,
            companyID,
            companyName,
            c.IsActive 'IsActiveCompany',
            ProgramCode,
            --UserPID,  UserID, lLockedOut, nBadLoginCount, lockoutExpires, MustChangePassword, u.IsActive 'IsActiveUser',  NeedsApproval,
            ProfilePID,
            GlobalRefID,
            FirstName,
            MiddleInitial,
            LastName,
            Address1,
            Address2,
            City,
            StateID,
            Zipcode,
            Email,
            Phone1,
            Phone2,
            Fax,
            bp.isActive 'IsBuyerActive',
            RelationshipPID,
            EmailModifyDate
     FROM [PIN].[PinDetail] pd (NOLOCK)
          JOIN [PIN].[PinStatus] ps ON ps.[PinStatusPID] = pd.[PinStatusPID]
          JOIN profile.T_Company c ON pd.SponsorPID = c.companypid
          JOIN [profile].[T_Profile] bp (NOLOCK) ON bp.globalrefid = pd.buyerref;
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetTrims]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.fnHCircle_GetTrims ('6','2013') order by vehiclename
-- 11/16/2015_DTON:	Added Sonata-Hybrid Plugin (UNION part since SAP have this as seperate vehicleid but business want to show under Sonata Hybrid (G).
-- 12/4/2015_DTON:	Remove whatever I did for 11/16/2015
--				Added this: OR (RIGHT(A.MapModelCodePID, 1) = 'P' AND A.MapVehiclePID = 'L')) in where
-- Modified: 9/21/2018, Erik Mildner, removed PZEV filtering code
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetTrims](
               @VehicleMapID VARCHAR(100),
               @Year         INT )
RETURNS TABLE
AS
     RETURN
     (
     SELECT DISTINCT A.MapVehiclePID,
                     [dbo].[udf_CheckEquusModelCode]( A.MapModelCodePID, A.TrimName ) 'MapModelCodePID',
                     A.VehicleYear,
                     'VehicleName' = CASE @VehicleMapID
                                         WHEN 'G'
                                         THEN 'Sonata Hybrid'
                                         ELSE A.VehicleName
                                     END,
                     A.TrimName,
                     COALESCE(A.TrimDesc, A.TrimName) AS TrimDesc, ---A.TrimDesc,
                     A.EngineName,
                     A.EngineDesc,
                     A.TransmissionName,
                     A.TransmissionDesc,
                     A.TrimName AS PowertrainName,
                     COALESCE(A.TrimDesc, A.TrimName) AS 'PowertrainDesc', --A.PowertrainDesc,                
                     A.VehicleDrivetrainId
     --,B.Value
     FROM Byo.AS400ToTrimMap( NOLOCK ) A
     WHERE( A.MapVehiclePID = @VehicleMapID
         OR @VehicleMapID IS NULL
          )
      AND ( VehicleYear = @Year
         OR @Year = 0
          )
      AND VehicleYear > 2010
      AND VehicleYear >= YEAR(GETDATE()) - 1
      --AND CHARINDEX('PZEV', PowertrainName) = 0
      --AND (RIGHT(A.MapModelCodePID, 1) <> 'P' OR (RIGHT(A.MapModelCodePID, 1) = 'P' AND A.MapVehiclePID = 'L'))  --PZEV code
      AND TrimDisplayed = 1
     --UNION
     --SELECT DISTINCT A.MapVehiclePID,
     --                [dbo].[udf_CheckEquusModelCode]( A.MapModelCodePID, A.TrimName ) 'MapModelCodePID',
     --                A.VehicleYear,
     --                'VehicleName' = CASE @VehicleMapID
     --                                    WHEN 'G'
     --                                    THEN 'Sonata Hybrid'
     --                                    ELSE A.VehicleName
     --                                END,
     --                A.TrimName,
     --                COALESCE(A.TrimDesc, A.TrimName) AS TrimDesc, ---A.TrimDesc,
     --                A.EngineName,
     --                A.EngineDesc,
     --                A.TransmissionName,
     --                A.TransmissionDesc,
     --                A.TrimName AS PowertrainName,
     --                COALESCE(A.TrimDesc, A.TrimName) AS 'PowertrainDesc', --A.PowertrainDesc,                
     --                A.VehicleDrivetrainId
     ----,B.Value
     --FROM Byo.AS400ToTrimMap( NOLOCK ) A
     --WHERE( A.MapVehiclePID = CASE
     --                             WHEN @VehicleMapID = 'G'
     --                             THEN 'L'
     --                             ELSE ''
     --                         END )
     -- AND ( VehicleYear = @Year
     --    OR @Year = 0
     --     )
     -- AND VehicleYear > 2010
     -- AND VehicleYear >= YEAR(GETDATE()) - 1
     -- AND CHARINDEX('PZEV', PowertrainName) = 0
     ----AND RIGHT(A.MapModelCodePID,1)<> 'P'
     ----and TrimDisplayed=1


     );
GO
/****** Object:  Table [PIN].[SpecialCoupon]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[SpecialCoupon](
	[CouponPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[VehicleID] [varchar](100) NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NOT NULL,
	[IncentiveCashAmt] [decimal](6, 2) NOT NULL,
	[SpecialText] [varchar](max) NULL,
	[IncludePicture] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ModelYear] [nvarchar](4) NOT NULL,
	[PlanTypePID] [int] NULL,
	[ExclusionTypePID] [int] NULL,
	[VehiclePackageId] [nvarchar](100) NULL,
	[VehicleModelCodeId] [nvarchar](100) NULL,
 CONSTRAINT [PK_SpecialCoupon] PRIMARY KEY CLUSTERED 
(
	[CouponPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_SpecialCoupon]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_SpecialCoupon]
AS
SELECT        TOP (100) PERCENT PIN.SpecialCoupon.CouponPID, PIN.SpecialCoupon.VehicleID, PIN.SpecialCoupon.EffectiveDate, PIN.SpecialCoupon.ExpirationDate, 
                         PIN.SpecialCoupon.IncentiveCashAmt, PIN.SpecialCoupon.SpecialText, PIN.SpecialCoupon.IncludePicture, PIN.SpecialCoupon.isActive, 
                         PIN.SpecialCoupon.UpdateSync, PIN.SpecialCoupon.ModelYear, Byo.VehicleModel.VehicleName, PIN.SpecialCoupon.PlanTypePID, 
                         PIN.SpecialCoupon.ExclusionTypePID, PIN.SpecialCoupon.VehiclePackageId, PIN.SpecialCoupon.VehicleModelCodeId AS VehicleModelCodeId1, 
                         REPLACE(ISNULL
                             ((SELECT        TOP (1) TrimName
                                 FROM            dbo.fnHCircle_GetTrims(PIN.SpecialCoupon.VehicleID, PIN.SpecialCoupon.ModelYear) AS fnHCircle_GetTrims_1
                                 WHERE        (MapModelCodePID = PIN.SpecialCoupon.VehicleModelCodeId)), 'All') + ' (' + PIN.SpecialCoupon.VehicleModelCodeId + ')', 'All (All)', 'All') 
                         AS VehicleModelCodeId, profile.PlanTypes.PlanType
FROM            Byo.VehicleModel INNER JOIN
                         PIN.SpecialCoupon ON Byo.VehicleModel.VehicleId = PIN.SpecialCoupon.VehicleID INNER JOIN
                         profile.PlanTypes ON PIN.SpecialCoupon.PlanTypePID = profile.PlanTypes.PlanTypePID
WHERE        (PIN.SpecialCoupon.isActive = 1)
GO
/****** Object:  View [dbo].[vw_VehExclusion]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_VehExclusion]
AS
SELECT        Byo.VehicleExclusions.*, dbo.As400ToVehicleMap.VehicleName, profile.[Plan].PlanName
FROM            Byo.VehicleExclusions INNER JOIN
                         dbo.As400ToVehicleMap ON Byo.VehicleExclusions.modelYear = dbo.As400ToVehicleMap.ModelYear AND 
                         Byo.VehicleExclusions.VehicleId = dbo.As400ToVehicleMap.MapVehiclePID LEFT OUTER JOIN
                         profile.[Plan] ON Byo.VehicleExclusions.PlanTypePID = profile.[Plan].PlanTypePID
GO
/****** Object:  Table [profile].[DealerEarnings]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[DealerEarnings](
	[PlanTypePID] [int] NOT NULL,
	[EarningsPct] [decimal](6, 2) NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_DealerEarnings] PRIMARY KEY CLUSTERED 
(
	[PlanTypePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [profile].[Mstr_DealerEarnings]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[Mstr_DealerEarnings]
AS
SELECT		Pltp.PlanTypePID,
			Pltp.PlanType,
			Dlr.EarningsPct,
			Dlr.EffectiveDate,
			Dlr.UpdateSync
FROM		profile.DealerEarnings AS Dlr
INNER JOIN	profile.PlanTypes AS Pltp ON Dlr.PlanTypePID = Pltp.PlanTypePID
GO
/****** Object:  Table [Byo].[VWMCMP_HyundaiFleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VWMCMP_HyundaiFleet](
	[S4PLTC] [char](1) NOT NULL,
	[S4CTNE] [char](2) NOT NULL,
	[S4YRNE] [char](2) NOT NULL,
	[S4SERI] [char](1) NOT NULL,
	[S4FMLY] [char](1) NOT NULL,
	[S4DOOR] [char](1) NOT NULL,
	[S4TRIM] [char](1) NOT NULL,
	[S4TRAN] [char](1) NOT NULL,
	[S4SERD] [varchar](50) NOT NULL,
	[S4DORD] [char](20) NOT NULL,
	[S4TRMD] [varchar](200) NOT NULL,
	[S4TRND] [varchar](200) NOT NULL,
	[VehicleID] [varchar](13) NULL,
	[EngineDesc] [varchar](200) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[isDisplayed] [bit] NOT NULL,
	[HyundaiFleetModelCode] [varchar](13) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Byo].[AS400ToTrimMap_HyundaiFleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Byo].[AS400ToTrimMap_HyundaiFleet]
AS
SELECT DISTINCT 
                         A.S4PLTC, A.VehicleID AS MapVehiclePID, A.VehicleModelCodeID AS MapModelCodePID, A.S4CTNE + A.S4YRNE AS VehicleYear, M.VehicleName, 
                         A.S4TRND AS TrimName, A.S4TRMD AS TrimDesc, A.S4SERD + ' ' + A.S4TRND AS VehicleEngineId, A.EngineDesc AS EngineName, A.EngineDesc, 
                         A.S4TRMD AS TransmissionName, A.S4TRMD AS TransmissionDesc, A.S4SERD + ' ' + A.S4TRND AS VehiclePowertrainId, 
                         A.S4SERD + ' ' + A.S4TRND AS VehicleDrivetrainId, A.S4SERD + ' ' + A.S4TRND AS PowertrainName, A.S4SERD + ' ' + A.S4TRND AS PowertrainDesc, 
                         A.isDisplayed AS TrimDisplayed, A.HyundaiFleetModelCode, A.S4SERD
FROM            Byo.VWMCMP_HyundaiFleet AS A WITH (nolock) INNER JOIN
                         Byo.VehicleModel AS M ON A.S4SERI = M.VehicleId AND (M.VehicleYear = A.S4CTNE + A.S4YRNE OR
                         M.VehicleYear IS NULL)
WHERE        (RTRIM(LTRIM(A.S4CTNE)) + RTRIM(LTRIM(A.S4YRNE)) >= YEAR(GETDATE()) - 2)
GO
/****** Object:  Table [dwh].[ModelPackageColor_InBound]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh].[ModelPackageColor_InBound](
	[ModelCode] [varchar](10) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[AccessoryGroup] [varchar](10) NOT NULL,
	[ExteriorColor] [varchar](3) NOT NULL,
	[InteriorColor] [varchar](3) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[OTDOff] [char](1) NULL,
	[DeletionFlag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetPackages_Hfleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description: Get Hyundai Fleet Packages
-- Modified:  11/7/2017, Erik Mildner, add 3 month enddate extension.
-- Ex: select * from dbo.[fnHCircle_GetPackages_Hfleet] (null,'2014')
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetPackages_Hfleet]
    (
      @MapModelCodePID varchar(200),
      @Year int
    )
RETURNS TABLE
AS
RETURN
    ( 
	
	SELECT * FROM
	(SELECT  distinct
                [MapVehiclePID],
                replace([VehiclePackageID],'AA','01')  as [MapPackagePID],
                replace(replace(A.MapModelCodePID,'_01',''),'_02','') as MapModelCodePID,
                replace([VehiclePackageID],'AA','01') as [VehiclePackageID],
                [VehicleYear],
                [PackageName] + '(' +  replace([VehiclePackageID],'AA','01') + ')' as [PackageName],
                [PackageDesc] + '(' +  replace([VehiclePackageID],'AA','01') + ')' as [PackageDesc]
      FROM      Byo.AS400ToPackageMap (NOLOCK) A
       INNER JOIN dbo.udf_Split(replace(replace(@MapModelCodePID,'_01',''),'_02',''),',') B
       ON replace(replace(A.MapModelCodePID,'_01',''),'_02','')=B.Value   
       OR @MapModelCodePID is null
       WHERE     (VehicleYear = @Year OR @Year =0) and VehicleYear>2010
       ) A
       INNER JOIN 
       (SELECT ModelCode,ModelYear,AccessoryGroup 
        FROM HyundaiAPP.[dwh].[ModelPackageColor_InBound] I
		WHERE I.enddate>=dateadd(mm,-3,datediff(d,0,getdate()))) I
		ON A.MapModelCodePID=I.ModelCode
		AND A.VehicleYear=I.ModelYear
		AND LEFT(MapPackagePID,2)=I.AccessoryGroup 
)
       
       
 


GO
/****** Object:  Table [mig].[Tb_400_VWVM2P_VINMaster]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[Tb_400_VWVM2P_VINMaster](
	[C2FVIN_FullVIN] [varchar](17) NOT NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](max) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehicleInteriorColorID] [varchar](10) NULL,
	[VehiclePackageID] [varchar](20) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[PriceModification] [money] NULL,
	[VehicleSeatColorID] [varchar](30) NULL,
	[year]  AS (CONVERT([varchar](2),[C2CTNE_YearCentryCode],(0))+CONVERT([varchar](2),[C2YRNE_ShortVINYear],(0))) PERSISTED,
	[C2EXCD] [decimal](7, 2) NULL,
	[C2EXCM] [decimal](7, 2) NULL,
	[C2INCD] [decimal](7, 2) NULL,
	[C2INCM] [decimal](7, 2) NULL,
	[MigrationCreatedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tb_400_VWVM2P_VINMaster]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE CLUSTERED INDEX [IX_Tb_400_VWVM2P_VINMaster] ON [mig].[Tb_400_VWVM2P_VINMaster]
(
	[C2FVIN_FullVIN] ASC,
	[C2DELR_DealerCodeCURRET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VWCCMP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VWCCMP](
	[S5PLTC] [char](1) NOT NULL,
	[S5CTNE] [char](2) NOT NULL,
	[S5YRNE] [char](2) NOT NULL,
	[S5SERI] [char](1) NOT NULL,
	[S5FMLY] [char](1) NOT NULL,
	[S5DOOR] [char](1) NOT NULL,
	[S5TRIM] [char](1) NOT NULL,
	[S5TRAN] [char](1) NOT NULL,
	[S5EXCL] [char](3) NULL,
	[S5INCL] [char](3) NULL,
	[S5EXDS] [char](30) NULL,
	[S5INDS] [char](30) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehicleSeatColorID] [varchar](30) NULL,
	[VehicleInteriorColorID] [varchar](10) NULL,
	[VehicleInteriorColorDesc] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [Byo].[AS400ToColorMap]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*select top 10 * from [Byo].[AS400ToColorMap]
WHERE     (Byo.VWCCMP.S5YRNE >= 09) AND (Byo.VWCCMP.S5CTNE >= '20')*/
CREATE VIEW [Byo].[AS400ToColorMap]
AS
SELECT        VehicleID AS MapVehiclePID, VehicleModelCodeID AS MapModelCodePID, VehicleColorID AS MapColorPID, S5INCL AS MapInteriorColorPID, 
                         dbo.udf_RemoveSpicalChars(CAST(S5EXDS AS nvarchar(200))) AS ColorName, dbo.udf_RemoveSpicalChars(CAST(S5EXDS AS nvarchar(200))) AS ColorDesc, 
                         S5INDS AS InteriorColorName, S5INDS AS InteriorColorDesc, VehicleModelCodeID, VehicleColorID AS VehicleExteriorColorID, S5CTNE + S5YRNE AS Year, 
                         VehicleSeatColorID
FROM            Byo.VWCCMP
WHERE        (RTRIM(LTRIM(S5CTNE)) + RTRIM(LTRIM(S5YRNE)) >= YEAR(GETDATE()) - 2)
GO
/****** Object:  View [Byo].[As400Map]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*  WHERE Veh.MapVehiclePID=19                                           
ORDER BY Veh.MapVehiclePID,
        Trim.MapTrimPID,
        Pkg.MapPackagePID,
        Col.MapColorPID*/
CREATE VIEW [Byo].[As400Map]
--WITH SCHEMABINDING
AS
SELECT      Veh.MapVehiclePID, 
			Veh.MapModelCodePID, 
			Pkg.VehiclePackageID AS MapPackagePID, 
			Col.MapColorPID, 
			Veh.VehicleYear AS ModelYear, 
			'00' AS CenCode, 
            '00' AS YearCode, 
             Veh.VehicleName, 
             Veh.VehiclePowertrainId AS DrivetrainDesc, 
             '' AS DefaultImage, 
             Veh.TrimName, 
             Veh.TrimDesc, 
             Veh.EngineName, 
             Veh.EngineDesc, 
             Veh.TransmissionName, 
             Veh.TransmissionDesc, 
             Pkg.PackageName, 
             Pkg.PackageDesc, 
             Pkg.AccGroupCode, 
             Col.ColorName, 
             Col.ColorDesc, 
             Col.MapInteriorColorPID, 
             Col.InteriorColorName,
             Col.VehicleSeatColorID
FROM         Byo.AS400ToTrimMap AS Veh 
             INNER JOIN Byo.AS400ToPackageMap AS Pkg 
             ON Pkg.MapModelCodePID = Veh.MapModelCodePID 
             AND Pkg.VehicleYear = Veh.VehicleYear 
             INNER JOIN Byo.AS400ToColorMap AS 
             Col ON Col.MapModelCodePID = Veh.MapModelCodePID AND Col.Year = Veh.VehicleYear








GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetInventoryAll]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		NickNguyen
-- Create date: 3/17/2014
-- Description:	get all inventory via the tables without using view
-- Modify History: 
-- 10/24/2016: DTon 
--	   Added ModelYear to function udf_getEquusModelCode
-- =============================================
CREATE FUNCTION [dbo].[fn_GetInventoryAll]
(	
	-- Add the parameters for the function here
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT AS400.C2PIOM_TotPIOMSRP, 
		   AS400.C2COST_AdvertsingCost, 
		   rtrim(ltrim(AS400.C2EXCL_ExteriorClrHMA)) as C2EXCL_ExteriorClrHMA, 
		   AS400.C2ACCE_AccessoryGroup, 
		   AS400.C2TRAN_ShortVINTrans, 
		   AS400.C2TRIM_ShortVINTrim, 
		   AS400.C2SER2_ShortVINSeries, 
		   AS400.C2DELR_DealerCodeCURRET, 
		   AS400.C2DOOR_ShortVINDoor, 
		   AS400.C2FOBP_BasePriceDCost, 
		   AS400.C2PIOD_TorPIODealer, 
		   AS400.C2FRTC_FreightCharge, 
		   AS400.C2CTNE_YearCentryCode, 
		   AS400.C2YRNE_ShortVINYear, 
		   AS400.C2MSRP_BasePriceMSRP, 
		   AS400.PriceModification, 
		   AS400.C2FVIN_FullVIN, 
		   AS400.C2FACM_TotFacAccMSRP, 
		   AS400.C2DSLD_DateSold, 
		   HUSA.ColorDesc, 
		   HUSA.MapColorPID, 
		   HUSA.ModelYear, 
		   HUSA.PackageDesc, 
		   HUSA.MapPackagePID, 
		   HUSA.TransmissionDesc, 
		   HUSA.TrimDesc, 
		   dbo.udf_getEquusModelCode(HUSA.MapModelCodePID, AS400.C2ACCE_AccessoryGroup, HUSA.ModelYear ) AS MapModelCodePID, 
		   HUSA.MapVehiclePID, 
		   HUSA.VehicleName, 
		   AS400.C2REGN_RegionCode, 
		   HUSA.MapInteriorColorPID,
		   AS400.C2INCL_InteriorClrHMA, 
		   HUSA.InteriorColorName, 
		   AS400.C2IVST_InventoryStatus, 
		   AS400.VehicleSeatColorID AS GoodVehicleSeatColorID,
		   HUSA.VehicleSeatColorID
		   ,AS400.VehicleColorID
		   ,AS400.C2PC01_PortInstlOPT1
		   ,AS400.C2PC02_PortInstlOPT2 
		   ,AS400.C2PC03_PortInstlOPT3 
		   ,AS400.C2PC04_PortInstlOPT4 
		   ,AS400.C2PC05_PortInstlOPT5 
		   ,AS400.C2PC06_PortInstlOPT6 
		   ,AS400.C2PC07_PortInstlOPT7 
		   ,AS400.C2PC08_PortInstlOPT8 
		   ,AS400.C2PC09_PortInstlOPT9 
		   ,AS400.C2PC10_PortInstlOPT10 
		   ,AS400.C2PA01_FrtLoadPIO1 
		   ,AS400.C2PA02_FrtLoadPIO2 
		   ,AS400.C2PA03_FrtLoadPIO3 
		   ,AS400.C2PA04_FrtLoadPIO4 
		   ,AS400.C2PA05_FrtLoadPIO5 
		   ,AS400.C2PA06_FrtLoadPIO6 
		   ,AS400.C2PA07_FrtLoadPIO7 
		   ,AS400.C2PA08_FrtLoadPIO8 
		   ,AS400.C2PA09_FrtLoadPIO9 
		   ,C2PA10_FrtLoadPIO10
		   ,[C2PURD_PurifiedDate]
	FROM      mig.Tb_400_VWVM2P_VINMaster (nolock) AS AS400 
    INNER JOIN Byo.As400Map (nolock)  AS HUSA ON HUSA.MapVehiclePID = AS400.VehicleID 
													AND HUSA.MapModelCodePID = AS400.VehicleModelCodeID 
													AND HUSA.MapColorPID = AS400.VehicleColorID 
												AND HUSA.MapPackagePID = AS400.VehiclePackageID 
													AND AS400.Year = HUSA.ModelYear 											
												AND LTRIM(AS400.VehicleSeatColorID) = LTRIM(HUSA.VehicleSeatColorID)
	WHERE     (AS400.C2REGN_RegionCode NOT IN ('CS', 'NL') ) and  AS400.C2IVST_InventoryStatus <> 'HI' 
	
)

GO
/****** Object:  Table [profile].[Role_User]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[Role_User](
	[Role_PID] [int] NOT NULL,
	[UserPID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_Role_User] PRIMARY KEY CLUSTERED 
(
	[Role_PID] ASC,
	[UserPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_GetAllUsersIdList]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_GetAllUsersIdList]
AS
SELECT     profile.T_User.UserPID, profile.T_User.UserID
FROM         profile.T_User INNER JOIN
                      profile.Role_User ON profile.T_User.UserPID = profile.Role_User.UserPID
WHERE     (profile.T_User.Enabled = 1)
GO
/****** Object:  View [dbo].[PinUsageMgmt]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PinUsageMgmt]
AS
SELECT     PIN.PinDetail.PinCode, profile.[Plan].PlanName, profile.T_Profile.FirstName, profile.T_Profile.LastName, PIN.PinDetail.IssueDate, 
                      PIN.PinDetail.ExpirationDate, profile.T_User.UserID, profile.T_Company.companyID, PIN.PinDetail.SentToRDR, PIN.PinDetail.ModifiedDate
FROM         PIN.PinDetail INNER JOIN
                      profile.[Plan] ON PIN.PinDetail.PlanPID = profile.[Plan].PlanPID AND PIN.PinDetail.PlanPID = profile.[Plan].PlanPID INNER JOIN
                      profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID INNER JOIN
                      profile.T_User ON PIN.PinDetail.SponsorPID = profile.T_User.UserPID AND PIN.PinDetail.CreatedBy = profile.T_User.UserPID AND 
                      PIN.PinDetail.SponsorPID = profile.T_User.UserPID INNER JOIN
                      profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID
WHERE     (PIN.PinDetail.PinStatusPID = 1)
GO
/****** Object:  View [profile].[comp_GetCompanies]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--select * from [profile].[comp_GetCompanies] order by companyPID

CREATE VIEW [profile].[comp_GetCompanies]
AS
SELECT	Comp.companyPID,
			Comp.GlobalID,
			Comp.companyID,
			Comp.companyName,
			Rel.RelationPID,
			Rel.RelationID,
			Rel.RelationDesc,
			Rel.DefaultRole,
			Rel.SignUpAllowed
FROM		profile.T_Company AS Comp
INNER JOIN	profile.CompanyRelation AS Rel ON Comp.companyRelation = Rel.RelationPID
WHERE     (Comp.IsActive = 1) --and companyName <> '' 


GO
/****** Object:  Table [dbo].[HMACorrosionPrmyOwnr]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HMACorrosionPrmyOwnr](
	[VinNumber] [varchar](50) NULL,
	[LastName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnHMACorrosion_GetPrimaryOwner]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.fnHMACorrosion_GetPrimaryOwner('','')
-- =============================================
CREATE FUNCTION [dbo].[fnHMACorrosion_GetPrimaryOwner] 
(
@VinNumber VARCHAR(50),
@LastName VARCHAR(50)	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT TOP 1 *
  FROM dbo.HMACorrosionPrmyOwnr
  WHERE vinNumber=@VinNumber AND LastName=@LastName
	
)
GO
/****** Object:  View [profile].[usr_Profile]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[usr_Profile]
AS
SELECT     Usr.UserPID, Usr.UserID, Usr.companyPID AS Associated_Company, CAST(NULL AS varchar(46)) AS Password, CAST(NULL AS varchar(46)) AS Verify_Password, 
                      Prof.FirstName, Prof.MiddleInitial, Prof.LastName, Prof.Address1, Prof.Address2, Prof.City, Prof.StateID, Prof.Zipcode, Prof.Email, Prof.Phone1 AS Business_Phone, 
                      Prof.Phone2 AS Home_Phone, Prof.Fax, Usr.UpdateSync
FROM         profile.T_User AS Usr LEFT OUTER JOIN
                      profile.T_Profile AS Prof ON Usr.GlobalID = Prof.GlobalRefID
GO
/****** Object:  View [PIN].[PinManagement]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [PIN].[PinManagement]
AS
SELECT     Pdet.PinPID, Pdet.PinCode AS PIN, Ptype.PlanType, Pst.PinStatus, Pdet.IssueDate, Cmp.companyName AS AffiliateName, 
                      Cmr.RelationID AS SponsorType, Prof.FirstName AS ParticipantFirstName, Prof.LastName AS ParticipantLastName, 
                      CASE WHEN Psale.DealerCode IS NULL THEN Dlr.DealerCode ELSE Psale.DealerCode END AS DealerCode, CASE WHEN Psale.ModelYear IS NULL 
                      THEN Veh.[S4CTNE]+Veh.[S4YRNE] ELSE Psale.ModelYear END AS ModelYear, CASE WHEN Psale.ModelCode IS NULL 
                      THEN Veh.S4SERI ELSE Psale.ModelCode END AS ModelCode, CASE WHEN Psale.Packagecode IS NULL 
                      THEN Pkg.VehiclePackageID ELSE Psale.Packagecode END AS OptionCode, Ptype.PlanTypePID
FROM         PIN.PinDetail (nolock) AS Pdet INNER JOIN
                      PIN.PinStatus AS Pst ON Pst.PinStatusPID = Pdet.PinStatusPID INNER JOIN
                      profile.[Plan] AS Pln ON Pln.PlanPID = Pdet.PlanPID  INNER JOIN
                      profile.PlanTypes AS Ptype ON Ptype.PlanTypePID = Pln.PlanTypePID INNER JOIN
                      profile.T_User  (nolock) AS Usr ON Usr.UserPID = Pdet.SponsorPID INNER JOIN
                      profile.T_Company AS Cmp ON Cmp.companyPID = Usr.companyPID INNER JOIN
                      profile.CompanyRelation AS Cmr ON Cmr.RelationPID = Cmp.companyRelation INNER JOIN
                      profile.T_Profile AS Prof ON Prof.GlobalRefID = Pdet.BuyerRef LEFT OUTER JOIN
                      PIN.PINSale AS Psale ON Psale.PinPID = Pdet.PinPID LEFT OUTER JOIN
                      PIN.PINVehicleSelectionCache AS VehSel ON VehSel.PinPID = Pdet.PinPID LEFT OUTER JOIN
                      [Byo].[VWMCMP] AS Veh ON Veh.VehicleID = VehSel.MapVehiclePID LEFT OUTER JOIN
                      Byo.AS400ToPackageMap AS Pkg ON Pkg.MapPackagePID = VehSel.MapPackagePID LEFT OUTER JOIN
                      PIN.PINDealerSelection AS Dlr ON Dlr.PinPID = Pdet.PinPID

GO
/****** Object:  View [PIN].[RDRAnalysisData]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [PIN].[RDRAnalysisData]
AS
SELECT		Pdet.PinPID as PinPID,
			Pdet.PinCode AS PIN,
			Pdet.IssueDate AS IssueDate,
			Dlr.region AS Region,
			Dlr.salesdistrict AS District,
			Dlr.DealerCode AS DealerCode,
			Psale.RDRDate AS RDRDate,
			Psale.SaleDate AS SaleDate,
			Ptype.PlanType AS SaleType,
			Psale.VIN AS VIN,
			Psale.ModelYear AS ModelYear,
			Psale.ModelCode AS ModelCode,
			Psale.Packagecode AS OptionCode,
			Psale.InvoiceAmt AS InvoiceAmount
			
FROM		Pin.PinDetail Pdet
	JOIN	Pin.PINSale Psale ON Psale.PinPID = Pdet.PinPID
	JOIN	Pin.PinStatus Pst ON Pst.PinStatusPID = Pdet.PinStatusPID
	JOIN	[profile].PlanTypes Ptype ON Ptype.PlanTypePID = Psale.PlanType
	JOIN	HyundaiUSA.Dealer.DealerInfo Dlr ON Dlr.DealerCode = Psale.DealerCode
	WHERE	Pst.PinStatus = 'Used'
		AND	Pdet.isActive > 0

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetPackages]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.[fnHCircle_GetPackages] ('8','2013')
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetPackages]
    (
      @MapModelCodePID varchar(200),
      @Year int
    )
RETURNS TABLE
AS
RETURN
    ( SELECT  distinct
                [MapVehiclePID],
                [VehiclePackageID] as [MapPackagePID],
                [MapModelCodePID],
                [VehiclePackageID],
                [VehicleYear],
                [PackageName],
                [PackageDesc]
      FROM      Byo.AS400ToPackageMap (NOLOCK) A
       INNER JOIN dbo.udf_Split( replace(replace(@MapModelCodePID,'_01',''),'_02',''),',') B
       ON A.MapModelCodePID=B.Value   OR @MapModelCodePID is null
       WHERE     (VehicleYear = @Year OR @Year =0) and VehicleYear>2010
                AND [MapPackagePID] NOT IN (SELECT PackageCode FROM dbo.NoPackageLookup)
      UNION
     SELECT  
                '1' as [MapVehiclePID],
                '01' as [MapPackagePID],
                 '' as [MapModelCodePID],
                '01' [VehiclePackageID],
                '2010'[VehicleYear],
                'NO PACKAGE'AS [PackageName],
               'NO PACKAGE'as [PackageDesc]



    )





GO
/****** Object:  View [dbo].[vw_GetAllSpecialCoupons]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_GetAllSpecialCoupons]
AS
SELECT     dbo.As400ToVehicleMap.VehicleName, PIN.SpecialCoupon.EffectiveDate, PIN.SpecialCoupon.ExpirationDate, PIN.SpecialCoupon.isActive, 
                      PIN.SpecialCoupon.ModelYear, PIN.SpecialCoupon.CouponPID
FROM         dbo.As400ToVehicleMap INNER JOIN
                      PIN.SpecialCoupon ON dbo.As400ToVehicleMap.ModelYear = PIN.SpecialCoupon.ModelYear AND 
                      dbo.As400ToVehicleMap.VehicleName = PIN.SpecialCoupon.VehicleID AND dbo.As400ToVehicleMap.ModelYear = PIN.SpecialCoupon.ModelYear
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetYear]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.fnHCirlce_GetYear()
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_GetYear] 
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT TOP 100 [ModelYear]
  FROM [dbo].[As400ToVehicleMap]
  where [ModelYear] >=YEAR(getdate())-1
  GROUP BY ModelYear
  ORDER BY ModelYear

)


GO
/****** Object:  UserDefinedFunction [dbo].[fnHCirlce_GetModelByYear]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--select * from dbo.fnHCirlce_GetModelByYear('2013')
-- =============================================
CREATE FUNCTION [dbo].[fnHCirlce_GetModelByYear] 
(	
	-- Add the parameters for the function here
	@ModelYear as nvarchar(4)
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT [MapVehiclePID], 
	  [ModelYear]
	, LTRIM(RTRIM([VehicleName]))  as [VehicleName]
	, COALESCE([VehicleTypeName],'') AS [VehicleTypeName]
	, COALESCE(DrivetrainDesc,'') AS [DrivetrainDesc]
	, [DefaultImage] AS [VehicleImageLoc]

	FROM [dbo].[As400ToVehicleMap] 
	WHERE [ModelYear] = @ModelYear 
	
)

GO
/****** Object:  Table [profile].[PlanArchive]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanArchive](
	[PlanPID] [int] NOT NULL,
	[PlanArchivePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[PlanName] [varchar](50) NOT NULL,
	[PlanDescription] [varchar](1024) NOT NULL,
	[PlanStartDate] [datetime] NOT NULL,
	[PlanTermDate] [datetime] NULL,
	[RdrSaletype] [int] NOT NULL,
	[PlanDiscount] [decimal](4, 1) NOT NULL,
	[DiscountDate] [datetime] NOT NULL,
	[PinExpireDays] [int] NOT NULL,
	[CustCash] [bit] NOT NULL,
	[DealerCash] [bit] NOT NULL,
	[SpecialIncentive] [bit] NOT NULL,
	[PlanStatus] [int] NOT NULL,
	[AllowVehicleCoupons] [bit] NOT NULL,
	[AcbDescription] [varchar](256) NULL,
	[AcbAmount] [decimal](5, 2) NULL,
	[AcbEffectiveDate] [datetime] NULL,
	[AcbExpirationDate] [datetime] NULL,
	[DiscountAmt] [decimal](5, 2) NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PlanArchive] PRIMARY KEY CLUSTERED 
(
	[PlanPID] ASC,
	[PlanArchivePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[PlanSponsorsArchive]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanSponsorsArchive](
	[PlanPID] [int] NOT NULL,
	[PlanArchivePID] [int] NOT NULL,
	[RelationPID] [int] NOT NULL,
	[PinLimit] [int] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PlanSponsorsArchive] PRIMARY KEY CLUSTERED 
(
	[PlanPID] ASC,
	[PlanArchivePID] ASC,
	[RelationPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [profile].[SponsorModificationHistory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[SponsorModificationHistory]
AS
SELECT		Pspon.PlanPID,
			Pspon.PlanArchivePID,
			Pspon.RelationPID,
			CompRel.RelationID AS SponsorType,
			Pspon.PinLimit,
			Pspon.ModifiedTime
FROM		profile.PlanSponsorsArchive AS Pspon
INNER JOIN	profile.PlanArchive AS [Plan] ON Pspon.PlanPID = [Plan].PlanPID AND Pspon.PlanArchivePID = [Plan].PlanArchivePID
INNER JOIN	profile.CompanyRelation AS CompRel ON Pspon.RelationPID = CompRel.RelationPID
GO
/****** Object:  Table [profile].[PlanStatusCodes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanStatusCodes](
	[StatusPID] [int] NOT NULL,
	[StatusCode] [varchar](24) NOT NULL,
 CONSTRAINT [PK_PlanStatusCodes] PRIMARY KEY CLUSTERED 
(
	[StatusPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [profile].[PlanModificationHistory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[PlanModificationHistory]
AS
SELECT		TOP(1000)
			Plar.PlanPID,
			Plar.PlanArchivePID,
			Plar.PlanTypePID,
			Ptype.PlanType,
			Plar.PlanName,
			Plar.PlanStartDate,
			Plar.PlanTermDate,
			Plar.PlanDiscount AS DiscountPct,
			Plar.DiscountAmt AS DiscountDollars,
			DlrEarn.EarningsPct AS DealerEarningsPct,
			Pstat.StatusCode AS Status,
			Plar.AcbAmount AS IncentiveAmt,
			Plar.AcbEffectiveDate AS IncentiveStartDate,
			Plar.AcbExpirationDate AS IncentiveExpireDate,
			Plar.CustCash,
			Plar.DealerCash,
			Plar.AllowVehicleCoupons,
			Plar.ModifiedTime AS ModificationDate
FROM		profile.PlanArchive AS Plar
INNER JOIN	profile.PlanTypes AS Ptype ON Plar.PlanTypePID = Ptype.PlanTypePID
INNER JOIN	profile.PlanStatusCodes AS Pstat ON Plar.PlanStatus = Pstat.StatusPID
INNER JOIN	profile.DealerEarnings AS DlrEarn ON DlrEarn.PlanTypePID = Ptype.PlanTypePID

ORDER BY Plar.ModifiedTime DESC, Ptype.PlanType, Plar.PlanPID, Plar.PlanArchivePID


GO
/****** Object:  View [dbo].[view_GetPinIssued]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_GetPinIssued]
AS
SELECT     PIN.PinDetail.SponsorPID, PIN.PinStatus.PinStatus, PIN.PinDetail.PinPID, profile.PlanTypes.PlanType, PIN.PinDetail.IssueDate, profile.PlanTypes.PlanTypePID
FROM         PIN.PinDetail INNER JOIN
                      PIN.PinStatus ON PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID INNER JOIN
                      profile.[Plan] ON PIN.PinDetail.PlanPID = profile.[Plan].PlanPID INNER JOIN
                      profile.PlanTypes ON profile.[Plan].PlanTypePID = profile.PlanTypes.PlanTypePID AND profile.[Plan].PlanTypePID = profile.PlanTypes.PlanTypePID
WHERE     (PIN.PinStatus.PinStatus <> 'Cancelled') AND (PIN.PinStatus.PinStatus <> 'Inactive')
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetDCSTrimCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from dbo.udf_GetDCSTrimCode (9,null)
-- =============================================
CREATE FUNCTION [dbo].[udf_GetDCSTrimCode]
(	
	@MapVehicleID nvarchar(100)
	,@MapModelCodePID  nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
		select mapModelCodePID  FROM Byo.As400toTrimMap
		 where 
			MapVehiclePID=@MapVehicleID 
			and PowertrainName=
		 (
		 Select top 1 PowertrainName FROM Byo.As400toTrimMap
		 WHERE MapModelCodePID=isnull(@mapModelCodePID,MapModelCodePID)
				AND MapVehiclePID=@MapVehicleID
		)
)



GO
/****** Object:  View [dbo].[vw_active_plan]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_active_plan]
AS
SELECT        profile.[Plan].PlanPID, profile.[Plan].PlanTypePID, profile.[Plan].PlanName, profile.[Plan].PlanDescription, profile.[Plan].PlanStartDate, profile.[Plan].PlanTermDate, 
                         profile.[Plan].RdrSaletype, profile.[Plan].PlanDiscount, profile.[Plan].DiscountDate, profile.[Plan].PinExpireDays, profile.[Plan].CustCash, profile.[Plan].DealerCash, 
                         profile.[Plan].SpecialIncentive, profile.[Plan].PlanStatus, profile.[Plan].UpdateSync, profile.[Plan].AllowVehicleCoupons, profile.[Plan].AcbDescription, 
                         profile.[Plan].AcbAmount, profile.[Plan].AcbEffectiveDate, profile.[Plan].AcbExpirationDate, profile.[Plan].DiscountAmt
FROM            profile.[Plan] INNER JOIN
                         profile.PlanStatusCodes ON profile.[Plan].PlanStatus = profile.PlanStatusCodes.StatusPID
GO
/****** Object:  View [dbo].[vw_GetUser_PINCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_GetUser_PINCode]
AS
SELECT     profile.T_Profile.GlobalRefID, profile.T_Profile.FirstName, profile.T_Profile.LastName, PIN.PinDetail.PinCode, PIN.PinDetail.ExpirationDate, 
                      PIN.PinDetail.isActive, PIN.PinDetail.SponsorPID, PIN.PinDetail.PlanPID, dbo.vw_active_plan.PlanName, dbo.vw_active_plan.PlanDescription, 
                      PIN.PinDetail.BuyerRef
FROM         PIN.PinDetail INNER JOIN
                      dbo.vw_active_plan ON PIN.PinDetail.PlanPID = dbo.vw_active_plan.PlanPID INNER JOIN
                      profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID
WHERE     (PIN.PinDetail.isActive = 1)
GO
/****** Object:  Table [profile].[Roles]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[Roles](
	[Role_PID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Role] [varchar](16) NOT NULL,
	[Description] [varchar](1024) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Role_PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[UserRole]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserRole]
AS
SELECT     profile.Roles.Role, profile.Roles.Role_PID, profile.Role_User.UserPID
FROM         profile.Role_User INNER JOIN
                      profile.Roles ON profile.Role_User.Role_PID = profile.Roles.Role_PID
GO
/****** Object:  View [profile].[GetUsersNeedingApproval]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[GetUsersNeedingApproval]
AS
SELECT     Usr.UserPID, Usr.UserID, Usr.NeedsApproval, Usr.Enabled, Prof.FirstName + ' ' + Prof.LastName AS UserName, Prof.Email, Cmp.companyPID, 
                      Cmp.companyName, Crl.SignUpAllowed AS CanBeApproved
FROM         profile.T_User AS Usr INNER JOIN
                      profile.T_Company AS Cmp ON Cmp.companyPID = Usr.companyPID INNER JOIN
                      profile.CompanyRelation AS Crl ON Crl.RelationPID = Cmp.companyRelation AND Crl.SignUpAllowed > 0 LEFT OUTER JOIN
                      profile.T_Profile AS Prof ON Prof.GlobalRefID = Usr.GlobalID
WHERE     (Usr.NeedsApproval = '1')
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetPackagePIDList]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from [dbo].[udf_GetPackagePIDList] (9,204,180)
-- =============================================
CREATE FUNCTION [dbo].[udf_GetPackagePIDList]
(	
	@MapVehicleID int
	,@mapTrimPID  int
	,@MapPackagePID int
)
RETURNS TABLE 
AS
RETURN 
(
		select MapPackagePID  FROM Byo.AS400ToPackageMap
		 where 
			MapVehiclePID=@MapVehicleID 
			--AND MapTrimPID=@MapTrimPID
			and packagename=
		 (
		 Select top 1 packagename FROM Byo.As400toPackageMap
		 --WHERE --MapTrimPID=isnull(@mapTrimPID,MapTrimPID)
			--	 MapVehiclePID=@MapVehicleID
			--	AND MapPackagePID =@MapPackagePID
		)
)





GO
/****** Object:  View [profile].[GetUsersForUpdate]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [profile].[GetUsersForUpdate]
AS
SELECT     Usr.UserPID, Usr.UserID, Usr.NeedsApproval, Usr.Enabled, Prof.FirstName, Prof.LastName, Prof.Email, Cmp.companyPID, Cmp.companyName, 
                      profile.UserInRole(Usr.UserPID, 'AffilAdmin') AS AffiliateAdmin, profile.UserInRole(Usr.UserPID, 'PlanAdmin') AS PlanAdmin, 
                      Crl.SignUpAllowed AS CanUpdatePassword, NULL AS Password
FROM         profile.T_User AS Usr INNER JOIN
                      profile.T_Company AS Cmp ON Cmp.companyPID = Usr.companyPID INNER JOIN
                      profile.CompanyRelation AS Crl ON Crl.RelationPID = Cmp.companyRelation LEFT OUTER JOIN
                      profile.T_Profile AS Prof ON Prof.GlobalRefID = Usr.GlobalID
WHERE     (Usr.Enabled = 1)
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetColorPIDList]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from [dbo].[udf_GetPackagePIDList] (9,204,180)
-- =============================================
CREATE FUNCTION [dbo].[udf_GetColorPIDList]
(	
	@MapVehicleID nvarchar(100)
	,@mapTrimPID  nvarchar(100)
	,@MapColorPID nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
		select MapColorPID  FROM Byo.As400toColorMap
		 where 
			MapVehiclePID=@MapVehicleID 
			--AND MapTrimPID=@MapTrimPID
			and ColorName=
		 (
		 Select top 1 ColorName FROM Byo.As400toColorMap
		 WHERE 	 MapVehiclePID=@MapVehicleID
				AND MapColorPID =@MapColorPID
		)
)



GO
/****** Object:  Table [dbo].[DSM]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSM](
	[Region] [varchar](50) NULL,
	[Region Description] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[District Description] [varchar](50) NULL,
	[District Manger ID] [varchar](50) NULL,
	[District Manager Last Name] [varchar](50) NULL,
	[District Manager Frist Name] [varchar](50) NULL,
	[District Manager email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetDSM]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Erik Mildner 
-- Create date: 4/16/2018
-- Description:	Get DSM by District manager ID
-- Ex: select * from dbo.[fnHCircle_GetDSM] ('HMA03455')
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetDSM]
(	
	 @DistrictManagerID varchar(20)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT top 1 *
	FROM [dbo].[DSM] dsm
	WHERE dsm.[District Manger ID] = @DistrictManagerID
)
GO
/****** Object:  Table [profile].[PlanSponsors]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanSponsors](
	[PlanPID] [int] NOT NULL,
	[RelationPID] [int] NOT NULL,
	[PinLimit] [int] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_PlanSponsors] PRIMARY KEY CLUSTERED 
(
	[PlanPID] ASC,
	[RelationPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_GetPlanByCompanyGlobalID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Erik Mildner 
-- Create date: 1/25/2019
-- Description:	Get Plan by Company GlobalID
-- Ex: select * from dbo.[fnHCircle_GetPlanByCompanyGlobalID] ('19127FEE-078D-4532-BF68-B36B9DFA7320', 'Plan O')
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_GetPlanByCompanyGlobalID]
(	
	 @GlobalID varchar(50),
	 @PlanName varchar(50)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT top 1 p.PlanTypePID,
				 p.PlanName,
				 tc.companyID,
				 tc.companyName
	FROM profile.T_Company tc
	INNER JOIN profile.[PlanSponsors] ps
		on ps.RelationPID = tc.companyRelation
	INNER JOIN profile.[plan] p
		on p.PlanPID = ps.PlanPID
	WHERE tc.GlobalID = @GlobalID and p.PlanName = @PlanName
)

GO
/****** Object:  View [dbo].[GetRDRReport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetRDRReport]
AS
SELECT     PIN.PinDetail.PinCode, dbo.Sheet2$.VIN, dbo.Sheet2$.RDRDate, profile.T_Profile.FirstName, profile.T_Profile.LastName, 
                      profile.T_Company.companyName, profile.T_Company.companyID
FROM         PIN.PinDetail INNER JOIN
                      dbo.Sheet2$ ON dbo.Sheet2$.PinNumber = PIN.PinDetail.PinCode INNER JOIN
                      profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID INNER JOIN
                      PIN.PinStatus ON PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID AND PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID INNER JOIN
                      profile.T_User ON PIN.PinDetail.SponsorPID = profile.T_User.UserPID AND PIN.PinDetail.CreatedBy = profile.T_User.UserPID AND 
                      PIN.PinDetail.SponsorPID = profile.T_User.UserPID AND PIN.PinDetail.CreatedBy = profile.T_User.UserPID AND 
                      PIN.PinDetail.SponsorPID = profile.T_User.UserPID AND PIN.PinDetail.CreatedBy = profile.T_User.UserPID INNER JOIN
                      profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID AND 
                      profile.T_User.companyPID = profile.T_Company.companyPID AND profile.T_User.companyPID = profile.T_Company.companyPID
WHERE     (PIN.PinStatus.PinStatus = 'Used') AND (dbo.Sheet2$.VIN <> '')
GO
/****** Object:  View [mig].[vw_Tb_400_VWVM2P_VINMaster_Search]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Don't know
-- Create date: Don't know
-- Description:	Search inventory 
--	Modify: 
--	DTon_09/21/2017: Add ModelYear for function udf_getEquusModelCode per Sudhir's request
-- =============================================

/*select top 100 * from [mig].[vw_Tb_400_VWVM2P_VINMaster_Search] where C2DELR_DealerCodeCURRET='CA310'*/
CREATE VIEW [mig].[vw_Tb_400_VWVM2P_VINMaster_Search]
AS
	/* Do not open and save this view using designer mode*/
	SELECT AS400.C2PIOM_TotPIOMSRP, 
		   AS400.C2COST_AdvertsingCost, 
		   AS400.C2EXCL_ExteriorClrHMA, 
		   AS400.C2ACCE_AccessoryGroup, 
		   AS400.C2TRAN_ShortVINTrans, 
		   AS400.C2TRIM_ShortVINTrim, 
		   AS400.C2SER2_ShortVINSeries, 
		   AS400.C2DELR_DealerCodeCURRET, 
		   AS400.C2DOOR_ShortVINDoor, 
		   AS400.C2FOBP_BasePriceDCost, 
		   AS400.C2PIOD_TorPIODealer, 
		   AS400.C2FRTC_FreightCharge, 
		   AS400.C2CTNE_YearCentryCode, 
		   AS400.C2YRNE_ShortVINYear, 
		   AS400.C2MSRP_BasePriceMSRP, 
		   AS400.PriceModification, 
		   AS400.C2FVIN_FullVIN, 
		   AS400.C2FACM_TotFacAccMSRP, 
		   AS400.C2DSLD_DateSold, 
		   HUSA.ColorDesc, 
		   HUSA.MapColorPID, 
		   HUSA.ModelYear, 
		   HUSA.PackageDesc, 
		   HUSA.MapPackagePID, 
		   HUSA.TransmissionDesc, 
		   HUSA.TrimDesc, 
		   dbo.udf_getEquusModelCode(HUSA.MapModelCodePID, 
		   AS400.C2ACCE_AccessoryGroup, HUSA.ModelYear) AS MapModelCodePID, 
		   HUSA.MapVehiclePID, 
		   HUSA.VehicleName, 
		   AS400.C2REGN_RegionCode, 
		   HUSA.MapInteriorColorPID,
		   AS400.C2INCL_InteriorClrHMA, 
		   HUSA.InteriorColorName, 
		   AS400.C2IVST_InventoryStatus, 
		   AS400.VehicleSeatColorID AS GoodVehicleSeatColorID,
		   HUSA.VehicleSeatColorID
		   ,AS400.VehicleColorID 
	FROM         mig.Tb_400_VWVM2P_VINMaster (nolock) AS AS400 
	
				 INNER JOIN Byo.As400Map (nolock)  AS HUSA ON HUSA.MapVehiclePID = AS400.VehicleID 
													AND HUSA.MapModelCodePID = AS400.VehicleModelCodeID 
													AND HUSA.MapColorPID = AS400.VehicleColorID 
												AND HUSA.MapPackagePID = AS400.VehiclePackageID 
													AND AS400.Year = HUSA.ModelYear 
												--Note: Comment out for now:	AND AS400.C2INCL_InteriorClrHMA is seat color <> HUSA.MapInteriorColorPID 
												AND LTRIM(AS400.VehicleSeatColorID) = LTRIM(HUSA.VehicleSeatColorID)
	WHERE     (AS400.C2REGN_RegionCode NOT IN ('CS', 'NL') ) and  AS400.C2IVST_InventoryStatus <> 'HI' 



GO
/****** Object:  View [dbo].[vw_user_company_aff]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_user_company_aff]
AS
SELECT     dbo.vw_active_plan.PlanPID, dbo.vw_active_plan.PlanTypePID, dbo.vw_active_plan.PlanName, dbo.vw_active_plan.PlanDescription, 
                      profile.PlanSponsors.RelationPID, profile.PlanSponsors.PinLimit, profile.CompanyRelation.RelationID, profile.CompanyRelation.RelationDesc, 
                      profile.T_Company.companyPID, profile.T_Company.companyName, profile.T_Company.GlobalID, profile.T_Company.companyRelation, 
                      profile.T_Company.companyID
FROM         dbo.vw_active_plan INNER JOIN
                      profile.PlanSponsors ON dbo.vw_active_plan.PlanPID = profile.PlanSponsors.PlanPID INNER JOIN
                      profile.CompanyRelation ON profile.PlanSponsors.RelationPID = profile.CompanyRelation.RelationPID INNER JOIN
                      profile.T_Company ON profile.CompanyRelation.RelationPID = profile.T_Company.companyRelation
GO
/****** Object:  View [dbo].[vw_PinCreatedBy]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_PinCreatedBy]
AS
SELECT     PIN.PinDetail.PinCode, profile.T_Profile.FirstName, profile.T_Profile.LastName, profile.T_User.UserID, PIN.PinDetail.SponsorPID, profile.T_Company.companyPID, 
                      profile.T_Company.companyRelation, profile.T_Company.companyName, profile.T_Company.companyID
FROM         profile.T_User INNER JOIN
                      profile.T_Profile ON profile.T_User.GlobalID = profile.T_Profile.GlobalRefID INNER JOIN
                      PIN.PinDetail ON profile.T_User.UserPID = PIN.PinDetail.SponsorPID INNER JOIN
                      profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID AND profile.T_User.companyPID = profile.T_Company.companyPID
GO
/****** Object:  View [dbo].[vw_UserProfile]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_UserProfile]
AS
SELECT     profile.T_Company.companyPID, profile.T_Company.companyRelation, profile.T_Company.companyName, profile.Role_User.UserPID AS Expr1, 
                      profile.T_Profile.GlobalRefID, profile.T_Profile.FirstName, profile.T_Profile.LastName, profile.T_Profile.Email, profile.T_User.UserID, 
                      profile.T_User.Password, profile.Roles.Role, profile.Roles.Description
FROM         profile.Role_User INNER JOIN
                      profile.T_User ON profile.Role_User.UserPID = profile.T_User.UserPID INNER JOIN
                      profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID INNER JOIN
                      profile.T_Profile ON profile.T_User.GlobalID = profile.T_Profile.GlobalRefID INNER JOIN
                      profile.Roles ON profile.Role_User.Role_PID = profile.Roles.Role_PID
GO
/****** Object:  View [dbo].[vw_Company_Relation]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Company_Relation]
AS
SELECT     profile.T_Company.companyPID, profile.T_Company.GlobalID, profile.T_Company.companyID, profile.T_Company.companyRelation, 
                      profile.CompanyRelation.RelationDesc
FROM         profile.T_Company INNER JOIN
                      profile.CompanyRelation ON profile.T_Company.companyRelation = profile.CompanyRelation.RelationPID

GO
/****** Object:  UserDefinedFunction [dbo].[fnHCircle_SAPGetTrims]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: select * from [dbo].[fnHCircle_SAPGetTrims] (null,2013)
-- =============================================
CREATE FUNCTION [dbo].[fnHCircle_SAPGetTrims] ( 
@VehicleMapID varchar(100),
@Year int
 )
RETURNS TABLE
AS
RETURN
    ( SELECT  distinct 
                left(A.ModelCode,1) as MapVehiclePID,               
                'MapModelCodePID' = case 
                when  left(A.ModelCode,1) ='E' and 'S'=substring(A.TrimName,1,1) Then left(A.ModelCode,8) + '_01' 
                when  left(A.ModelCode,1) ='E' and 'U'=substring(A.TrimName,1,1) Then left(A.ModelCode,8) + '_02' 
                else left(A.ModelCode,8) 
                end,			
                A.VehicleYear,
                'VehicleName' = case @VehicleMapID
                when 'G' then 'Sonata Hybrid'
                else A.VehicleName
                end,
                A.PowertrainName as TrimName
      FROM      hyundaiusa.dbo.vw_GetVehicleInfoBySapModelCode (NOLOCK) A
			   INNER JOIN dbo.udf_Split(    (case when @VehicleMapID IN('6,J')then '6,J' 
											 else @VehicleMapID end),',') B
       ON left(A.ModelCode,1)=B.Value   OR @VehicleMapID is null
      WHERE    (VehicleYear=@Year OR @Year = 0) 
  )



GO
/****** Object:  Table [AS400].[MDKCHP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MDKCHP](
	[E1PRGM] [nvarchar](7) NULL,
	[E1REGN] [nvarchar](2) NULL,
	[E1RETA] [numeric](3, 0) NULL,
	[E1MIN1] [numeric](5, 0) NULL,
	[E1MAX1] [numeric](5, 0) NULL,
	[E1MIN2] [numeric](5, 0) NULL,
	[E1MAX2] [numeric](5, 0) NULL,
	[E1MIN3] [numeric](5, 0) NULL,
	[E1MAX3] [numeric](5, 0) NULL,
	[E1MIN4] [numeric](5, 0) NULL,
	[E1MAX4] [numeric](5, 0) NULL,
	[E1MIN5] [numeric](5, 0) NULL,
	[E1MAX5] [numeric](5, 0) NULL,
	[E1MIN6] [numeric](5, 0) NULL,
	[E1MAX6] [numeric](5, 0) NULL,
	[E1MIN7] [numeric](5, 0) NULL,
	[E1MAX7] [numeric](5, 0) NULL,
	[E1MIN8] [numeric](5, 0) NULL,
	[E1MAX8] [numeric](5, 0) NULL,
	[E1MIN9] [numeric](5, 0) NULL,
	[E1MAX9] [numeric](5, 0) NULL,
	[E1MINA] [numeric](5, 0) NULL,
	[E1MAXA] [numeric](5, 0) NULL,
	[E1MINB] [numeric](5, 0) NULL,
	[E1MAXB] [numeric](5, 0) NULL,
	[E1MINC] [numeric](5, 0) NULL,
	[E1MAXC] [numeric](5, 0) NULL,
	[E1MIND] [numeric](5, 0) NULL,
	[E1MAXD] [numeric](5, 0) NULL,
	[E1MINE] [numeric](5, 0) NULL,
	[E1MAXE] [numeric](5, 0) NULL,
	[E1MINF] [numeric](5, 0) NULL,
	[E1MAXF] [numeric](5, 0) NULL,
	[E1MING] [numeric](5, 0) NULL,
	[E1MAXG] [numeric](5, 0) NULL,
	[E1RCDT] [numeric](8, 0) NULL,
	[E1DLUP] [numeric](8, 0) NULL,
	[E1TIME] [numeric](6, 0) NULL,
	[E1USER] [nvarchar](10) NULL,
	[E1RUSR] [nvarchar](10) NULL,
	[E1TPGM] [nvarchar](10) NULL,
	[E1STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKDCRP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKDCRP](
	[A8PRGM] [nvarchar](7) NULL,
	[A8REGN] [nvarchar](2) NULL,
	[A8AMT1] [numeric](5, 0) NULL,
	[A8AMT2] [numeric](5, 0) NULL,
	[A8AMT3] [numeric](5, 0) NULL,
	[A8AMT4] [numeric](5, 0) NULL,
	[A8AMT5] [numeric](5, 0) NULL,
	[A8AMT6] [numeric](5, 0) NULL,
	[A8AMT7] [numeric](5, 0) NULL,
	[A8AMT8] [numeric](5, 0) NULL,
	[A8AMT9] [numeric](5, 0) NULL,
	[A8AMTA] [numeric](5, 0) NULL,
	[A8AMTB] [numeric](5, 0) NULL,
	[A8AMTC] [numeric](5, 0) NULL,
	[A8AMTD] [numeric](5, 0) NULL,
	[A8AMTE] [numeric](5, 0) NULL,
	[A8AMTF] [numeric](5, 0) NULL,
	[A8AMTG] [numeric](5, 0) NULL,
	[A8RCDT] [numeric](8, 0) NULL,
	[A8DLUP] [numeric](8, 0) NULL,
	[A8TIME] [numeric](6, 0) NULL,
	[A8USER] [nvarchar](10) NULL,
	[A8RUSR] [nvarchar](10) NULL,
	[A8TPGM] [nvarchar](10) NULL,
	[A8STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKDCSP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKDCSP](
	[D6PRGM] [nvarchar](7) NULL,
	[D6REGN] [nvarchar](2) NULL,
	[D6YRNE] [numeric](4, 0) NULL,
	[D6DFLT] [numeric](5, 0) NULL,
	[D6AMT1] [numeric](5, 0) NULL,
	[D6AMT2] [numeric](5, 0) NULL,
	[D6AMT3] [numeric](5, 0) NULL,
	[D6AMT4] [numeric](5, 0) NULL,
	[D6AMT5] [numeric](5, 0) NULL,
	[D6AMT6] [numeric](5, 0) NULL,
	[D6AMT7] [numeric](5, 0) NULL,
	[D6AMT8] [numeric](5, 0) NULL,
	[D6AMT9] [numeric](5, 0) NULL,
	[D6AMTA] [numeric](5, 0) NULL,
	[D6AMTB] [numeric](5, 0) NULL,
	[D6AMTC] [numeric](5, 0) NULL,
	[D6AMTD] [numeric](5, 0) NULL,
	[D6AMTE] [numeric](5, 0) NULL,
	[D6AMTF] [numeric](5, 0) NULL,
	[D6AMTG] [numeric](5, 0) NULL,
	[D6RCDT] [numeric](8, 0) NULL,
	[D6DLUP] [numeric](8, 0) NULL,
	[D6TIME] [numeric](6, 0) NULL,
	[D6USER] [nvarchar](10) NULL,
	[D6RUSR] [nvarchar](10) NULL,
	[D6TPGM] [nvarchar](10) NULL,
	[D6STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKDCTP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKDCTP](
	[D7PRGM] [nvarchar](7) NULL,
	[D7REGN] [nvarchar](2) NULL,
	[D7YRNE] [numeric](4, 0) NULL,
	[D7SER2] [nvarchar](1) NULL,
	[D7AMT1] [numeric](5, 0) NULL,
	[D7AMT2] [numeric](5, 0) NULL,
	[D7AMT3] [numeric](5, 0) NULL,
	[D7AMT4] [numeric](5, 0) NULL,
	[D7AMT5] [numeric](5, 0) NULL,
	[D7AMT6] [numeric](5, 0) NULL,
	[D7AMT7] [numeric](5, 0) NULL,
	[D7AMT8] [numeric](5, 0) NULL,
	[D7AMT9] [numeric](5, 0) NULL,
	[D7AMTA] [numeric](5, 0) NULL,
	[D7AMTB] [numeric](5, 0) NULL,
	[D7AMTC] [numeric](5, 0) NULL,
	[D7AMTD] [numeric](5, 0) NULL,
	[D7AMTE] [numeric](5, 0) NULL,
	[D7AMTF] [numeric](5, 0) NULL,
	[D7AMTG] [numeric](5, 0) NULL,
	[D7RCDT] [numeric](8, 0) NULL,
	[D7DLUP] [numeric](8, 0) NULL,
	[D7TIME] [numeric](6, 0) NULL,
	[D7USER] [nvarchar](10) NULL,
	[D7RUSR] [nvarchar](10) NULL,
	[D7TPGM] [nvarchar](10) NULL,
	[D7STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKEMDP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKEMDP](
	[A5PRGM] [nvarchar](7) NULL,
	[A5YRNE] [numeric](4, 0) NULL,
	[A5SER2] [nvarchar](1) NULL,
	[A5FMLY] [nvarchar](1) NULL,
	[A5DOOR] [nvarchar](1) NULL,
	[A5TRIM] [nvarchar](1) NULL,
	[A5TRAN] [nvarchar](1) NULL,
	[A5DRVN] [nvarchar](1) NULL,
	[A5ENGT] [nvarchar](1) NULL,
	[A5CSFG] [nvarchar](1) NULL,
	[A5CATG] [nvarchar](1) NULL,
	[A5RCDT] [numeric](8, 0) NULL,
	[A5DLUP] [numeric](8, 0) NULL,
	[A5TIME] [numeric](6, 0) NULL,
	[A5USER] [nvarchar](10) NULL,
	[A5RUSR] [nvarchar](10) NULL,
	[A5TPGM] [nvarchar](10) NULL,
	[A5STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKERVP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKERVP](
	[A6PRGM] [nvarchar](7) NULL,
	[A6TYPE] [nvarchar](1) NULL,
	[A6DATA] [nvarchar](5) NULL,
	[A6INEX] [nvarchar](1) NULL,
	[A6PAID] [nvarchar](1) NULL,
	[A6YRN1] [numeric](4, 0) NULL,
	[A6YRN2] [numeric](4, 0) NULL,
	[A6YRN3] [numeric](4, 0) NULL,
	[A6RCDT] [numeric](8, 0) NULL,
	[A6DLUP] [numeric](8, 0) NULL,
	[A6TIME] [numeric](6, 0) NULL,
	[A6USER] [nvarchar](10) NULL,
	[A6RUSR] [nvarchar](10) NULL,
	[A6TPGM] [nvarchar](10) NULL,
	[A6STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [AS400].[MKPGMP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AS400].[MKPGMP](
	[A4PRGM] [nvarchar](7) NULL,
	[A4ETYP] [nvarchar](1) NULL,
	[A4OPEN] [nvarchar](1) NULL,
	[A4BDTE] [numeric](8, 0) NULL,
	[A4ENDE] [numeric](8, 0) NULL,
	[A4RDRE] [numeric](8, 0) NULL,
	[A4NAME] [nvarchar](25) NULL,
	[A4RFG1] [nvarchar](1) NULL,
	[A4RFG2] [nvarchar](1) NULL,
	[A4RFG3] [nvarchar](1) NULL,
	[A4RFG4] [nvarchar](1) NULL,
	[A4RFG5] [nvarchar](1) NULL,
	[A4RFG6] [nvarchar](1) NULL,
	[A4RFG7] [nvarchar](1) NULL,
	[A4RFG8] [nvarchar](1) NULL,
	[A4RFG9] [nvarchar](1) NULL,
	[A4RFGA] [nvarchar](1) NULL,
	[A4RFGB] [nvarchar](1) NULL,
	[A4RFGC] [nvarchar](1) NULL,
	[A4RFGD] [nvarchar](1) NULL,
	[A4RFGE] [nvarchar](1) NULL,
	[A4RFGF] [nvarchar](1) NULL,
	[A4RFGG] [nvarchar](1) NULL,
	[A4RFGH] [nvarchar](1) NULL,
	[A4RFGI] [nvarchar](1) NULL,
	[A4SIDE] [nvarchar](1) NULL,
	[A4PRCD] [numeric](8, 0) NULL,
	[A4PCDC] [numeric](8, 0) NULL,
	[A4PCDV] [numeric](8, 0) NULL,
	[A4CONB] [numeric](7, 0) NULL,
	[A4CUPN] [nvarchar](1) NULL,
	[A4CODT] [numeric](8, 0) NULL,
	[A4ARDT] [numeric](8, 0) NULL,
	[A4PAYA] [numeric](7, 0) NULL,
	[A4CNFM] [nvarchar](1) NULL,
	[A4SVLS] [nvarchar](1) NULL,
	[A4LEAS] [nvarchar](1) NULL,
	[A4USDS] [nvarchar](1) NULL,
	[A4OVRD] [nvarchar](1) NULL,
	[A4RAND] [nvarchar](1) NULL,
	[A4TST1] [nvarchar](6) NULL,
	[A4TST2] [nvarchar](6) NULL,
	[A4TST3] [nvarchar](6) NULL,
	[A4TST4] [nvarchar](6) NULL,
	[A4CRT1] [nvarchar](1) NULL,
	[A4CRT2] [nvarchar](1) NULL,
	[A4CRT3] [nvarchar](1) NULL,
	[A4CRT4] [nvarchar](1) NULL,
	[A4CRT5] [nvarchar](1) NULL,
	[A4CRT6] [nvarchar](1) NULL,
	[A4CRT7] [nvarchar](1) NULL,
	[A4RCTL] [nvarchar](1) NULL,
	[A4EATR] [nvarchar](1) NULL,
	[A4RCDT] [numeric](8, 0) NULL,
	[A4DLUP] [numeric](8, 0) NULL,
	[A4TIME] [numeric](6, 0) NULL,
	[A4USER] [nvarchar](10) NULL,
	[A4RUSR] [nvarchar](10) NULL,
	[A4TPGM] [nvarchar](10) NULL,
	[A4STAF] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[AS400ToPackageNoOptionLookup]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[AS400ToPackageNoOptionLookup](
	[DCSPackageCode] [nvarchar](4) NOT NULL,
	[VehicleID] [nvarchar](100) NOT NULL,
	[VehicleModelCodeID] [nvarchar](100) NOT NULL,
	[VehicleEngineID] [nvarchar](100) NOT NULL,
	[VehicleTransmissionID] [nvarchar](100) NOT NULL,
	[VehiclePackageID] [nvarchar](200) NOT NULL,
	[PackageName] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[BadColorName]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[BadColorName](
	[AutoID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[PinVehicleLimit]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[PinVehicleLimit](
	[PinVehicleLimitID] [int] IDENTITY(1,1) NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[ModelGroupCode] [varchar](4) NOT NULL,
	[ModelYear] [int] NOT NULL,
	[PinLimit] [int] NOT NULL,
	[LimitType] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PinVehicleLimitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[SAPVehicleExclusions]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[SAPVehicleExclusions](
	[ExclusionPID] [int] IDENTITY(1,1) NOT NULL,
	[ExclusionTypePID] [int] NULL,
	[VehicleName] [nvarchar](50) NULL,
	[VehicleId] [nvarchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[VehiclePackageId] [nvarchar](100) NOT NULL,
	[VehicleModelCodeId] [nvarchar](100) NOT NULL,
	[modelYear] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VehicleAccessory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VehicleAccessory](
	[ModelCode] [varchar](50) NOT NULL,
	[ModelYear] [varchar](4) NOT NULL,
	[AccessoryCode] [varchar](10) NOT NULL,
	[Desc] [varchar](200) NOT NULL,
	[DescCode] [varchar](213) NULL,
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_VehicleAccessory] PRIMARY KEY CLUSTERED 
(
	[ModelCode] ASC,
	[ModelYear] ASC,
	[AccessoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Byo].[VehicleType]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Byo].[VehicleType](
	[VehicleTypeId] [nvarchar](100) NOT NULL,
	[VehicleTypeName] [nvarchar](100) NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[CultureName] [nchar](5) NOT NULL,
 CONSTRAINT [PK_VehicleType_1] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntiCorruptionWebsiteAccess]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntiCorruptionWebsiteAccess](
	[AntiCorruptionID] [int] IDENTITY(1,1) NOT NULL,
	[UserPID] [int] NULL,
	[UserID] [varchar](255) NULL,
	[AcceptOrCancel] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AntiCorruptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AS400PackageLookup]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AS400PackageLookup](
	[AutoPackageID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ModelYear] [varchar](4) NULL,
	[SERIES] [char](1) NULL,
	[TRIM] [char](1) NULL,
	[DOOR] [char](1) NULL,
	[TRANCODE] [char](1) NULL,
	[ACC_GROUP] [char](2) NULL,
	[PKG_CODE] [char](2) NULL,
	[PackageName] [varchar](200) NULL,
	[MODEL] [varchar](200) NULL,
 CONSTRAINT [PK_AS400PackageLookup] PRIMARY KEY CLUSTERED 
(
	[AutoPackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealerCashException]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealerCashException](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ProgramCode] [varchar](10) NULL,
	[Type] [varchar](2) NULL,
	[Data] [nvarchar](255) NULL,
	[Incl Flag] [bit] NOT NULL,
	[ModelYear1] [varchar](4) NULL,
	[ModelYear2] [varchar](4) NULL,
	[ModelYear3] [varchar](4) NULL,
 CONSTRAINT [PK_DealerCashException] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealerCashRegular]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealerCashRegular](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ProgramCode] [nvarchar](10) NULL,
	[Region] [nvarchar](255) NULL,
	[Start Date] [datetime] NULL,
	[End Date] [datetime] NULL,
	[ModelYear] [nvarchar](255) NULL,
	[Series] [nvarchar](255) NULL,
	[ModelCode] [nvarchar](255) NULL,
	[Amount] [money] NULL,
 CONSTRAINT [PK_DealerCashRegular] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquivalentColor]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalentColor](
	[ExteriorID] [nvarchar](50) NULL,
	[ColorDesc] [nvarchar](100) NULL,
	[modelCode] [nvarchar](50) NULL,
	[VehicleYear] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquivalentModelCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalentModelCode](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[EquivalentModelCodeID] [varchar](200) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_EquivalentModelCode] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquivalentPackage]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalentPackage](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[ModelCode] [nvarchar](20) NULL,
	[ACCCode] [varchar](10) NULL,
	[AccGroupCode] [varchar](10) NULL,
	[Year] [varchar](4) NULL,
	[OrgVehiclePackageID] [varchar](20) NULL,
	[CorrectVehiclePackageID] [varchar](20) NULL,
	[isExcluded] [bit] NOT NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquivalentRegionModelCode]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalentRegionModelCode](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[VehicleMapID] [varchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_EquivalentRegionModelCode] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fulldumpVIN_delete]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fulldumpVIN_delete](
	[VIN] [nvarchar](255) NULL,
	[WS Status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FullVin_Delete]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FullVin_Delete](
	[Cl#] [float] NULL,
	[Region Code CUR/Ret] [varchar](255) NULL,
	[World MFG ID] [varchar](255) NULL,
	[VMSERI] [varchar](255) NULL,
	[Trim Level Code] [varchar](255) NULL,
	[Body Style] [float] NULL,
	[Restraint] [varchar](255) NULL,
	[Engine Size] [varchar](255) NULL,
	[Check Digit] [float] NULL,
	[Model Year] [varchar](255) NULL,
	[Plant Code] [varchar](255) NULL,
	[Short Vin-Ser NO] [float] NULL,
	[HMC Vin NO] [varchar](255) NULL,
	[Factory VEH Spec] [varchar](255) NULL,
	[Year-Centry Code] [float] NULL,
	[Short VIN - Year] [float] NULL,
	[Short VIN -Series] [float] NULL,
	[Short VIN -Family] [float] NULL,
	[Short VIN -Door] [float] NULL,
	[Short VIN -Trim] [float] NULL,
	[Short VIN -Trans] [float] NULL,
	[Accessory Group] [varchar](255) NULL,
	[HMA Ext Color] [varchar](255) NULL,
	[HMA Int Color] [varchar](255) NULL,
	[Cal Spec Flag] [float] NULL,
	[Engine Number] [varchar](255) NULL,
	[Factory Inst 1] [varchar](255) NULL,
	[Factory Inst 2] [varchar](255) NULL,
	[Factory Inst 3] [varchar](255) NULL,
	[Factory Inst 5] [varchar](255) NULL,
	[Factory Inst 6] [varchar](255) NULL,
	[Factory Inst 7] [varchar](255) NULL,
	[Factory Inst 71] [varchar](255) NULL,
	[Factory Inst 8] [varchar](255) NULL,
	[Factory Inst 9] [varchar](255) NULL,
	[Factory Inst 10] [varchar](255) NULL,
	[Factory Inst 11] [varchar](255) NULL,
	[Factory Inst 12] [varchar](255) NULL,
	[Factory Inst 13] [varchar](255) NULL,
	[Factory Inst 14] [varchar](255) NULL,
	[Factory Inst 15] [varchar](255) NULL,
	[Factory Inst 16] [varchar](255) NULL,
	[Factory Inst 17] [varchar](255) NULL,
	[Factory Inst 18] [varchar](255) NULL,
	[Factory Inst 19] [varchar](255) NULL,
	[Factory Inst 20] [varchar](255) NULL,
	[Frt-Load PIO 1] [varchar](255) NULL,
	[Frt-Load PIO 2] [varchar](255) NULL,
	[Frt-Load PIO 3] [varchar](255) NULL,
	[Frt-Load PIO 4] [varchar](255) NULL,
	[Frt-Load PIO 5] [varchar](255) NULL,
	[Frt-Load PIO 6] [varchar](255) NULL,
	[Frt-Load PIO 7] [varchar](255) NULL,
	[Frt-Load PIO 8] [varchar](255) NULL,
	[Frt-Load PIO 9] [varchar](255) NULL,
	[Frt-Load PIO 10] [varchar](255) NULL,
	[Frt-Load Sts 1] [varchar](255) NULL,
	[Frt-Load Sts 2] [varchar](255) NULL,
	[Frt-Load Sts 3] [varchar](255) NULL,
	[Frt-Load Sts 4] [varchar](255) NULL,
	[Frt-Load Sts 5] [varchar](255) NULL,
	[Frt-Load Sts 6] [varchar](255) NULL,
	[Frt-Load Sts 7] [varchar](255) NULL,
	[Frt-Load Sts 8] [varchar](255) NULL,
	[Frt-Load Sts 9] [varchar](255) NULL,
	[Frt-Load Sts 10] [varchar](255) NULL,
	[Port Instl OPT 1] [varchar](255) NULL,
	[Port Instl OPT 2] [varchar](255) NULL,
	[Port Instl OPT 3] [varchar](255) NULL,
	[Port Instl OPT 4] [varchar](255) NULL,
	[Port Instl OPT 5] [varchar](255) NULL,
	[Port Instl OPT 6] [varchar](255) NULL,
	[Port Instl OPT 7] [varchar](255) NULL,
	[Port Instl OPT 8] [varchar](255) NULL,
	[Port Instl OPT 9] [varchar](255) NULL,
	[Port Instl OPT 10] [varchar](255) NULL,
	[Port Instl Sts 1] [varchar](255) NULL,
	[Port Instl Sts 2] [varchar](255) NULL,
	[Port Instl Sts 3] [varchar](255) NULL,
	[Port Instl Sts 4] [varchar](255) NULL,
	[Port Instl Sts 5] [varchar](255) NULL,
	[Port Instl Sts 6] [varchar](255) NULL,
	[Port Instl Sts 7] [varchar](255) NULL,
	[Port Instl Sts 8] [varchar](255) NULL,
	[Port Instl Sts 9] [varchar](255) NULL,
	[Port Instl Sts 10] [varchar](255) NULL,
	[Factory Price CO] [varchar](255) NULL,
	[Fleet Flag/Current] [varchar](255) NULL,
	[Regional Fleet Flag] [varchar](255) NULL,
	[Company Car Flag] [varchar](255) NULL,
	[Port Current/All#] [varchar](255) NULL,
	[District] [varchar](255) NULL,
	[Dealer Code CUR/RET] [varchar](255) NULL,
	[Inventory Status] [varchar](255) NULL,
	[Inventory Hold FG-N] [varchar](255) NULL,
	[Inventory Hold FG-R] [varchar](255) NULL,
	[Whlsale Price Eff#DT] [float] NULL,
	[Inland Transport Fg] [varchar](255) NULL,
	[P#O#Port Entry] [varchar](255) NULL,
	[Location Port] [varchar](255) NULL,
	[Water Port] [varchar](255) NULL,
	[Customs Flag] [varchar](255) NULL,
	[Purified Date] [float] NULL,
	[Arrival Date] [float] NULL,
	[Stop Sale Flag] [varchar](255) NULL,
	[Stop Sale Comp-Date] [float] NULL,
	[In-Process Flag] [varchar](255) NULL,
	[In-Process Date] [float] NULL,
	[In-Process Time] [float] NULL,
	[Special Inst 1] [varchar](255) NULL,
	[Special Inst 2] [varchar](255) NULL,
	[Tender Date] [float] NULL,
	[Tender Time] [float] NULL,
	[In-Transit Date] [float] NULL,
	[In-Transit Time] [float] NULL,
	[In-Transit Time AMPM] [varchar](255) NULL,
	[Ship To Dealer] [varchar](255) NULL,
	[Dropship Addr 1] [varchar](255) NULL,
	[Dropship Addr 2] [varchar](255) NULL,
	[Dropship Addr 3] [varchar](255) NULL,
	[VMSTDC] [varchar](255) NULL,
	[VMSTDS] [varchar](255) NULL,
	[Diplomat Veh Flag] [varchar](255) NULL,
	[Reg Reserve Flag] [varchar](255) NULL,
	[Reg Res Allo-Flag] [varchar](255) NULL,
	[Allo# In Process] [varchar](255) NULL,
	[Allo# Run Num] [varchar](255) NULL,
	[Allo# Region] [varchar](255) NULL,
	[Allo# Confirm Fg] [varchar](255) NULL,
	[Commit Date] [float] NULL,
	[Base Price D-Cost] [float] NULL,
	[Base Price-MSRP] [float] NULL,
	[Tot Fac#Acc D-Cost] [float] NULL,
	[Tot Fac#Acc-MSRP] [float] NULL,
	[Tor PIO Dealer Cost] [float] NULL,
	[Tot PIO MSRP] [float] NULL,
	[Freight Charge] [float] NULL,
	[Advertsing Cost] [float] NULL,
	[Other Charge] [float] NULL,
	[Cash Draft Flag] [varchar](255) NULL,
	[Cash Draft Dealer] [varchar](255) NULL,
	[Cash Draft Date] [float] NULL,
	[Wholesale Flag] [varchar](255) NULL,
	[Wholesale Date] [float] NULL,
	[Wholesale Ret-F] [varchar](255) NULL,
	[Returned Dealer] [varchar](255) NULL,
	[Wholesale Ret-Dt] [float] NULL,
	[Demo Type Code] [varchar](255) NULL,
	[Demo Date] [float] NULL,
	[Date Sold] [float] NULL,
	[Retail Flag] [varchar](255) NULL,
	[Date Retailed] [float] NULL,
	[Total Memo PIO] [varchar](255) NULL,
	[Create Date] [float] NULL,
	[Create User ID] [varchar](255) NULL,
	[Create Program] [varchar](255) NULL,
	[Update Date] [float] NULL,
	[Update User ID] [varchar](255) NULL,
	[Update Program] [varchar](255) NULL,
	[Sequence Number] [float] NULL,
	[Download Flag] [varchar](255) NULL,
	[Download Timestamp] [varchar](255) NULL,
	[Short VIN -Drive Train] [varchar](255) NULL,
	[Short VIN -Engine Type] [float] NULL,
	[Short VIN -Emission] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FullVinDump]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FullVinDump](
	[VinNumber] [nvarchar](255) NULL,
	[RecordStateName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCECash]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCECash](
	[ModelYear] [nvarchar](255) NULL,
	[Series] [nvarchar](255) NULL,
	[Trim] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Amount] [float] NULL,
	[Model] [nvarchar](255) NULL,
	[ExcludeModel] [bit] NOT NULL,
	[State] [nvarchar](255) NULL,
	[ExcludeState] [bit] NOT NULL,
	[Dealer] [nvarchar](255) NULL,
	[ExcludeDealer] [bit] NULL,
	[StateOnly] [bit] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ProgramNumber] [int] NULL,
	[ProgramName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs_ImportInventory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs_ImportInventory](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ErrorMessage] [varchar](3000) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Logs_ImportInventory] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelCodeMap]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelCodeMap](
	[Model Year] [varchar](50) NULL,
	[Old Model Code] [varchar](50) NULL,
	[New Model Code] [varchar](255) NULL,
	[1st Five Change] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSRPModification]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSRPModification](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ModelCodeID] [nchar](10) NULL,
	[ColorID] [varchar](20) NULL,
	[ModelYear] [int] NULL,
	[Amount] [money] NULL,
 CONSTRAINT [PK_MSRPModification] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanFilterCondition]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanFilterCondition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](225) NOT NULL,
	[Value] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramRuleAndFAQFiles]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramRuleAndFAQFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[ProgramRuleFile] [varbinary](max) NULL,
	[FAQFile] [varbinary](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_PROGRAMRULE_FAQ_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PZEV_Packages]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PZEV_Packages](
	[AutoID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OrgVehicleModelCodeID] [varchar](10) NULL,
	[OrgPackageID] [varchar](50) NULL,
	[PZEVVehicleModelCodeID] [varchar](10) NULL,
	[SearchPackageID] [varchar](50) NULL,
	[Year] [varchar](4) NULL,
 CONSTRAINT [PK_PZEV_Packages] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelationshipFilterCondition]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelationshipFilterCondition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](225) NOT NULL,
	[Value] [varchar](1000) NULL,
 CONSTRAINT [PK_RelationshipFilterCondition_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesCalendarDate]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesCalendarDate](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Used Pin Report 2010_2011$]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Used Pin Report 2010_2011$](
	[Type] [nvarchar](255) NULL,
	[PinCode] [nvarchar](255) NULL,
	[DealerCode] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Firstname] [nvarchar](255) NULL,
	[VIN] [nvarchar](255) NULL,
	[SaleDate] [datetime] NULL,
	[IssueDate] [datetime] NULL,
	[VehicleName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VinDealerBasedCost]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinDealerBasedCost](
	[AutoID] [int] NOT NULL,
	[InsertedDate] [varchar](50) NULL,
	[FullVin] [varchar](50) NULL,
	[BaseCost] [varchar](50) NULL,
 CONSTRAINT [PK_VinDealerBasedCost] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VINMAsTER_TEMP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VINMAsTER_TEMP](
	[C2FVIN_FullVIN] [varchar](17) NOT NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](max) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehicleInteriorColorID] [varchar](10) NULL,
	[VehiclePackageID] [varchar](20) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[PriceModification] [money] NULL,
	[VehicleSeatColorID] [varchar](30) NULL,
	[year] [varchar](4) NULL,
	[C2EXCD] [decimal](7, 2) NULL,
	[C2EXCM] [decimal](7, 2) NULL,
	[C2INCD] [decimal](7, 2) NULL,
	[C2INCM] [decimal](7, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VINMasterFromERP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VINMasterFromERP](
	[C2FVIN] [char](17) NOT NULL,
	[C2REGN] [char](2) NULL,
	[C2WMID] [char](3) NULL,
	[C2SERI] [char](1) NULL,
	[C2TRML] [char](1) NULL,
	[C2BDYS] [char](1) NULL,
	[C2REST] [char](1) NULL,
	[C2ENGS] [char](1) NULL,
	[C2CKDG] [char](1) NULL,
	[C2MDLY] [char](1) NULL,
	[C2PLTC] [char](1) NULL,
	[C2SERN] [decimal](7, 0) NULL,
	[C2SPEC] [char](20) NULL,
	[C2CTNE] [char](2) NULL,
	[C2YRNE] [char](2) NULL,
	[C2SER2] [char](1) NULL,
	[C2FMLY] [char](1) NULL,
	[C2DOOR] [char](1) NULL,
	[C2TRIM] [char](1) NULL,
	[C2TRAN] [char](1) NULL,
	[C2ACCE] [char](2) NULL,
	[C2EXCL] [char](3) NULL,
	[C2INCL] [char](3) NULL,
	[C2CSFG] [char](2) NULL,
	[C2ENGN] [char](15) NULL,
	[C2FA01] [char](2) NULL,
	[C2FA02] [char](2) NULL,
	[C2FA03] [char](2) NULL,
	[C2FA04] [char](2) NULL,
	[C2FA05] [char](2) NULL,
	[C2FA06] [char](2) NULL,
	[C2FA07] [char](2) NULL,
	[C2FA08] [char](2) NULL,
	[C2FA09] [char](2) NULL,
	[C2FA10] [char](2) NULL,
	[C2FA11] [char](2) NULL,
	[C2FA12] [char](2) NULL,
	[C2FA13] [char](2) NULL,
	[C2FA14] [char](2) NULL,
	[C2FA15] [char](2) NULL,
	[C2FA16] [char](2) NULL,
	[C2FA17] [char](2) NULL,
	[C2FA18] [char](2) NULL,
	[C2FA19] [char](2) NULL,
	[C2FA20] [char](2) NULL,
	[C2PA01] [char](2) NULL,
	[C2PA02] [char](2) NULL,
	[C2PA03] [char](2) NULL,
	[C2PA04] [char](2) NULL,
	[C2PA05] [char](2) NULL,
	[C2PA06] [char](2) NULL,
	[C2PA07] [char](2) NULL,
	[C2PA08] [char](2) NULL,
	[C2PA09] [char](2) NULL,
	[C2PA10] [char](2) NULL,
	[C2PB01] [char](1) NULL,
	[C2PB02] [char](1) NULL,
	[C2PB03] [char](1) NULL,
	[C2PB04] [char](1) NULL,
	[C2PB05] [char](1) NULL,
	[C2PB06] [char](1) NULL,
	[C2PB07] [char](1) NULL,
	[C2PB08] [char](1) NULL,
	[C2PB09] [char](1) NULL,
	[C2PB10] [char](1) NULL,
	[C2PC01] [char](2) NULL,
	[C2PC02] [char](2) NULL,
	[C2PC03] [char](2) NULL,
	[C2PC04] [char](2) NULL,
	[C2PC05] [char](2) NULL,
	[C2PC06] [char](2) NULL,
	[C2PC07] [char](2) NULL,
	[C2PC08] [char](2) NULL,
	[C2PC09] [char](2) NULL,
	[C2PC10] [char](2) NULL,
	[C2PD01] [char](1) NULL,
	[C2PD02] [char](1) NULL,
	[C2PD03] [char](1) NULL,
	[C2PD04] [char](1) NULL,
	[C2PD05] [char](1) NULL,
	[C2PD06] [char](1) NULL,
	[C2PD07] [char](1) NULL,
	[C2PD08] [char](1) NULL,
	[C2PD09] [char](1) NULL,
	[C2PD10] [char](1) NULL,
	[C2FACP] [char](1) NULL,
	[C2FLTC] [char](1) NULL,
	[C2RFTC] [char](1) NULL,
	[C2CMPC] [char](1) NULL,
	[C2PORT] [char](2) NULL,
	[C2DIST] [char](3) NULL,
	[C2DELR] [char](5) NULL,
	[C2IVST] [char](2) NULL,
	[C2NHFG] [char](1) NULL,
	[C2RHFG] [char](1) NULL,
	[C2WPDT] [decimal](8, 0) NULL,
	[C2ILDF] [char](1) NULL,
	[C2PPRT] [char](2) NULL,
	[C2LPRT] [char](2) NULL,
	[C2WPRT] [char](2) NULL,
	[C2CSTF] [char](1) NULL,
	[C2PURD] [decimal](8, 0) NULL,
	[C2ARDT] [decimal](8, 0) NULL,
	[C2SSLF] [char](1) NULL,
	[C2SSCD] [decimal](8, 0) NULL,
	[C2IPRF] [char](1) NULL,
	[C2INPD] [decimal](8, 0) NULL,
	[C2INPT] [decimal](6, 0) NULL,
	[C2SIN1] [char](30) NULL,
	[C2SIN2] [char](30) NULL,
	[C2TNDD] [decimal](8, 0) NULL,
	[C2TNDT] [decimal](6, 0) NULL,
	[C2INTD] [decimal](8, 0) NULL,
	[C2INTT] [decimal](6, 0) NULL,
	[C2INTF] [char](1) NULL,
	[C2STDL] [char](5) NULL,
	[C2STD1] [char](30) NULL,
	[C2STD2] [char](30) NULL,
	[C2STD3] [char](30) NULL,
	[C2STDC] [char](20) NULL,
	[C2STDS] [char](2) NULL,
	[C2DPVF] [char](1) NULL,
	[C2RRFG] [char](1) NULL,
	[C2ARRF] [char](1) NULL,
	[C2AIPF] [char](1) NULL,
	[C2ALRN] [char](6) NULL,
	[C2ALRG] [char](2) NULL,
	[C2ALCC] [char](1) NULL,
	[C2COMD] [decimal](8, 0) NULL,
	[C2FOBP] [decimal](13, 2) NULL,
	[C2MSRP] [decimal](13, 2) NULL,
	[C2ACST] [decimal](13, 2) NULL,
	[C2FACM] [decimal](13, 2) NULL,
	[C2PIOD] [decimal](13, 2) NULL,
	[C2PIOM] [decimal](13, 2) NULL,
	[C2FRTC] [decimal](13, 2) NULL,
	[C2COST] [decimal](13, 2) NULL,
	[C2OCHG] [decimal](13, 2) NULL,
	[C2CSHD] [char](1) NULL,
	[C2CDDL] [char](5) NULL,
	[C2CDDT] [decimal](8, 0) NULL,
	[C2WHSF] [char](1) NULL,
	[C2WSDT] [decimal](8, 0) NULL,
	[C2WRTN] [char](1) NULL,
	[C2RDLR] [char](5) NULL,
	[C2RTND] [decimal](8, 0) NULL,
	[C2DEMO] [char](1) NULL,
	[C2DMDT] [decimal](8, 0) NULL,
	[C2DSLD] [decimal](8, 0) NULL,
	[C2RETL] [char](1) NULL,
	[C2RNRD] [decimal](8, 0) NULL,
	[C2CDAT] [decimal](8, 0) NULL,
	[C2CUSR] [char](10) NULL,
	[C2CPGM] [char](10) NULL,
	[C2UDAT] [decimal](8, 0) NULL,
	[C2UUSR] [char](10) NULL,
	[C2UPGM] [char](10) NULL,
	[C2USEQ] [decimal](5, 0) NULL,
	[C2DFLG] [char](1) NULL,
	[C2DTMS] [char](26) NULL,
	[C2PIOR] [decimal](7, 2) NULL,
	[ProcessedTime] [datetime] NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[C2EXCD] [decimal](7, 2) NULL,
	[C2EXCM] [decimal](7, 2) NULL,
	[C2INCD] [decimal](7, 2) NULL,
	[C2INCM] [decimal](7, 2) NULL,
 CONSTRAINT [PK_Tb_ERP_VINMaster] PRIMARY KEY CLUSTERED 
(
	[C2FVIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dealer].[DealerExclusion]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dealer].[DealerExclusion](
	[DealerCode] [char](5) NOT NULL,
 CONSTRAINT [PK_DealerExclusion] PRIMARY KEY CLUSTERED 
(
	[DealerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dealer].[DealerInfo]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dealer].[DealerInfo](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[dealerCode] [char](5) NOT NULL,
	[region] [char](2) NOT NULL,
	[dealer_name] [nvarchar](100) NOT NULL,
	[address1] [nvarchar](100) NOT NULL,
	[address2] [nvarchar](100) NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [char](2) NOT NULL,
	[mailzip] [nvarchar](10) NULL,
	[zip] [nvarchar](10) NOT NULL,
	[sales_phone] [char](14) NULL,
	[sales_fax] [char](14) NULL,
	[owner] [nvarchar](100) NULL,
	[qq] [char](3) NOT NULL,
	[parts] [char](3) NULL,
	[app] [char](3) NULL,
	[template] [int] NULL,
	[dealer_url] [nvarchar](100) NULL,
	[dealer_email] [nvarchar](100) NULL,
	[locator] [int] NOT NULL,
	[salesdistrict] [nvarchar](10) NULL,
	[servicedistrict] [nvarchar](10) NULL,
	[datechanged] [datetime] NULL,
	[mailaddress1] [nvarchar](100) NULL,
	[mailaddress2] [nvarchar](100) NULL,
	[mailcity] [nvarchar](50) NULL,
	[mailstate] [char](2) NULL,
	[generalmanager] [nvarchar](100) NULL,
	[partsdistrict] [nvarchar](10) NULL,
	[dateoperation] [datetime] NULL,
	[typecode] [char](2) NULL,
	[srvloancar] [char](2) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[TextEmailDelAddress] [nvarchar](255) NULL,
	[XMLEmailDelAddress] [nvarchar](255) NULL,
	[DistanceFromPMADealer] [float] NULL,
	[TimeZoneID] [int] NULL,
	[qq_Password] [nvarchar](12) NULL,
	[qq_Participating] [int] NULL,
	[qq_dlremail] [nvarchar](255) NULL,
	[qq_secEmail] [nvarchar](255) NULL,
	[qq_thiEmail] [nvarchar](255) NULL,
	[qq_forthEmail] [nvarchar](255) NULL,
	[qq_fifthEmail] [nvarchar](255) NULL,
	[qq_ExpEnable] [tinyint] NULL,
	[qq_Expemail] [nvarchar](255) NULL,
	[qq_signature] [nvarchar](1500) NULL,
	[AUTO_EXPORT] [char](1) NULL,
	[lms_vendor_id] [int] NULL,
	[qq_TimeZone] [nvarchar](50) NULL,
	[qq_DLST] [int] NULL,
	[Dealer_CRM_Id] [nvarchar](60) NULL,
 CONSTRAINT [PK_DealerInfo_1] PRIMARY KEY CLUSTERED 
(
	[dealerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh].[HMA_SalesClosingCalender]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh].[HMA_SalesClosingCalender](
	[CALENDARID] [int] NOT NULL,
	[CALENDAR_DATE] [smalldatetime] NOT NULL,
	[JULIAN_DATE] [smalldatetime] NOT NULL,
	[CALENDAR_YEAR] [int] NOT NULL,
	[CALENDAR_MONTH] [int] NOT NULL,
	[CALENDAR_DAY] [int] NOT NULL,
	[DAY_OF_WEEK] [varchar](3) NOT NULL,
	[CALENDAR_QUARTER] [int] NOT NULL,
	[CALENDAR_SEQ_NUM] [int] NOT NULL,
	[SALES_PERIOD] [int] NOT NULL,
	[SALES_MONTH_END_FLAG] [int] NOT NULL,
	[SALES_YEAR] [int] NOT NULL,
	[SALES_MONTH] [int] NOT NULL,
	[MONTH_NAME] [varchar](30) NOT NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Inventory].[Tb_400_VWVM2P_VINMaster_AS400]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Inventory].[Tb_400_VWVM2P_VINMaster_AS400](
	[C2FVIN_FullVIN] [varchar](17) NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](2) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[OldModelCode] [varchar](10) NULL,
	[NewModelCode] [varchar](10) NULL,
	[year]  AS (CONVERT([varchar](2),[C2CTNE_YearCentryCode],(0))+CONVERT([varchar](2),[C2YRNE_ShortVINYear],(0))) PERSISTED
) ON [PRIMARY]
GO
/****** Object:  Table [mig].[HMGMAUSAUsersImport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[HMGMAUSAUsersImport](
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateID] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_HMGMAUSAUsersImport] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mig].[HMMAUSAUsersImport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[HMMAUSAUsersImport](
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateID] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_HMMAUSAUsersImport] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mig].[Tb_400_VWVM2P_VINMaster_Archive]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[Tb_400_VWVM2P_VINMaster_Archive](
	[AutoNumber] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[C2FVIN_FullVIN] [varchar](17) NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](2) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[StatusFlag] [char](1) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Tb_400_VWVM2P_VINMaster_Archive] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mig].[Tb_400_VWVM2P_VINMaster_BACKUP]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[Tb_400_VWVM2P_VINMaster_BACKUP](
	[C2FVIN_FullVIN] [varchar](17) NOT NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](2) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleModelCodeID] [varchar](10) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehiclePackageID] [varchar](10) NULL,
	[CreatedDate] [date] NULL,
	[C2EXCD] [decimal](7, 2) NULL,
	[C2EXCM] [decimal](7, 2) NULL,
	[C2INCD] [decimal](7, 2) NULL,
	[C2INCM] [decimal](7, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mig].[Tb_400_VWVM2P_VINMaster_FORBK]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[Tb_400_VWVM2P_VINMaster_FORBK](
	[C2FVIN_FullVIN] [varchar](17) NOT NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](max) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehiclePackageID] [varchar](20) NULL,
	[VehicleModelCodeID] [varchar](10) NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[Year] [varchar](4) NULL,
	[PriceModification] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mig].[Tb_400_VWVM2P_VINMaster_temp]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[Tb_400_VWVM2P_VINMaster_temp](
	[C2FVIN_FullVIN] [varchar](17) NOT NULL,
	[C2REGN_RegionCode] [varchar](2) NULL,
	[C2WMID_WorldMFGID] [varchar](3) NULL,
	[C2SERI_Series] [varchar](1) NULL,
	[C2TRML_TrimLevelCode] [varchar](1) NULL,
	[C2BDYS_BodyStyle] [varchar](1) NULL,
	[C2REST_Restraint] [varchar](1) NULL,
	[C2ENGS_EngineSize] [varchar](1) NULL,
	[C2CKDG_CheckDigit] [varchar](1) NULL,
	[C2MDLY_ModelYear] [varchar](1) NULL,
	[C2PLTC_PlantCode] [varchar](1) NULL,
	[C2SERN_ShortVinSerNO] [numeric](7, 0) NULL,
	[C2SPEC_HMCSpecCode] [varchar](20) NULL,
	[C2CTNE_YearCentryCode] [varchar](2) NULL,
	[C2YRNE_ShortVINYear] [varchar](max) NULL,
	[C2SER2_ShortVINSeries] [varchar](1) NULL,
	[C2FMLY_ShortVINFamily] [varchar](1) NULL,
	[C2DOOR_ShortVINDoor] [varchar](1) NULL,
	[C2TRIM_ShortVINTrim] [varchar](1) NULL,
	[C2TRAN_ShortVINTrans] [varchar](1) NULL,
	[C2ACCE_AccessoryGroup] [varchar](2) NULL,
	[C2EXCL_ExteriorClrHMA] [varchar](3) NULL,
	[C2INCL_InteriorClrHMA] [varchar](3) NULL,
	[C2CSFG_CalSpecFlag] [varchar](2) NULL,
	[C2ENGN_EngineNumber] [varchar](15) NULL,
	[C2FA01_FactoryInst1] [varchar](2) NULL,
	[C2FA02_FactoryInst2] [varchar](2) NULL,
	[C2FA03_FactoryInst3] [varchar](2) NULL,
	[C2FA04_FactoryInst5] [varchar](2) NULL,
	[C2FA05_FactoryInst6] [varchar](2) NULL,
	[C2FA06_FactoryInst7] [varchar](2) NULL,
	[C2FA07_FactoryInst7] [varchar](2) NULL,
	[C2FA08_FactoryInst8] [varchar](2) NULL,
	[C2FA09_FactoryInst9] [varchar](2) NULL,
	[C2FA10_FactoryInst10] [varchar](2) NULL,
	[C2FA11_FactoryInst11] [varchar](2) NULL,
	[C2FA12_FactoryInst12] [varchar](2) NULL,
	[C2FA13_FactoryInst13] [varchar](2) NULL,
	[C2FA14_FactoryInst14] [varchar](2) NULL,
	[C2FA15_FactoryInst15] [varchar](2) NULL,
	[C2FA16_FactoryInst16] [varchar](2) NULL,
	[C2FA17_FactoryInst17] [varchar](2) NULL,
	[C2FA18_FactoryInst18] [varchar](2) NULL,
	[C2FA19_FactoryInst19] [varchar](2) NULL,
	[C2FA20_FactoryInst20] [varchar](2) NULL,
	[C2PA01_FrtLoadPIO1] [varchar](2) NULL,
	[C2PA02_FrtLoadPIO2] [varchar](2) NULL,
	[C2PA03_FrtLoadPIO3] [varchar](2) NULL,
	[C2PA04_FrtLoadPIO4] [varchar](2) NULL,
	[C2PA05_FrtLoadPIO5] [varchar](2) NULL,
	[C2PA06_FrtLoadPIO6] [varchar](2) NULL,
	[C2PA07_FrtLoadPIO7] [varchar](2) NULL,
	[C2PA08_FrtLoadPIO8] [varchar](2) NULL,
	[C2PA09_FrtLoadPIO9] [varchar](2) NULL,
	[C2PA10_FrtLoadPIO10] [varchar](2) NULL,
	[C2PB01_FrtLoadSts1] [varchar](1) NULL,
	[C2PB02_FrtLoadSts2] [varchar](1) NULL,
	[C2PB03_FrtLoadSts3] [varchar](1) NULL,
	[C2PB04_FrtLoadSts4] [varchar](1) NULL,
	[C2PB05_FrtLoadSts5] [varchar](1) NULL,
	[C2PB06_FrtLoadSts6] [varchar](1) NULL,
	[C2PB07_FrtLoadSts7] [varchar](1) NULL,
	[C2PB08_FrtLoadSts8] [varchar](1) NULL,
	[C2PB09_FrtLoadSts9] [varchar](1) NULL,
	[C2PB10_FrtLoadSts10] [varchar](1) NULL,
	[C2PC01_PortInstlOPT1] [varchar](2) NULL,
	[C2PC02_PortInstlOPT2] [varchar](2) NULL,
	[C2PC03_PortInstlOPT3] [varchar](2) NULL,
	[C2PC04_PortInstlOPT4] [varchar](2) NULL,
	[C2PC05_PortInstlOPT5] [varchar](2) NULL,
	[C2PC06_PortInstlOPT6] [varchar](2) NULL,
	[C2PC07_PortInstlOPT7] [varchar](2) NULL,
	[C2PC08_PortInstlOPT8] [varchar](2) NULL,
	[C2PC09_PortInstlOPT9] [varchar](2) NULL,
	[C2PC10_PortInstlOPT10] [varchar](2) NULL,
	[C2PD01_PIO1Status] [varchar](1) NULL,
	[C2PD02_PIO2Status] [varchar](1) NULL,
	[C2PD03_PIO3Status] [varchar](1) NULL,
	[C2PD04_PIO4Status] [varchar](1) NULL,
	[C2PD05_PIO5Status] [varchar](1) NULL,
	[C2PD06_PIO6Status] [varchar](1) NULL,
	[C2PD07_PIO7Status] [varchar](1) NULL,
	[C2PD08_PIO8Status] [varchar](1) NULL,
	[C2PD09_PIO9Status] [varchar](1) NULL,
	[C2PD10_PIO10Status] [varchar](1) NULL,
	[C2FACP_FactoryPriceCode] [varchar](1) NULL,
	[C2FLTC_FleetCodeCurrent] [varchar](1) NULL,
	[C2RFTC_RegionalFleetCode] [varchar](1) NULL,
	[C2CMPC_CompanyCarCode] [varchar](1) NULL,
	[C2PORT_PortCurrentAll] [varchar](2) NULL,
	[C2DIST_DistrictCode] [varchar](3) NULL,
	[C2DELR_DealerCodeCURRET] [varchar](5) NULL,
	[C2IVST_InventoryStatus] [varchar](2) NULL,
	[C2NHFG_InventoryHoldFGN] [varchar](1) NULL,
	[C2RHFG_InventoryHoldFGR] [varchar](1) NULL,
	[C2WPDT_WhlsalePriceEffDt] [numeric](8, 0) NULL,
	[C2ILDF_InlandTransportFg] [varchar](1) NULL,
	[C2PPRT_PortofEntryPO] [varchar](2) NULL,
	[C2LPRT_LocationPort] [varchar](2) NULL,
	[C2WPRT_WaterPort] [varchar](2) NULL,
	[C2CSTF_CustomsFlag] [varchar](1) NULL,
	[C2PURD_PurifiedDate] [numeric](8, 0) NULL,
	[C2ARDT_ActualArrDate] [numeric](8, 0) NULL,
	[C2SSLF_StopSaleFlag] [varchar](1) NULL,
	[C2SSCD_StopSaleCompletion] [numeric](8, 0) NULL,
	[C2IPRF_InProcessFlag] [varchar](1) NULL,
	[C2INPD_InProcessDate] [numeric](8, 0) NULL,
	[C2INPT_InProcessTime] [numeric](6, 0) NULL,
	[C2SIN1_SpecialInstruction1] [varchar](30) NULL,
	[C2SIN2_SpecialInstruction2] [varchar](30) NULL,
	[C2TNDD_TenderDate] [numeric](8, 0) NULL,
	[C2TNDT_TenderTime] [numeric](6, 0) NULL,
	[C2INTD_InTransitDate] [numeric](8, 0) NULL,
	[C2INTT_InTransitTime] [numeric](6, 0) NULL,
	[C2INTF_InTransitTimeAMP] [varchar](1) NULL,
	[C2STDL_ShipToDealer] [varchar](5) NULL,
	[C2STD1_DropshipAddr1] [varchar](30) NULL,
	[C2STD2_DropshipAddr2] [varchar](30) NULL,
	[C2STD3_DropshipAddr3] [varchar](30) NULL,
	[C2STDC_City] [varchar](20) NULL,
	[C2STDS_State] [varchar](2) NULL,
	[C2DPVF_DiplomatVehFlag] [varchar](1) NULL,
	[C2RRFG_RegReserve] [varchar](1) NULL,
	[C2ARRF_RegResAlloFlag] [varchar](1) NULL,
	[C2AIPF_AlloInProcess] [varchar](1) NULL,
	[C2ALRN_AlloRunNum] [varchar](6) NULL,
	[C2ALRG_AlloRegion] [varchar](2) NULL,
	[C2ALCC_AlloConfirmFg] [varchar](1) NULL,
	[C2COMD_CommitDate] [numeric](8, 0) NULL,
	[C2FOBP_BasePriceDCost] [numeric](7, 2) NULL,
	[C2MSRP_BasePriceMSRP] [numeric](7, 2) NULL,
	[C2ACST_TotFacAccDCost] [numeric](7, 2) NULL,
	[C2FACM_TotFacAccMSRP] [numeric](7, 2) NULL,
	[C2PIOD_TorPIODealer] [numeric](7, 2) NULL,
	[C2PIOM_TotPIOMSRP] [numeric](7, 2) NULL,
	[C2FRTC_FreightCharge] [numeric](7, 2) NULL,
	[C2COST_AdvertsingCost] [numeric](7, 2) NULL,
	[C2OCHG_OtherCharge] [numeric](7, 2) NULL,
	[C2CSHD_CashDraftFlag] [varchar](1) NULL,
	[C2CDDL_CashDraftDealer] [varchar](5) NULL,
	[C2CDDT_CashDraftDate] [numeric](8, 0) NULL,
	[C2WHSF_WholesaleFlag] [varchar](1) NULL,
	[C2WSDT_WholesaleDate] [numeric](8, 0) NULL,
	[C2WRTN_WholesaleReturnFlg] [varchar](1) NULL,
	[C2RDLR_ReturnedDealer] [varchar](5) NULL,
	[C2RTND_WholesaleReturnDte] [numeric](8, 0) NULL,
	[C2DEMO_DemoType] [varchar](1) NULL,
	[C2DMDT_DemoDate] [numeric](8, 0) NULL,
	[C2DSLD_DateSold] [numeric](8, 0) NULL,
	[C2RETL_RetailFlag] [varchar](1) NULL,
	[C2RNRD_RetailDate] [numeric](8, 0) NULL,
	[C2CDAT_CreateDate] [numeric](8, 0) NULL,
	[C2CUSR_CreateUserID] [varchar](10) NULL,
	[C2CPGM_CreateProgram] [varchar](10) NULL,
	[C2UDAT_UpdateDate] [numeric](8, 0) NULL,
	[C2UUSR_UpdateUserID] [varchar](10) NULL,
	[C2UPGM_UpdateProgram] [varchar](10) NULL,
	[C2USEQ_SequenceNumber] [numeric](5, 0) NULL,
	[C2DFLG_DownloadFlag] [varchar](1) NULL,
	[C2DTMS_DownloadTimestamp] [varchar](26) NULL,
	[VehicleID] [varchar](10) NULL,
	[VehicleColorID] [varchar](10) NULL,
	[VehicleInteriorColorID] [varchar](10) NULL,
	[VehiclePackageID] [varchar](20) NULL,
	[VehicleModelCodeID] [varchar](13) NULL,
	[Drivetrain] [nchar](1) NULL,
	[EngineType] [nchar](1) NULL,
	[Emission] [nchar](1) NULL,
	[PriceModification] [money] NULL,
	[VehicleSeatColorID] [varchar](30) NULL,
	[year] [varchar](4) NULL,
	[C2EXCD] [decimal](7, 2) NULL,
	[C2EXCM] [decimal](7, 2) NULL,
	[C2INCD] [decimal](7, 2) NULL,
	[C2INCM] [decimal](7, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mig].[UsersTempImport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[UsersTempImport](
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateID] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersTempImport] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[DCSTransferLog]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[DCSTransferLog](
	[TransactionPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TransferTime] [datetime] NOT NULL,
	[NbrPinsToDCS] [int] NOT NULL,
	[NbrPinsFromDCS] [int] NOT NULL,
	[TransferSuccessful] [bit] NOT NULL,
 CONSTRAINT [PK_DCSTransferLog] PRIMARY KEY CLUSTERED 
(
	[TransactionPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PinCoupon]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PinCoupon](
	[PinCouponId] [int] NOT NULL,
	[PlanPID] [int] NULL,
	[Amount] [float] NULL,
	[CertificateId] [nvarchar](250) NULL,
	[Comments] [nvarchar](2000) NULL,
	[ModifiedDate] [date] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_PinCoupon] PRIMARY KEY CLUSTERED 
(
	[PinCouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[Pindeatail_backup]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[Pindeatail_backup](
	[PinPID] [int] IDENTITY(1,1) NOT NULL,
	[PinCode] [varchar](24) NOT NULL,
	[SponsorPID] [int] NOT NULL,
	[PlanPID] [int] NOT NULL,
	[PinStatusPID] [int] NOT NULL,
	[BuyerRef] [uniqueidentifier] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[SentToRDR] [datetime] NULL,
	[isActive] [bit] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[VIN] [nvarchar](24) NULL,
	[MapVehiclePID] [nvarchar](10) NULL,
	[Year] [varchar](4) NULL,
	[SubmittedBy] [varchar](2) NULL,
	[TrimMapPID] [nvarchar](10) NULL,
	[CreaterRef] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PinInvoice]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PinInvoice](
	[PinInvoiceID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PinCode] [nvarchar](24) NOT NULL,
	[MSRP] [decimal](18, 0) NOT NULL,
	[HCInvoice] [decimal](18, 0) NOT NULL,
	[HCDiscount] [decimal](18, 0) NOT NULL,
	[HCCash] [decimal](18, 0) NOT NULL,
	[HCCoupon] [decimal](18, 0) NOT NULL,
	[Incentive] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_PinInvoice] PRIMARY KEY CLUSTERED 
(
	[PinInvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[PinSequencer]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[PinSequencer](
	[SequencePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_PinSequencer] PRIMARY KEY CLUSTERED 
(
	[SequencePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PIN].[UsersCompaniesPlanPinLimit]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PIN].[UsersCompaniesPlanPinLimit](
	[PinLimitPID] [int] IDENTITY(1,1) NOT NULL,
	[PlanPID] [int] NOT NULL,
	[GlobalID] [uniqueidentifier] NOT NULL,
	[PinLimit] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [pinLimitPID] PRIMARY KEY CLUSTERED 
(
	[PinLimitPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[CompanyContact]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[CompanyContact](
	[ContactPID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[Disclaimers]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[Disclaimers](
	[DisclaimerPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DisclaimerID] [varchar](24) NOT NULL,
	[DisclaimerDesc] [varchar](50) NOT NULL,
	[DisclaimerText] [varchar](max) NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_Disclaimers] PRIMARY KEY CLUSTERED 
(
	[DisclaimerPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [profile].[GLCodes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[GLCodes](
	[GLPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GLCodeTypeID] [varchar](24) NOT NULL,
	[GLCodeTypeDescription] [varchar](1024) NOT NULL,
	[GLCode] [varchar](16) NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_GLCodes] PRIMARY KEY CLUSTERED 
(
	[GLPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[HMM_TempCompare]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[HMM_TempCompare](
	[UserID] [varchar](25) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[PlanEligibility]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanEligibility](
	[RelationPID] [int] NOT NULL,
	[PlanTypePID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_PlanEligibility] PRIMARY KEY CLUSTERED 
(
	[RelationPID] ASC,
	[PlanTypePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[PlanSponsors_live]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[PlanSponsors_live](
	[PlanPID] [int] NOT NULL,
	[RelationPID] [int] NOT NULL,
	[PinLimit] [int] NOT NULL,
	[UpdateSync] [timestamp] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[RDRSaleType]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[RDRSaleType](
	[RDRSalePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RDRSaleCode] [varchar](16) NOT NULL,
	[Description] [varchar](1024) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RDRSaleType] PRIMARY KEY CLUSTERED 
(
	[RDRSalePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[RelationShip]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[RelationShip](
	[RelationShipPID] [int] NOT NULL,
	[RelationShipName] [varchar](250) NULL,
 CONSTRAINT [PK_RelationShip] PRIMARY KEY CLUSTERED 
(
	[RelationShipPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[State_Codes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[State_Codes](
	[StatePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[StateShortCode] [varchar](3) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State_Codes] PRIMARY KEY CLUSTERED 
(
	[StatePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[tblMessageLog]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[tblMessageLog](
	[MessagePID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MessageTime] [datetime] NOT NULL,
	[Appl_ID] [varchar](24) NOT NULL,
	[Severity] [varchar](12) NOT NULL,
	[MessageID] [varchar](30) NULL,
	[MessageText] [varchar](max) NOT NULL,
	[UpdateSync] [timestamp] NOT NULL,
 CONSTRAINT [PK_tblMessageLog] PRIMARY KEY CLUSTERED 
(
	[MessagePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [profile].[UserIdPatterns]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[UserIdPatterns](
	[PatternPID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDPrefix] [varchar](16) NOT NULL,
	[DefaultCompany] [int] NOT NULL,
 CONSTRAINT [PK_UserIdPatterns] PRIMARY KEY CLUSTERED 
(
	[PatternPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[Vendor_Profile]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[Vendor_Profile](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[app_v_name] [varchar](50) NULL,
	[app_v_addr1] [varchar](50) NULL,
	[app_v_addr2] [varchar](50) NULL,
	[app_v_city] [varchar](50) NULL,
	[app_v_state] [char](2) NULL,
	[app_v_zip] [char](5) NULL,
	[app_v_zip1] [char](4) NULL,
	[app_v_id] [char](10) NULL,
	[app_v_date] [datetime] NULL,
	[app_v_pc] [nvarchar](50) NULL,
	[app_v_ph1] [char](3) NULL,
	[app_v_ph2] [char](3) NULL,
	[app_v_ph3] [char](4) NULL,
	[app_v_ext] [char](4) NULL,
	[app_v_pe] [varchar](100) NULL,
	[app_v_df] [char](1) NULL,
 CONSTRAINT [PK_Vendor_Profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [profile].[VendorsList1]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [profile].[VendorsList1](
	[ID] [varchar](30) NOT NULL,
	[Company] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zipcode] [varchar](10) NULL,
	[ContactName] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Notes] [nvarchar](255) NULL,
	[AlreadyEmail] [tinyint] NOT NULL,
	[nicktest] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_VehicleInfo]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_VehicleInfo]
AS
SELECT     Byo.AS400ToVehicle.VehicleID, Byo.AS400ToVehicle.ModelYear, Byo.AS400ToVehicle.DCSSeriesCode, Byo.AS400ToVehicle.DCSDoorCode, 
                      Byo.AS400ToVehicle.DoorCodePwrTrain, Byo.AS400ToColor.VehicleExteriorColorID, Byo.AS400ToTrim.VehicleEngineID, 
                      Byo.AS400ToTrim.VehicleTransmissionID, Byo.AS400ToVehicle.VehicleDrivetrainID, Byo.AS400ToTrim.VehicleTrimID, 
                      Byo.AS400ToVehicle.VehicleTypeArchiveID
FROM         Byo.AS400ToColor INNER JOIN
                      Byo.AS400ToTrim ON Byo.AS400ToColor.MapTrimPID = Byo.AS400ToTrim.MapTrimPID INNER JOIN
                      Byo.AS400ToVehicle ON Byo.AS400ToTrim.VehicleID = Byo.AS400ToVehicle.VehicleID
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [HUSA_PK_PromoDisclaimer_2547770_2547769]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [HUSA_PK_PromoDisclaimer_2547770_2547769] ON [Byo].[VehicleExclusions]
(
	[ExclusionTypePID] ASC,
	[isActive] ASC,
	[modelYear] ASC,
	[PlanTypePID] ASC,
	[ModelGroupCode] ASC
)
INCLUDE([ExclusionPID],[VehicleId],[VehiclePackageId],[VehicleModelCodeId],[UpdateSync],[CompanyPID],[Brand],[Region],[ExclusionFlag]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [HUSA_PK_PromoDisclaimer_3164720_3164719]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [HUSA_PK_PromoDisclaimer_3164720_3164719] ON [Byo].[VehicleExclusions]
(
	[ExclusionTypePID] ASC,
	[isActive] ASC,
	[modelYear] ASC,
	[ModelGroupCode] ASC,
	[PlanTypePID] ASC
)
INCLUDE([ExclusionPID],[VehicleId],[VehiclePackageId],[VehicleModelCodeId],[UpdateSync],[CompanyPID],[Brand],[Region],[ExclusionFlag]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VWCCMP_VehicleModelCodeID_VehicleColorID]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VWCCMP_VehicleModelCodeID_VehicleColorID] ON [Byo].[VWCCMP]
(
	[VehicleModelCodeID] ASC,
	[VehicleColorID] ASC
)
INCLUDE([S5CTNE],[S5EXDS],[S5YRNE],[VehicleID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VWMCMP_S4CTNE]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VWMCMP_S4CTNE] ON [Byo].[VWMCMP]
(
	[S4CTNE] ASC
)
INCLUDE([S4YRNE],[S4SERI],[S4SERD],[S4TRMD],[S4TRND],[VehicleID],[EngineDesc],[VehicleModelCodeID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_VWMCMP_S4YRNE]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IDX_VWMCMP_S4YRNE] ON [Byo].[VWMCMP]
(
	[S4YRNE] ASC
)
INCLUDE([S4CTNE],[S4SERI],[S4FMLY],[S4DOOR],[S4TRIM],[S4TRAN],[S4SERD]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [IDX_Tb_400_VWVM2P_VINMaster_SELECT1]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IDX_Tb_400_VWVM2P_VINMaster_SELECT1] ON [mig].[Tb_400_VWVM2P_VINMaster]
(
	[VehicleID] ASC,
	[VehicleColorID] ASC,
	[VehiclePackageID] ASC,
	[VehicleModelCodeID] ASC,
	[year] ASC
)
INCLUDE([C2ACCE_AccessoryGroup],[C2COST_AdvertsingCost],[C2CTNE_YearCentryCode],[C2DELR_DealerCodeCURRET],[C2DOOR_ShortVINDoor],[C2DSLD_DateSold],[C2EXCL_ExteriorClrHMA],[C2FA01_FactoryInst1],[C2FA02_FactoryInst2],[C2FA03_FactoryInst3],[C2FA04_FactoryInst5],[C2FACM_TotFacAccMSRP],[C2FOBP_BasePriceDCost],[C2FRTC_FreightCharge],[C2FVIN_FullVIN],[C2MSRP_BasePriceMSRP],[C2PIOD_TorPIODealer],[C2PIOM_TotPIOMSRP],[C2REGN_RegionCode],[C2SER2_ShortVINSeries],[C2TRAN_ShortVINTrans],[C2TRIM_ShortVINTrim],[C2YRNE_ShortVINYear],[PriceModification]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tb_400_VWVM2P_VINMaster_DealerCode]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tb_400_VWVM2P_VINMaster_DealerCode] ON [mig].[Tb_400_VWVM2P_VINMaster]
(
	[C2DELR_DealerCodeCURRET] ASC
)
INCLUDE([C2ACCE_AccessoryGroup],[C2COST_AdvertsingCost],[C2CTNE_YearCentryCode],[C2DOOR_ShortVINDoor],[C2DSLD_DateSold],[C2EXCL_ExteriorClrHMA],[C2FA01_FactoryInst1],[C2FA02_FactoryInst2],[C2FA03_FactoryInst3],[C2FA04_FactoryInst5],[C2FACM_TotFacAccMSRP],[C2FOBP_BasePriceDCost],[C2FRTC_FreightCharge],[C2FVIN_FullVIN],[C2MSRP_BasePriceMSRP],[C2PIOD_TorPIODealer],[C2PIOM_TotPIOMSRP],[C2REGN_RegionCode],[C2SER2_ShortVINSeries],[C2TRAN_ShortVINTrans],[C2TRIM_ShortVINTrim],[C2YRNE_ShortVINYear],[PriceModification],[VehicleColorID],[VehicleID],[VehicleModelCodeID],[VehiclePackageID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [IX_Tb_400_VWVM2P_VINMaster_JOINWITHBYOMAP]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tb_400_VWVM2P_VINMaster_JOINWITHBYOMAP] ON [mig].[Tb_400_VWVM2P_VINMaster]
(
	[C2DELR_DealerCodeCURRET] ASC,
	[year] ASC,
	[VehicleID] ASC,
	[VehicleModelCodeID] ASC,
	[VehiclePackageID] ASC
)
INCLUDE([C2ACCE_AccessoryGroup],[C2COST_AdvertsingCost],[C2CTNE_YearCentryCode],[C2DOOR_ShortVINDoor],[C2DSLD_DateSold],[C2EXCL_ExteriorClrHMA],[C2FA01_FactoryInst1],[C2FA02_FactoryInst2],[C2FA03_FactoryInst3],[C2FA04_FactoryInst5],[C2FACM_TotFacAccMSRP],[C2FOBP_BasePriceDCost],[C2FRTC_FreightCharge],[C2FVIN_FullVIN],[C2MSRP_BasePriceMSRP],[C2PIOD_TorPIODealer],[C2PIOM_TotPIOMSRP],[C2REGN_RegionCode],[C2SER2_ShortVINSeries],[C2TRAN_ShortVINTrans],[C2TRIM_ShortVINTrim],[C2YRNE_ShortVINYear],[PriceModification],[VehicleColorID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Tb_400_VWVM2P_VINMaster_BACKUP_STATUS_VIN]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE NONCLUSTERED INDEX [IDX_Tb_400_VWVM2P_VINMaster_BACKUP_STATUS_VIN] ON [mig].[Tb_400_VWVM2P_VINMaster_BACKUP]
(
	[C2FVIN_FullVIN] ASC,
	[C2IVST_InventoryStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PinDetail]    Script Date: 3/14/2025 4:20:22 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PinDetail] ON [PIN].[PinDetail]
(
	[PinCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [Byo].[PinVehicleLimit] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Byo].[PinVehicleLimit] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Byo].[PinVehicleLimit] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Byo].[VehicleExclusions] ADD  CONSTRAINT [DF_VehicleExclusions_PlanTypePID]  DEFAULT ((0)) FOR [PlanTypePID]
GO
ALTER TABLE [Byo].[VehicleExclusions] ADD  CONSTRAINT [DF_VehicleExclusions_CompanyPID]  DEFAULT ((0)) FOR [CompanyPID]
GO
ALTER TABLE [Byo].[VehicleExclusions] ADD  CONSTRAINT [DF_Default_Object_Name]  DEFAULT ('All') FOR [ModelGroupCode]
GO
ALTER TABLE [Byo].[VehicleExclusions] ADD  CONSTRAINT [exclusionBrandDefault]  DEFAULT ('Hyundai') FOR [Brand]
GO
ALTER TABLE [Byo].[VehicleType] ADD  CONSTRAINT [DF_VehicleType_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [Byo].[VWMCMP] ADD  CONSTRAINT [DF_VWMCMP_isDisplayed]  DEFAULT ((0)) FOR [isDisplayed]
GO
ALTER TABLE [Byo].[VWMCMP] ADD  CONSTRAINT [DF_VWMCMP_HyundaiFleetInd]  DEFAULT ((0)) FOR [HyundaiFleetModelCode]
GO
ALTER TABLE [Byo].[VWMCMP_HyundaiFleet] ADD  CONSTRAINT [DF_VWMCMP_HyundaiFleet_isDisplayed]  DEFAULT ((0)) FOR [isDisplayed]
GO
ALTER TABLE [Byo].[VWMCMP_HyundaiFleet] ADD  CONSTRAINT [DF_VWMCMP_HyundaiFleet_HyundaiFleetInd]  DEFAULT ((0)) FOR [HyundaiFleetModelCode]
GO
ALTER TABLE [dbo].[AntiCorruptionWebsiteAccess] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EquivalentPackage] ADD  CONSTRAINT [DF_EquivalentPackage_isDeleted]  DEFAULT ((1)) FOR [isExcluded]
GO
ALTER TABLE [dbo].[EquivalentPackage] ADD  CONSTRAINT [DF_EquivalentPackage_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Logs_ImportInventory] ADD  CONSTRAINT [DF_Logs_ImportInventory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProgramRuleAndFAQFiles] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dealer].[DealerInfo] ADD  CONSTRAINT [DF_qq_dlr_loginNew_qq_ExpEnable]  DEFAULT ((0)) FOR [qq_ExpEnable]
GO
ALTER TABLE [mig].[HMGMAUSAUsersImport] ADD  CONSTRAINT [DF_HMGMAUSAUsersImport_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [mig].[HMMAUSAUsersImport] ADD  CONSTRAINT [DF_HMMAUSAUsersImport_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [mig].[Tb_400_VWVM2P_VINMaster] ADD  CONSTRAINT [DF_Tb_400_VWVM2P_VINMaster_PriceModification]  DEFAULT ((0)) FOR [PriceModification]
GO
ALTER TABLE [mig].[Tb_400_VWVM2P_VINMaster] ADD  DEFAULT (CONVERT([date],getdate(),0)) FOR [MigrationCreatedDate]
GO
ALTER TABLE [mig].[Tb_400_VWVM2P_VINMaster_Archive] ADD  CONSTRAINT [DF_Tb_400_VWVM2P_VINMaster_Archive_StatusFlag]  DEFAULT ('I') FOR [StatusFlag]
GO
ALTER TABLE [mig].[Tb_400_VWVM2P_VINMaster_Archive] ADD  CONSTRAINT [DF_Tb_400_VWVM2P_VINMaster_Archive_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [mig].[Tb_400_VWVM2P_VINMaster_BACKUP] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [mig].[UsersTempImport] ADD  CONSTRAINT [DF_UsersTempImport_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [PIN].[PinCoupon] ADD  CONSTRAINT [DF_PinCoupon_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [PIN].[PinCoupon] ADD  CONSTRAINT [DF_PinCoupon_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [PIN].[PinDetail] ADD  DEFAULT ('N') FOR [InteriorColor]
GO
ALTER TABLE [PIN].[PINSale] ADD  CONSTRAINT [DF_PINSale_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [PIN].[UsersCompaniesPlanPinLimit] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [profile].[T_Company] ADD  CONSTRAINT [DF_T_Company_GlobalID]  DEFAULT (newid()) FOR [GlobalID]
GO
ALTER TABLE [profile].[T_Company] ADD  CONSTRAINT [DF_T_Company_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [profile].[T_Profile] ADD  CONSTRAINT [DF_T_Profile_GlobalRefID]  DEFAULT (newid()) FOR [GlobalRefID]
GO
ALTER TABLE [profile].[T_Profile] ADD  CONSTRAINT [DF_T_Profile_RelationshipPID]  DEFAULT ((17)) FOR [RelationshipPID]
GO
ALTER TABLE [profile].[T_Profile] ADD  CONSTRAINT [DF_T_Profile_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [profile].[T_User] ADD  CONSTRAINT [DF_T_User_GlobalID]  DEFAULT (newid()) FOR [GlobalID]
GO
ALTER TABLE [profile].[T_User] ADD  CONSTRAINT [DF_T_User_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [profile].[T_User] ADD  CONSTRAINT [DF_T_User_lLockedOut]  DEFAULT ((0)) FOR [lLockedOut]
GO
ALTER TABLE [profile].[T_User] ADD  CONSTRAINT [DF_T_User_nBadLoginCount]  DEFAULT ((0)) FOR [nBadLoginCount]
GO
ALTER TABLE [dbo].[ProgramRuleAndFAQFiles]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMRULE_FAQ_PLANTYPEPID] FOREIGN KEY([PlanTypePID])
REFERENCES [profile].[PlanTypes] ([PlanTypePID])
GO
ALTER TABLE [dbo].[ProgramRuleAndFAQFiles] CHECK CONSTRAINT [FK_PROGRAMRULE_FAQ_PLANTYPEPID]
GO
ALTER TABLE [PIN].[PINDealerSelection]  WITH CHECK ADD  CONSTRAINT [FK_PINDealerSelection_PinDetail] FOREIGN KEY([PinPID])
REFERENCES [PIN].[PinDetail] ([PinPID])
GO
ALTER TABLE [PIN].[PINDealerSelection] CHECK CONSTRAINT [FK_PINDealerSelection_PinDetail]
GO
ALTER TABLE [PIN].[PinDetail]  WITH CHECK ADD  CONSTRAINT [FK_PinDetail_PinStatus] FOREIGN KEY([PinStatusPID])
REFERENCES [PIN].[PinStatus] ([PinStatusPID])
GO
ALTER TABLE [PIN].[PinDetail] CHECK CONSTRAINT [FK_PinDetail_PinStatus]
GO
ALTER TABLE [PIN].[PinDetail]  WITH CHECK ADD  CONSTRAINT [FK_PinDetail_Plan] FOREIGN KEY([PlanPID])
REFERENCES [profile].[Plan] ([PlanPID])
GO
ALTER TABLE [PIN].[PinDetail] CHECK CONSTRAINT [FK_PinDetail_Plan]
GO
ALTER TABLE [PIN].[UsersCompaniesPlanPinLimit]  WITH CHECK ADD  CONSTRAINT [FK_PlanSponsors_Plan] FOREIGN KEY([PlanPID])
REFERENCES [profile].[Plan] ([PlanPID])
GO
ALTER TABLE [PIN].[UsersCompaniesPlanPinLimit] CHECK CONSTRAINT [FK_PlanSponsors_Plan]
GO
ALTER TABLE [profile].[DealerEarnings]  WITH CHECK ADD  CONSTRAINT [FK_DealerEarnings_PlanTypes] FOREIGN KEY([PlanTypePID])
REFERENCES [profile].[PlanTypes] ([PlanTypePID])
GO
ALTER TABLE [profile].[DealerEarnings] CHECK CONSTRAINT [FK_DealerEarnings_PlanTypes]
GO
ALTER TABLE [profile].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_PlanStatusCodes] FOREIGN KEY([PlanStatus])
REFERENCES [profile].[PlanStatusCodes] ([StatusPID])
GO
ALTER TABLE [profile].[Plan] CHECK CONSTRAINT [FK_Plan_PlanStatusCodes]
GO
ALTER TABLE [profile].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_PlanTypes] FOREIGN KEY([PlanTypePID])
REFERENCES [profile].[PlanTypes] ([PlanTypePID])
GO
ALTER TABLE [profile].[Plan] CHECK CONSTRAINT [FK_Plan_PlanTypes]
GO
ALTER TABLE [profile].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_RDRSaleType] FOREIGN KEY([RdrSaletype])
REFERENCES [profile].[RDRSaleType] ([RDRSalePID])
GO
ALTER TABLE [profile].[Plan] CHECK CONSTRAINT [FK_Plan_RDRSaleType]
GO
ALTER TABLE [profile].[PlanArchive]  WITH CHECK ADD  CONSTRAINT [FK_PlanArchive_PlanStatusCodes] FOREIGN KEY([PlanStatus])
REFERENCES [profile].[PlanStatusCodes] ([StatusPID])
GO
ALTER TABLE [profile].[PlanArchive] CHECK CONSTRAINT [FK_PlanArchive_PlanStatusCodes]
GO
ALTER TABLE [profile].[PlanArchive]  WITH CHECK ADD  CONSTRAINT [FK_PlanArchive_PlanTypes] FOREIGN KEY([PlanTypePID])
REFERENCES [profile].[PlanTypes] ([PlanTypePID])
GO
ALTER TABLE [profile].[PlanArchive] CHECK CONSTRAINT [FK_PlanArchive_PlanTypes]
GO
ALTER TABLE [profile].[PlanArchive]  WITH CHECK ADD  CONSTRAINT [FK_PlanArchive_RDRSaleType] FOREIGN KEY([RdrSaletype])
REFERENCES [profile].[RDRSaleType] ([RDRSalePID])
GO
ALTER TABLE [profile].[PlanArchive] CHECK CONSTRAINT [FK_PlanArchive_RDRSaleType]
GO
ALTER TABLE [profile].[PlanEligibility]  WITH CHECK ADD  CONSTRAINT [FK_PlanEligibility_CompanyRelation] FOREIGN KEY([RelationPID])
REFERENCES [profile].[CompanyRelation] ([RelationPID])
GO
ALTER TABLE [profile].[PlanEligibility] CHECK CONSTRAINT [FK_PlanEligibility_CompanyRelation]
GO
ALTER TABLE [profile].[PlanEligibility]  WITH CHECK ADD  CONSTRAINT [FK_PlanEligibility_PlanTypes] FOREIGN KEY([PlanTypePID])
REFERENCES [profile].[PlanTypes] ([PlanTypePID])
GO
ALTER TABLE [profile].[PlanEligibility] CHECK CONSTRAINT [FK_PlanEligibility_PlanTypes]
GO
ALTER TABLE [profile].[PlanSponsors]  WITH CHECK ADD  CONSTRAINT [FK_PlanSponsors_CompanyRelation] FOREIGN KEY([RelationPID])
REFERENCES [profile].[CompanyRelation] ([RelationPID])
GO
ALTER TABLE [profile].[PlanSponsors] CHECK CONSTRAINT [FK_PlanSponsors_CompanyRelation]
GO
ALTER TABLE [profile].[PlanSponsors]  WITH CHECK ADD  CONSTRAINT [FK_PlanSponsors_Plan] FOREIGN KEY([PlanPID])
REFERENCES [profile].[Plan] ([PlanPID])
GO
ALTER TABLE [profile].[PlanSponsors] CHECK CONSTRAINT [FK_PlanSponsors_Plan]
GO
ALTER TABLE [profile].[PlanSponsorsArchive]  WITH CHECK ADD  CONSTRAINT [FK_PlanSponsorsArchive_CompanyRelation] FOREIGN KEY([RelationPID])
REFERENCES [profile].[CompanyRelation] ([RelationPID])
GO
ALTER TABLE [profile].[PlanSponsorsArchive] CHECK CONSTRAINT [FK_PlanSponsorsArchive_CompanyRelation]
GO
ALTER TABLE [profile].[PlanSponsorsArchive]  WITH CHECK ADD  CONSTRAINT [FK_PlanSponsorsArchive_PlanArchive] FOREIGN KEY([PlanPID], [PlanArchivePID])
REFERENCES [profile].[PlanArchive] ([PlanPID], [PlanArchivePID])
GO
ALTER TABLE [profile].[PlanSponsorsArchive] CHECK CONSTRAINT [FK_PlanSponsorsArchive_PlanArchive]
GO
ALTER TABLE [profile].[Role_User]  WITH CHECK ADD  CONSTRAINT [FK_Role_User_Roles] FOREIGN KEY([Role_PID])
REFERENCES [profile].[Roles] ([Role_PID])
GO
ALTER TABLE [profile].[Role_User] CHECK CONSTRAINT [FK_Role_User_Roles]
GO
ALTER TABLE [profile].[Role_User]  WITH CHECK ADD  CONSTRAINT [FK_Role_User_T_User] FOREIGN KEY([UserPID])
REFERENCES [profile].[T_User] ([UserPID])
GO
ALTER TABLE [profile].[Role_User] CHECK CONSTRAINT [FK_Role_User_T_User]
GO
ALTER TABLE [profile].[T_Company]  WITH CHECK ADD  CONSTRAINT [FK_T_Company_CompanyRelation] FOREIGN KEY([companyRelation])
REFERENCES [profile].[CompanyRelation] ([RelationPID])
GO
ALTER TABLE [profile].[T_Company] CHECK CONSTRAINT [FK_T_Company_CompanyRelation]
GO
ALTER TABLE [profile].[T_User]  WITH CHECK ADD  CONSTRAINT [FK_T_User_T_Company] FOREIGN KEY([companyPID])
REFERENCES [profile].[T_Company] ([companyPID])
GO
ALTER TABLE [profile].[T_User] CHECK CONSTRAINT [FK_T_User_T_Company]
GO
ALTER TABLE [profile].[UserIdPatterns]  WITH CHECK ADD  CONSTRAINT [FK_UserIdPatterns_T_Company] FOREIGN KEY([DefaultCompany])
REFERENCES [profile].[T_Company] ([companyPID])
GO
ALTER TABLE [profile].[UserIdPatterns] CHECK CONSTRAINT [FK_UserIdPatterns_T_Company]
GO
/****** Object:  StoredProcedure [Byo].[sp_ExcludeVehicles]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Byo].[sp_ExcludeVehicles]
    @modelYear int,
    @modelName nvarchar(50),
    @TrimName nvarchar(50),
    @PackageName nvarchar(150),
    @PlanTypePID INT,
    @CompanyPID INT
AS 
    Declare @VehicleModelCodeId varchar(3),
        @VehiclePackageId varchar(3)
    Select  @VehicleModelCodeId = 'All',
            @VehiclePackageId = 'All'

    if @modelName = 'All' 
        begin
            insert  into Byo.VehicleExclusions
                    (
                      ExclusionTypePID,
                      VehicleId,
                      VehicleModelCodeId,
                      VehiclePackageId,
                      isActive,
                      modelYear,
                      PlanTypePID,
                      CompanyPID
                    )
            VALUES  (
                      4,
                      @modelName,
                      @TrimName,
                      @PackageName,
                      'true',
                      @modelYear,
                      @PlanTypePID,
                      @CompanyPID
                    )
        END
    ELSE 
        if @PackageName = 'All'
            and @TrimName = 'All' 
            begin
                insert  into Byo.VehicleExclusions
                        (
                          ExclusionTypePID,
                          VehicleId,
                          VehicleModelCodeId,
                          VehiclePackageId,
                          isActive,
                          modelYear,
                          PlanTypePID,
                          CompanyPID
                        )
                VALUES  (
                          1,
                          @modelName,
                          @TrimName,
                          @PackageName,
                          'true',
                          @modelYear,
                          @PlanTypePID,
                          @CompanyPID
                        )
            end
        ELSE 
            if @TrimName = 'All' 
                begin
                    insert  into Byo.VehicleExclusions
                            (
                              ExclusionTypePID,
                              VehicleId,
                              VehicleModelCodeId,
                              VehiclePackageId,
                              isActive,
                              modelYear,
                              PlanTypePID,
                              CompanyPID
                            )
                    VALUES  (
                              1,
                              @modelName,
                              @TrimName,
                              @PackageName,
                              'true',
                              @modelYear,
                              @PlanTypePID,
                              @CompanyPID
                            )
                end
            ELSE 
                if @PackageName = 'All' 
                    begin
                        insert  into Byo.VehicleExclusions
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
                                  CompanyPID
                                )
                        VALUES  (
                                  2,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
                                  @CompanyPID
                            
                                )
                    end
                else 
                    begin
                        insert  into Byo.VehicleExclusions
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
                                  CompanyPID
                                
                                )
                        VALUES  (
                                  3,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
                                  @CompanyPID
                                )
                    end
    RETURN
GO
/****** Object:  StoredProcedure [dbo].[HCirlce_GetDealerCashAmount]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec dbo.[HCirlce_GetDealerCashAmount] '2011','FL080,FL087','SO',1,NULL
-- =============================================
CREATE proc [dbo].[HCirlce_GetDealerCashAmount]
    (
      -- Add the parameters for the function here
      @ModelYear varchar(4) = NULL,
      @dealerCodes varchar(200),
      @Region as nvarchar(4),
      @MapVehiclePID nvarchar(10),
      @MapModelCodePID varchar(10) = NULL
    )
AS begin
    DECLARE @State CHAR(2)
    SELECT TOP 1
            @State = SUBSTRING(Value, 1, 2)
    from    dbo.udf_Split(@dealerCodes, ',')
    
	-- Add the SELECT statement with parameter references here
    SELECT  Amount,State,Dealer
    FROM    [dbo].[HCECash] A
    WHERE   EndDate > GETDATE()
            AND ProgramNumber LIKE '101%'
            AND Series = @MapVehiclePID
            AND Region = @Region
            AND ModelYear = @ModelYear
            AND state LIKE '%' + @State + '%'
            
        --AND ( A.Dealer IN ( SELECT  value
        --                    from    dbo.udf_Split(@dealerCodes, ',') )
        --    )
   END

GO
/****** Object:  StoredProcedure [dbo].[sp_AS400ToPackage_import]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_AS400ToPackage_import]
as
BEGIN
    --EXEC [dbo].[sp_AS400ToPackage_import]
	TRUNCATE table [HyundaiApp].[Byo].[AS400ToPackage]
	
	INSERT INTO [HyundaiApp].[Byo].[AS400ToPackage]
           ([MapVehiclePID]
           ,[MapTrimPID]
           ,[DCSPackageCode]
           ,[VehiclePackageArchiveID]
           ,[VehicleID]
           ,[VehicleTrimID]
           ,[VehicleEngineID]
           ,[VehicleTransmissionID]
           ,[VehiclePackageID]
           ,PackageName)
        SELECT  [MapVehiclePID]
		  ,[MapTrimPID]
		  ,[DSCPackageCode]
		  ,0 as [VehiclePackageArchiveID]
		  ,[VehicleID]
		  ,[VehicleTrimID]
		   ,[VehicleEngineID]
		  ,[VehicleTransmissionID]
		   ,[packageID]
		   ,[PackageName]
		 FROM [HyundaiApp].[dbo].[vw_AS400_PackageLookup]




END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPinStatusUpdate]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: EXEC	[dbo].[sp_GetPinStatusUpdate] @PIN = N'I7FL65PH1S', @Status = N'U',@VIN = N'11111111111111111',@DealerCode = N'ZZ999',@RDRDate = N'02/28/2011',@SaleDate = N'02/28/2011',@PlanType = 2,@ModelYear = 2011,@ModelCode = N'1',@Packagecode = N'1',@InvoiceAmt = 1,@BuyerFirstName = N'SS',@BuyerLastName = N'SD',@Notes = N'TEST'
-- Modified by & Date : Sudhir, change Plan Type from Int to Varchar, as Plan B is char type & 09/19/2018
-- Modified: 4/16/2020, Erik Mildner, Added SAP to Circle Plan Type ID mapping
-- Modified: 07/14/2020 : Sudhir Sharma, added a condition which was causing once Plan I called happend, as there are same code for Plan A and I

-- =============================================
CREATE PROC [dbo].[sp_GetPinStatusUpdate](@PIN            NVARCHAR(24),
                                         @Status         NVARCHAR(1),
                                         @VIN            VARCHAR(24)  = NULL,
                                         @DealerCode     CHAR(5),
                                         @RDRDate        DATETIME,
                                         @SaleDate       DATETIME,
                                         @PlanType       INT		  = NULL,
                                         @ModelYear      INT          = NULL,
                                         @ModelCode      VARCHAR(20)  = NULL,
                                         @Packagecode    VARCHAR(20)  = NULL,
                                         @InvoiceAmt     DECIMAL      = NULL,
                                         @BuyerFirstName VARCHAR(30)  = NULL,
                                         @BuyerLastName  VARCHAR(30)  = NULL,
                                         @Notes          VARCHAR(MAX) = NULL)
AS
     BEGIN
         DECLARE @countRet AS INT;
         DECLARE @StatType AS INT;
         DECLARE @StatRet AS NVARCHAR(1);
         IF @Status = 'U'
             SET @StatType = 1;
         IF @Status = 'C'
             SET @StatType = 3;
         
/*if @Status='I'
set @StatType=2
if @Status='A'
set @StatType=3*/

/*
A (Plan A) ->  2
E (Plan E) ->  1
Z (Plan Z) ->  5
M (Plan M) ->  3
V (Plan V) ->  4
O (Plan O) ->  6
K (Plan K) ->  7
W (Plan W) ->  8
B (Plan B) ->  9
I (Plan I) ->  2
*/

DECLARE @PlanTypeMapping TABLE (
	PlanName VARCHAR(50),
	CirclePlanTypeID int,
	SAPPlanTypeID int
);

insert into @PlanTypeMapping (PlanName, CirclePlanTypeID, SAPPlanTypeID)
values('PLAN A',1,2),
	  ('PLAN E',2,1),
	  ('PLAN Z',4,5),
	  ('PLAN M',5,3),
	  ('PLAN V',6,4),
	  ('PLAN O',7,6),
	  ('PLAN K',8,7),
	  ('PLAN W',9,8),
	  ('PLAN B',10,9),
	  ('PLAN I',11,2);

	  -- Set @PlanType to mapped Circle plan type ID based off SAP plan type ID
	  SELECT TOP 1 @PlanType = coalesce(CirclePlanTypeID,-1)
	  from @PlanTypeMapping
	  where SAPPlanTypeID = @PlanType and substring(PlanName,6,1) = SUBSTRING(@PIN,1,1);

         IF @Status = 'U'
             BEGIN
                 IF(SUBSTRING(@PIN, 1, 1) = 'A'
                    AND @PlanType != 1)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
                 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'Z'
                    AND @PlanType != 4)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
                 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'E'
                    AND @PlanType != 2)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
                 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'M'
                    AND @PlanType != 5)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
                 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'V'
                    AND @PlanType != 6)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
				 ELSE
				 IF(SUBSTRING(@PIN, 1, 1) = 'I'
                    AND @PlanType != 11)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
				 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'B'
                    AND @PlanType != 10)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
                 ELSE
                 IF(SUBSTRING(@PIN, 1, 1) = 'O'
                    AND @PlanType != 7)
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'PIN does not match the Sales Type selected';
                         RETURN;
                     END;
             END;

         SELECT @StatRet = pinstatusPID
         FROM PIN.PinDetail
         WHERE pincode = @PIN
               AND isactive = 1;
         --AND @saledate  BETWEEN IssueDate -1  AND ExpirationDate


         IF(LEN(@StatRet) < 0)
             BEGIN
                 BEGIN
                     --INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
                     SELECT ReturnResult = 'E',
                            DescriptionResult = 'PIN is invalid';
                     RETURN;
                 END;
             END;
         BEGIN TRAN;
         IF @StatRet = 3
            AND @Status = 'U'
             BEGIN
                 --INSERT INTO @RtnValue(ReturnResult,DescriptionResult)

                 UPDATE PIN.PinDetail
                   SET
                       pinstatusPID = @StatType
                 WHERE pincode = @PIN;
                 IF @@ERROR <> 0
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'Error';
                         ROLLBACK TRAN;
                         COMMIT TRAN;
                         RETURN;
                     END;
                 EXEC [PIN].[spHCircle_InsertPinSale]
                      @PIN,
                      @VIN,
                      @DealerCode,
                      @RDRDate,
                      @SaleDate,
                      @PlanType,
                      @ModelYear,
                      @ModelCode,
                      @Packagecode,
                      @InvoiceAmt,
                      @BuyerFirstName,
                      @BuyerLastName,
                      @Notes;
                 IF @@ERROR <> 0
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'Error';
                         ROLLBACK TRAN;
                         COMMIT TRAN;
                         RETURN;
                     END;
                 SELECT ReturnResult = 'S',
                        DescriptionResult = 'Pin status has changed to Used';
                 COMMIT TRAN;
                 RETURN;
             END;
         ELSE
         IF @StatRet = 2
             BEGIN
                 --INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
                 SELECT ReturnResult = 'E',
                        DescriptionResult = 'Pin is Inactive';
                 COMMIT TRAN;
                 RETURN;
             END;
         ELSE
         IF @StatRet = 1
            AND @Status = 'C'
             BEGIN
                 --INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
                 UPDATE PIN.PinDetail
                   SET
                       pinstatusPID = @StatType
                 WHERE pincode = @PIN;
                 IF @@ERROR <> 0
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'Error';
                         ROLLBACK TRAN;
                         COMMIT TRAN;
                         RETURN;
                     END;
                 EXEC [PIN].[spHCircle_DeletePinSale]
                      @PIN;
                 IF @@ERROR <> 0
                     BEGIN
                         SELECT ReturnResult = 'E',
                                DescriptionResult = 'Error';
                         ROLLBACK TRAN;
                         COMMIT TRAN;
                         RETURN;
                     END;
                 SELECT ReturnResult = 'S',
                        DescriptionResult = 'Pin status has changed to Cancel';
                 COMMIT TRAN;
                 RETURN;
             END;
                 --else if @StatRet=4
                 --begin
                 --		--INSERT INTO @RtnValue(ReturnResult,DescriptionResult)
                 --		select ReturnResult='Error', DescriptionResult='Pin status is Cancel'
                 --		update PIN.PinDetail set pinstatusPID=@StatType where pincode=@PIN
                 --		RETURN
                 --end

         ELSE
             BEGIN
                 SELECT ReturnResult = 'E',
                        DescriptionResult = 'Pin Status not Valid';
                 COMMIT TRAN;
                 RETURN;
             END;;;
         COMMIT TRAN;
         RETURN;
     END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPinStatusUpdate_Test]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Ex: EXEC	[dbo].[sp_GetPinStatusUpdate_Test] @PIN = N'ACA0060403', @Status = N'C',@VIN = N'11111111111111111',@DealerCode = N'ZZ999',@RDRDate = N'09/20/2011',@SaleDate = N'09/20/2011',@PlanType = 1,@ModelYear = 2011,@ModelCode = N'1',@Packagecode = N'1',@InvoiceAmt = 1,@BuyerFirstName = N'SS',@BuyerLastName = N'SD',@Notes = N'TEST'
-- =============================================
CREATE  PROC [dbo].[sp_GetPinStatusUpdate_Test]
    (
      @PIN NVARCHAR(24),
      @Status NVARCHAR(1),
      @VIN VARCHAR(24) = null,
      @DealerCode CHAR(5),
      @RDRDate DATETIME,
      @SaleDate DATETIME,
      @PlanType INT = NULL,
      @ModelYear INT = null,
      @ModelCode VARCHAR(20) = null,
      @Packagecode VARCHAR(20) = null,
      @InvoiceAmt DECIMAL = null,
      @BuyerFirstName VARCHAR(30) = null,
      @BuyerLastName VARCHAR(30) = null,
      @Notes VARCHAR(max) = NULL
    )
AS 
    BEGIN
        DECLARE @countRet AS INT
        DECLARE @StatType AS INT
        DECLARE @StatRet AS NVARCHAR(1)

        IF @Status = 'U' 
            SET @StatType = 1
        IF @Status = 'C' 
            SET @StatType = 3
		
		
        SELECT  @StatRet = pinstatusPID
        FROM    PIN.PinDetail
        WHERE   pincode = @PIN
                print @StatRet     

        IF ( LEN(@StatRet) < 0 ) 
            BEGIN
                BEGIN
                print '1'
                    SELECT  ReturnResult = 'E',
                            DescriptionResult = 'PIN Code not Valid'
                    RETURN
                END
            END
		
 
        BEGIN TRAN


        IF @StatRet = 3
            AND @Status = 'U' 
            BEGIN
                print '2'     
                UPDATE  PIN.PinDetail
                SET     pinstatusPID = @StatType
                WHERE   pincode = @PIN

                IF @@ERROR <> 0 
                    BEGIN
                        SELECT  ReturnResult = 'E',
                                DescriptionResult = 'Error'
                        ROLLBACK TRAN
                        COMMIT TRAN 
                        RETURN
                    END
                    
                EXEC [PIN].[spHCircle_InsertPinSale] @PIN, @VIN, @DealerCode,
                    @RDRDate, @SaleDate, @PlanType, @ModelYear, @ModelCode,
                    @Packagecode, @InvoiceAmt, @BuyerFirstName, @BuyerLastName,
                    @Notes
                
                IF @@ERROR <> 0 
                    BEGIN
                        SELECT  ReturnResult = 'E',
                                DescriptionResult = 'Error'
                        ROLLBACK TRAN
                        COMMIT TRAN 
                        RETURN
                    END
                SELECT  ReturnResult = 'S',
                        DescriptionResult = 'Pin status has changed to Used'

                COMMIT TRAN 
                RETURN

            END
        ELSE 
            IF @StatRet = 2 
                BEGIN
				print '3'
                    SELECT  ReturnResult = 'E',
                            DescriptionResult = 'Pin is Inactive'
                    COMMIT TRAN 
                    RETURN

                END
            ELSE 
                IF @StatRet = 1 AND @Status = 'C'
                    BEGIN
                    print '4' 
				        UPDATE  PIN.PinDetail
                        SET     pinstatusPID = @StatType
                        WHERE   pincode = @PIN


                        IF @@ERROR <> 0 
                            BEGIN
                                SELECT  ReturnResult = 'E',
                                        DescriptionResult = 'Error'
                                ROLLBACK TRAN
                                COMMIT TRAN 
                                RETURN
                            END
                            
                        EXEC [PIN].[spHCircle_DeletePinSale] @PIN
                            
                        IF @@ERROR <> 0 
                            BEGIN
                                SELECT  ReturnResult = 'E',
                                        DescriptionResult = 'Error'
                                ROLLBACK TRAN
                                COMMIT TRAN 
                                RETURN 
                            END
                        SELECT  ReturnResult = 'S',
                                DescriptionResult = 'Pin status has changed to Cancel'

                        COMMIT TRAN 
                        RETURN

                    END
                else 
                    begin
                    print '5'
                        select  ReturnResult = 'E',
                                DescriptionResult = 'Pin Status not Valid'
                        COMMIT TRAN 
                        RETURN
                    END
        COMMIT TRAN 
        RETURN
    END 
	



GO
/****** Object:  StoredProcedure [dbo].[sp_GetUnusedPins]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Date: 4/5/2018
-- Author:Erik Mildner
-- Description: Return unused pins
-- exec [dbo].[sp_GetUnusedPins] NULL, NULL, NULL
-- Modified: 10/23/2018, Erik Mildner, Added Case for 'HMF'
-- Modified: 04/18/2022, Kumaraswamy Kovuru, Added EmpFirstName, EmpLastName
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetUnusedPins]( @PinCode varchar(24), @DateFrom datetime, @DateTo datetime )
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @Select varchar(max);
	DECLARE @Where varchar(2000);
	DECLARE @FirstDayOfYearDate datetime;
	
	SET @FirstDayOfYearDate = DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0);

	SET @Select = 
		'SELECT TOP (100) PERCENT profile.t_company.companyname,'
		+'CASE'
				+' WHEN profile.t_company.companyid = ''4**'' THEN ''HMF'''
				+'WHEN profile.t_company.companyid = ''HCA'' THEN ''HMF'''
				+'ELSE profile.t_company.companyid'
			  +' END AS companyid,'
		+'COALESCE(usrCreater.userid, profile.t_company.[companyid]) AS UserID,'
		+'( profCreater.firstname + '' '' + profCreater.lastname ) AS CreaterFirstLastName,'
		+'profBuyer.firstname,'
		+'profBuyer.lastname,'
		+'pd.pincode,'
		+'profBuyer.email,'
		+'pd.issuedate,'
		+'profile.state_codes.statename,'
		+'rel.[relationshipname] AS Relationship,'
		+'pd.msrp,'
		+'pd.hcdiscount,'
		+'pd.hcinvoice,'
		+'pd.hccash,'
		+'pd.hccoupon,'
		+'pd.incentive,'
		+'pd.hcecash,'
		+'pd.vin,'
		+'profBuyer.EmpFirstName,'
	    +'profBuyer.EmpLastName'
	+' FROM pin.pindetail(nolock) pd'
       +' INNER JOIN profile.t_profile(nolock) AS profBuyer'
              +' ON pd.buyerref = profBuyer.globalrefid'
       +' LEFT JOIN profile.t_profile(nolock) AS profCreater'
              +' ON pd.createrref = profCreater.globalrefid'
       +' LEFT JOIN profile.t_user(nolock) usrCreater'
              +' ON pd.createrref = usrCreater.globalid'
       +' INNER JOIN profile.t_company(nolock)'
              +' ON pd.createrref = profile.t_company.globalid'
				 +' OR profile.t_company.companypid = usrCreater.companypid'
       +' INNER JOIN profile.state_codes(nolock)'
              +' ON profBuyer.stateid = profile.state_codes.statepid'
       +' LEFT JOIN [profile].[relationship] AS rel (nolock)'
              +' ON profBuyer.relationshippid = rel.relationshippid';
	
	IF(@DateFrom IS NOT NULL AND @DateTo IS NOT NULL)
	BEGIN
		SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@DateFrom as varchar(20)) + ''' AND ''' + CAST(@DateTo as varchar(20)) + '''';
	END
	ELSE IF(@DateFrom IS NOT NULL)
	BEGIN
		SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@DateFrom as varchar(20)) + ''' AND  getdate()';
	END
	ELSE IF(@DateTo IS NOT NULL)
	BEGIN
		SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@FirstDayOfYearDate as varchar(20)) + ''' AND ''' + CAST(@DateTo as varchar(20)) + '''';
	END
	ELSE
	BEGIN
		SET @Where = ' WHERE pd.IssueDate >= ''' + CAST(@FirstDayOfYearDate as varchar(20)) + '''';
	END

	IF(@PinCode IS NOT NULL)
	BEGIN
		SET @Where = @Where + ' AND pd.PinCode = ''' + CAST(@PinCode as varchar(24)) + '''';
	END

	SET @Where = @Where + ' AND (pd.PinStatusPID = 3)';
	
	print ( @Select + @Where + ' ORDER BY pd.IssueDate desc' );
	exec( @Select + @Where + ' ORDER BY pd.IssueDate desc' );

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsedPins]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Date: 4/5/2018
-- Author:Erik Mildner
-- Description: Return used pins
-- exec [dbo].[sp_GetUsedPins] NULL, NULL, NULL
-- Modified: 10/23/2018, Erik Mildner, Added Case for 'HMF'
-- Modified: 04/18/2022, Kumaraswamy Kovuru, Added EmpFirstName, EmpLastName
-- Modified: 03/15/2023, Erik Mildner, Added ps.InvoiceAmt
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetUsedPins]( @PinCode varchar(24), @DateFrom datetime, @DateTo datetime )
AS
BEGIN
       SET NOCOUNT ON;

       DECLARE @Select varchar(max);
       DECLARE @Where varchar(2000);
       DECLARE @FirstDayOfYearDate datetime;
       
       SET @FirstDayOfYearDate = DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0);

       SET @Select = 
              'SELECT pd.PinCode,'
              +'coalesce(ps.VIN, pd.vin) as VIN,'
              +'ps.DealerCode,'
              +'ps.RDRDate,'
              +'ps.SaleDate,'
              +'coalesce(usrCreater.UserID, compUser.companyID) as CreaterUserID,'
              +'coalesce(profCreater.FirstName, compUser.companyName) as CreaterFirstName,'
              +'profCreater.LastName as CreatorLastName,'
			  +'profCreater.Email as CreaterEmail,'
			  +'CASE'
				+' WHEN COALESCE(compUser.companyid, comp.companyid) = ''4**'' THEN ''HMF'''
				+'WHEN COALESCE(compUser.companyid, comp.companyid) = ''HCA'' THEN ''HMF'''
				+'ELSE COALESCE(compUser.companyid, comp.companyid)'
			  +'END AS CompanyID,'
              +'coalesce(comp.companyName, compUser.companyName) as CompanyName,'
              +'coalesce(ps.BuyerFirstName, profBuyer.FirstName) as BuyerFirstName,'
              +'coalesce(ps.BuyerLastName, profBuyer.LastName) as BuyerLastName,'
              +'pd.IssueDate,'
              +'pd.VehicleName as ModelName,'
              +'pd.Year as ModelYear,'
              +'profBuyer.FirstName,'
              +'profBuyer.LastName,'
              +'profBuyer.Address1,'
              +'profBuyer.City,'
              +'profBuyer.Zipcode,'
              +'profBuyer.Email as BuyerEmail,'
              +'coalesce(profBuyer.Phone1, profBuyer.Phone2) as Phone,'
              +'dealer.region,'
              +'(SELECT top 1 MONTH(CALENDAR_DATE) FROM   [HyundaiUSA].[dwh].[HMA_SalesClosingCalender](nolock) where  SALES_MONTH = MONTH(ps.SaleDate) and  CALENDAR_YEAR = YEAR(ps.SaleDate) order by  MONTH(ps.SaleDate) desc) as SalesClosingMonth,'
              +'(SELECT top 1 year(CALENDAR_DATE)  FROM   [HyundaiUSA].[dwh].[HMA_SalesClosingCalender](nolock) where  SALES_MONTH = MONTH(ps.SaleDate) and  CALENDAR_YEAR = YEAR(ps.SaleDate) order by  MONTH(ps.SaleDate) desc) as SalesClosingYear,'
              +'rel.RelationShipName,'
              +'pd.MSRP,'
              +'pd.HCDiscount,'
              +'COALESCE(ps.InvoiceAmt, pd.HCInvoice) as HCInvoice,'
              +'pd.HCCash,'
              +'pd.HCCoupon,'
              +'pd.Incentive,'
              +'pd.HCECash,'
			  +'profBuyer.EmpFirstName,'
			  +'profBuyer.EmpLastName'
              +' FROM pin.pinsale AS ps'
              +' INNER JOIN pin.pindetail AS pd'
                     +' ON ps.PinPID = pd.PinPID'
              +' INNER JOIN profile.t_profile(nolock) AS profBuyer'
                     +' ON pd.BuyerRef = profBuyer.globalrefid'
              +' LEFT JOIN profile.t_user(nolock) AS usrCreater'
                     +' ON pd.createrref = usrCreater.globalid'
              +' INNER JOIN profile.t_company(nolock) AS comp'
                     +' ON pd.createrref = comp.globalid'
              +' OR comp.companypid = usrCreater.companypid'
              +' LEFT JOIN profile.T_Profile(nolock) as profCreater'
                     +' ON pd.CreaterRef = profCreater.GlobalRefID'
              +' LEFT JOIN profile.t_company(nolock) AS compUser'
                     +' ON pd.CreatedBy = compUser.companyPID'
              +' LEFT JOIN hyundaiusa.[Dealer].[DealerInfo] AS dealer'
                     +' ON ps.DealerCode = dealer.dealercode'
              +' LEFT JOIN [profile].[RelationShip](nolock) AS rel'
                     +' ON profBuyer.RelationShipPID = rel.RelationShipPID';

       IF(@DateFrom IS NOT NULL AND @DateTo IS NOT NULL)
       BEGIN
              SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@DateFrom as varchar(20)) + ''' AND ''' + CAST(@DateTo as varchar(20)) + '''';
       END
       ELSE IF(@DateFrom IS NOT NULL)
       BEGIN
              SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@DateFrom as varchar(20)) + ''' AND  getdate()';
       END
       ELSE IF(@DateTo IS NOT NULL)
       BEGIN
              SET @Where = ' WHERE pd.IssueDate between ''' + CAST(@FirstDayOfYearDate as varchar(20)) + ''' AND ''' + CAST(@DateTo as varchar(20)) + '''';
       END
       ELSE
       BEGIN
              SET @Where = ' WHERE pd.IssueDate >= ''' + CAST(@FirstDayOfYearDate as varchar(20)) + '''';
       END

       IF(@PinCode IS NOT NULL)
       BEGIN
              SET @Where = @Where + ' AND pd.PinCode = ''' + CAST(@PinCode as varchar(24)) + ''''
       END

	   SET @Where = @Where + ' AND (pd.PinStatusPID = 1)'

       -- print ( @Select + @Where + ' ORDER BY pd.IssueDate desc' );
       exec( @Select + @Where + ' ORDER BY pd.IssueDate desc' );

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserPlanPinLimit]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Erik
-- Create date: 10/3/2019
-- Description:	Get pin limit per user
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetUserPlanPinLimit]
	@GlobalID varchar(50),
    @PlanPID int
AS
BEGIN
	SET NOCOUNT ON;


	SELECT ucl.PinLimit
	FROM [PIN].[UsersCompaniesPlanPinLimit] ucl
	WHERE ucl.GlobalID = @GlobalID
		and ucl.PlanPID = @PlanPID

END

GO
/****** Object:  StoredProcedure [dbo].[sp_IsPassedPinVehicleMonthLimit]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Erik Mildner
-- Create date: 7/05/2023
-- Description:	Get pin vehicle limits
/*
EXEC [dbo].[sp_IsPassedPinVehicleMonthLimit] @PlanPID = 29, @ModelGroupCode = 'J001', @ModelYear = 2023
*/
-- Modified History:
-- 8/11/2023_EMild: Removed year filter to change pin limit to 50 per plan regardless of vehicle year
-- =============================================
CREATE PROCEDURE [dbo].[sp_IsPassedPinVehicleMonthLimit]
	@PlanPID INT,
	@ModelGroupCode VARCHAR(4),
    @ModelYear INT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @LimitPassed BIT = 0;
	DECLARE @PinsLimit INT;
	DECLARE @PinsCreatedCount INT;
	DECLARE @PlanTypePID INT;
	DECLARE @StartOfMonth DATETIME;
	DECLARE @EndOfMonth DATETIME;

	SELECT @PlanTypePID = PlanTypePID FROM [profile].[Plan](NOLOCK)
								  WHERE PlanPID = @PlanPID;

	SELECT @PinsLimit = [PinLimit] FROM [Byo].[PinVehicleLimit](NOLOCK)
									WHERE PlanTypePID = @PlanTypePID
									AND ModelGroupCode = @ModelGroupCode;

	IF(@PinsLimit IS NOT NULL)
	BEGIN
		SELECT @StartOfMonth =  DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0);
		SELECT @EndOfMonth = DATEADD(MILLISECOND, -3, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) + 1, 0));

		SELECT @PinsCreatedCount = COUNT(*) FROM [PIN].[PinDetail](NOLOCK) AS PD	
											WHERE PD.PlanPID = @PlanPID
											AND PD.IsActive = 1
											AND PD.ModelGroupCd = @ModelGroupCode
											AND (PD.[IssueDate] BETWEEN @StartOfMonth and @EndOfMonth);

		IF (@PinsCreatedCount >= @PinsLimit)
		BEGIN
			SET @LimitPassed = 1;
		END
	END

	SELECT @LimitPassed

END
GO
/****** Object:  StoredProcedure [dbo].[spAntiCorruptionWebsiteAccess]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Rajesh
-- Create date: 7/02/2023
-- Description:	Log anti corruption website access
/*
EXEC [dbo].[spAntiCorruptionWebsiteAccess] @UserPID = 29, @UserID = 'test@test.com', @AcceptOrCancel = 1
*/
-- =============================================
CREATE PROCEDURE [dbo].[spAntiCorruptionWebsiteAccess]
	  @UserPID INT,
      @UserID VARCHAR(100),
      @AcceptOrCancel BIT
AS 
BEGIN	
    INSERT  INTO dbo.AntiCorruptionWebsiteAccess
            (
                [UserPID],
                [UserID],
                [AcceptOrCancel]
            )
    VALUES  (
                @UserPID,
                @UserID,
                @AcceptOrCancel
            )
END
GO
/****** Object:  StoredProcedure [dbo].[spGet_Certificate]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Date: 1/20/2017
-- Author:Erik Mildner
-- Description: Return data needed to programatically generate certificate
-- exec [dbo].[spGet_Certificate] AWUQCRD3C6
-- Modified: 1/5/2018, Erik Mildner, Added interior color to query
-- Modified: 5/1/2019, Erik Mildner, Added field Brand
-- Modified: 7/8/2019, Erik Mildner, Added field ModelGroupCd
-- =============================================
CREATE PROCEDURE [dbo].[spGet_Certificate]
(
    @PinCode VARCHAR(24)
)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @PinDetail TABLE
    (   PlanPID int,
        CreaterRef uniqueidentifier,
        BuyerRef uniqueidentifier,
        SponsorPID int,
        [Year] varchar(4),
        IssueDate datetime,
        ExpirationDate datetime,
        VIN nvarchar(24),
        SubmittedBy varchar(2),
        MSRP decimal(18,2),
        HCDiscount decimal(18,2),
        HCInvoice decimal(18,2),
        HCCash decimal(18,2),
        HCTotal decimal(18,2),
        TrimName varchar(200),
        Package nvarchar(300),
        Color char(30),
        VehicleName nvarchar(50),
        DealerCode varchar(5),
		InteriorColor char(30),
		Brand varchar(30),
		ModelGroupCd varchar(4)
    );

    INSERT INTO @PinDetail 
    (   PlanPID,
        CreaterRef,
        BuyerRef,
        SponsorPID,
        [Year],
        IssueDate,
        ExpirationDate,
        VIN,
        SubmittedBy,
        MSRP,
        HCDiscount,
        HCInvoice,
        HCCash,
        HCTotal,
        TrimName,
        Package,
        Color,
        VehicleName,
        DealerCode,
		InteriorColor,
		Brand,
		ModelGroupCd
    )
    SELECT
        PlanPID,
        CreaterRef,
        BuyerRef,
        SponsorPID,
        [Year],
        IssueDate,
        ExpirationDate,
        VIN,
        SubmittedBy,
        MSRP,
        HCDiscount,
        HCInvoice,
        HCCash,
        HCTotal,
        TrimName,
        Package,
        Color,
        VehicleName,
        DealerCode,
		InteriorColor,
		Brand,
		ModelGroupCd
    FROM PIN.PinDetail
    WHERE PinCode=@PinCode;

    DECLARE @retCertificate AS TABLE
    (   PlanName varchar(50),
        PlanPID int,
        CreaterName varchar(60),
        CreaterEmail varchar(128),
        CompanyName varchar(256),
        CustomerName varchar(60),
        RelationshipPID int,
        PinCode varchar(24),
        IssueDate datetime,
        ExpirationDate datetime,
        [Year] varchar(4),
        VIN nvarchar(24),
        SubmittedBy varchar(2),
        MSRP decimal(18,2),
        HCDiscount decimal(18,2),
        HCInvoice decimal(18,2),
        HCCash decimal(18,2),
        HCTotal decimal(18,2),
        TrimName varchar(200),
        Package nvarchar(300),
        Color char(30),
        VehicleName nvarchar(50),
        DealerCode varchar(5),
		InteriorColor char(30),
		Brand varchar(30),
		ModelGroupCd varchar(4)
    );
    
    INSERT INTO @retCertificate
    (   PlanName,
        PlanPID,
        CreaterName,-- optional, only for employee
        CreaterEmail,-- optional, only for employee
        CompanyName,
        CustomerName,
        RelationshipPID,
        PinCode,
        IssueDate,
        ExpirationDate,
        [Year],
        VIN,
        SubmittedBy,
        MSRP,
        HCDiscount,
        HCInvoice,
        HCCash,
        HCTotal,
        TrimName,
        Package,
        Color,
        VehicleName,
        DealerCode,
		InteriorColor,
		Brand,
		ModelGroupCd
    )
    SELECT 
        pln.PlanName,
        pin.PlanPID,
        CASE WHEN pin.SubmittedBy = 'C' THEN '' ELSE LTRIM(RTRIM(CONCAT(prof.FirstName,' ', prof.LastName))) END,
        CASE WHEN pin.SubmittedBy = 'C' THEN '' ELSE COALESCE(prof.Email, '') END,
        COALESCE(comp.companyName, comp1.companyName, comp2.companyName),
        LTRIM(RTRIM(CONCAT(customerProf.FirstName,' ',customerProf.LastName))),
        customerProf.RelationshipPID,
        @PinCode,
        pin.IssueDate,
        pin.ExpirationDate,
        pin.[Year],
        pin.VIN,
        pin.SubmittedBy,
        pin.MSRP,
        pin.HCDiscount,
        pin.HCInvoice,
        pin.HCCash,
        pin.HCTotal,
        pin.TrimName,
        pin.Package,
        pin.Color,
        pin.VehicleName,
        pin.DealerCode,
		pin.InteriorColor,
		pin.Brand,
		pin.ModelGroupCd
    FROM @PinDetail pin
        INNER JOIN profile.[Plan] AS pln
            ON pin.PlanPID=pln.PlanPID
        INNER JOIN profile.T_Profile AS customerProf
            ON pin.BuyerRef=customerProf.GlobalRefID
        LEFT JOIN profile.T_User AS employeeCreator
            ON employeeCreator.GlobalID=pin.CreaterRef AND pin.SubmittedBy='E'
        LEFT JOIN profile.T_Company AS companyCreator
            ON companyCreator.GlobalID=pin.CreaterRef AND pin.SubmittedBy='C'
        LEFT JOIN profile.T_Profile AS prof
            ON pin.CreaterRef=prof.GlobalRefID
        LEFT JOIN profile.T_Company AS comp
            ON employeeCreator.companyPID=comp.companyPID AND pin.SubmittedBy='E'
        LEFT JOIN profile.T_Company AS comp1
            ON companyCreator.companyPID=comp1.companyPID AND pin.SubmittedBy='C'
        LEFT JOIN profile.T_Company AS comp2
            ON pin.SponsorPID=comp2.companyPID AND pin.SubmittedBy='C';
    
    Select top 1
        cert.PlanName,
        cert.PlanPID,
        cert.CreaterName,
        cert.CreaterEmail,
        cert.CompanyName,
        cert.CustomerName,
        cert.RelationshipPID,
        cert.PinCode,
        cert.IssueDate,
        cert.ExpirationDate,
        cert.[Year],
        cert.VIN,
        cert.SubmittedBy,
        cert.MSRP,
        cert.HCDiscount,
        cert.HCInvoice,
        cert.HCCash,
        cert.HCTotal,
        cert.TrimName,
        cert.Package,
        cert.Color,
        cert.VehicleName,
        cert.DealerCode,
		cert.InteriorColor,
		cert.Brand,
		cert.ModelGroupCd
    FROM @retCertificate cert;

    SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[spGet_Inventory_Test]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGet_Inventory_Test]
    @DealerCode varchar(10)
AS 
    BEGIN

        SELECT  [C2FVIN_FullVIN] as [VIN],
                [C2CTNE_YearCentryCode] + [C2YRNE_ShortVINYear] as [ModelYear],
                [C2SER2_ShortVINSeries] as [Series],
                [C2DOOR_ShortVINDoor] as [DCSDoor],
                [C2TRIM_ShortVINTrim] as [DcsTrim],
                [C2TRAN_ShortVINTrans] as [DCSTrim],
                [C2ACCE_AccessoryGroup] as [DCSPackageCode],
                [C2EXCL_ExteriorClrHMA] as [Color],
                [C2FOBP_BasePriceDCost] as [FOBP],
                [C2MSRP_BasePriceMSRP] as [MSRP_BasePriceMSRP],
                [C2ACST_TotFacAccDCost] as [ACST_TotFacAccDCost],
                [C2FACM_TotFacAccMSRP] as [FACM_TotFacAccMSRP],
                [C2PIOD_TorPIODealer] as [PIOD_TorPIODealer],
                [C2PIOM_TotPIOMSRP] as [PIOM_TotPIOMSRP],
                [C2FRTC_FreightCharge] as [FRTC_FreightCharge],
                C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP
                    + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge as [MSRP],
                (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) * .04 - 400  as [PlanE Discount],
                (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP + C2FRTC_FreightCharge) * .03  as [PlanA Discount],
                (C2FOBP_BasePriceDCost - (C2MSRP_BasePriceMSRP + C2FACM_TotFacAccMSRP + C2PIOM_TotPIOMSRP) * .04 - 400 ) as [Plan Price PlanE],
                ( [C2FOBP_BasePriceDCost] - ( (C2MSRP_BasePriceMSRP
                                                  + C2FACM_TotFacAccMSRP
                                                  + C2PIOM_TotPIOMSRP) * .03 ) ) as [Plan Price PlanA],
                [C2PIOD_TorPIODealer] - ( [C2PIOM_TotPIOMSRP] * .04 ) as [PlanE AccessoryPrice],
                [C2PIOD_TorPIODealer] - ( [C2PIOM_TotPIOMSRP] * .03 ) as [PlanA AccessoryPrice]
        FROM    mig.Tb_400_VWVM2P_VINMaster
        where   mig.Tb_400_VWVM2P_VINMaster.C2DELR_DealerCodeCURRET = @DealerCode
        --group by [C2FVIN_FullVIN],
        --        [C2CTNE_YearCentryCode],
        --        [C2YRNE_ShortVINYear],
        --        [C2SER2_ShortVINSeries],
        --        [C2DOOR_ShortVINDoor],
        --        [C2TRIM_ShortVINTrim],
        --        [C2TRAN_ShortVINTrans],
        --        [C2ACCE_AccessoryGroup],
        --        [C2EXCL_ExteriorClrHMA],
        --        [C2FOBP_BasePriceDCost],
        --        [C2MSRP_BasePriceMSRP],
        --        [C2ACST_TotFacAccDCost],
        --        [C2FACM_TotFacAccMSRP],
        --        [C2PIOD_TorPIODealer],
        --        [C2PIOM_TotPIOMSRP],
        --        [C2FRTC_FreightCharge] 
    END
GO
/****** Object:  StoredProcedure [dbo].[spGet_TotalPINUsedCalendarMonth]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:           DTon
-- Create date:	 8/10/2015
-- Description:      Get Total PIN already used per calendar year for Employee -- Plan E
-- EX: exec dbo.spGet_TotalPINUsedCalendarMonth 'A586293E-821F-4515-83C3-60CBDC22440B', 39
-- Modified: 8/10/2015		Created
-- Modified: 6/4/2019, Erik Mildner, Fixed logic by changing ME.CALENDAR_MONTH to ME.SALES_MONTH = month(getdate())
-- =============================================
CREATE PROCEDURE [dbo].[spGet_TotalPINUsedCalendarMonth]
    @CreateRefID varchar(50),
    @PlanPID int
AS

BEGIN

SET NOCOUNT ON

declare @SalesMonthStartDate datetime
declare @SalesMonthEndDate datetime


SELECT  @SalesMonthStartDate= MS.CALENDAR_DATE+1, @SalesMonthEndDate=ME.CALENDAR_DATE +1
FROM    [HyundaiUSA].[dwh].[HMA_SalesClosingCalender] MS,   -- Start date of sales month
        [HyundaiUSA].[dwh].[HMA_SalesClosingCalender] ME    -- Last date of sales month
WHERE    MS.CALENDAR_DATE        =
        (SELECT MAX(CALENDAR_DATE)
        FROM    [HyundaiUSA].[dwh].[HMA_SalesClosingCalender] MS2
        WHERE   MS2.CALENDAR_DATE       < ME.CALENDAR_DATE
        )
AND     ME.SALES_YEAR = YEAR(getdate()) and ME.SALES_MONTH = month(getdate())
ORDER BY 1



SELECT PD.[PinPID],
       PD.[PinCode],
       PD.[SponsorPID],
       PD.[PlanPID],
       PD.[PinStatusPID],
       PD.[BuyerRef],
       PD.[IssueDate],
       PD.[ExpirationDate],
       PD.[CreatedBy],
       PD.[SentToRDR],
       PD.[isActive],
       PD.[UpdateSync],
       PD.[ModifiedDate],
       PD.[VIN],
       PD.[MapVehiclePID],
       PD.[Year],
       PD.[SubmittedBy],
       PD.[TrimMapPID],
       PD.[CreaterRef],
       PD.[MSRP],
       PD.[HCInvoice],
       PD.[HCDiscount],
       PD.[HCCash],
       PD.[HCCoupon],
       PD.[Incentive],
       PD.[HCECash]
FROM [PIN].[PinDetail] AS PD	
WHERE PD.CreaterRef = @CreateRefID AND PD.PlanPID = @PlanPID
    AND PD.IsActive = 1  AND PD.PinStatusPID = 1 -- PIN already Used
    AND (PD.[IssueDate] BETWEEN @SalesMonthStartDate and @SalesMonthEndDate)
    --DATEADD(s,1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0)) and DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE())+1,0)))

SET NOCOUNT OFF

END

GO
/****** Object:  StoredProcedure [dbo].[spGet_TotalPINUsedCalendarYear]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:           DTon
-- Create date:	 8/10/2015
-- Description:      Get Total PIN already used per calendar year for Employee -- Plan E
-- EX: exec dbo.spGet_TotalPINUsedCalendarYear 'EFAF31C7-FC2B-404D-BE89-0309420F8961', 29
-- Modified:
--  8/10/2015		Created
-- =============================================
CREATE PROCEDURE [dbo].[spGet_TotalPINUsedCalendarYear]
    @CreateRefID varchar(50),
    @PlanPID int
AS

BEGIN

SET NOCOUNT ON

SELECT PD.[PinPID],
       PD.[PinCode],
       PD.[SponsorPID],
       PD.[PlanPID],
       PD.[PinStatusPID],
       PD.[BuyerRef],
       PD.[IssueDate],
       PD.[ExpirationDate],
       PD.[CreatedBy],
       PD.[SentToRDR],
       PD.[isActive],
       PD.[UpdateSync],
       PD.[ModifiedDate],
       PD.[VIN],
       PD.[MapVehiclePID],
       PD.[Year],
       PD.[SubmittedBy],
       PD.[TrimMapPID],
       PD.[CreaterRef],
       PD.[MSRP],
       PD.[HCInvoice],
       PD.[HCDiscount],
       PD.[HCCash],
       PD.[HCCoupon],
       PD.[Incentive],
       PD.[HCECash]
FROM [PIN].[PinDetail] AS PD	
    JOIN dbo.SalesCalendarDate C ON DatePart(YYYY,PD.[IssueDate]) = year(getdate()) --C.[Year]  
WHERE PD.CreaterRef = @CreateRefID AND PD.PlanPID = @PlanPID
    AND PD.IsActive = 1  AND PD.PinStatusPID = 1 -- PIN already Used
    AND (PD.[IssueDate] BETWEEN C.StartDate AND C.EndDate)

SET NOCOUNT OFF

END
GO
/****** Object:  StoredProcedure [dbo].[spGetProgramRuleAndFAQ]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author: Swapnil U. Suryawanshi
-- Create date: 06/26/2024
-- Description:	Get plan list along with the file for program rules
/*
EXEC [dbo].[spGetProgramRuleAndFAQ]
*/
-- =========================================================

CREATE  PROCEDURE [dbo].[spGetProgramRuleAndFAQ]
AS
BEGIN
	SELECT
		ISNULL(PRAF.Id,0) AS Id,
		PP.PlanTypePID,
		PP.PlanType AS PlanName,
		NULL AS ProgramRuleFile,
		NULL AS FAQFile,
		CASE WHEN PRAF.ProgramRuleFile IS NULL THEN CAST(0 AS Bit) ELSE CAST(1 AS Bit) END AS ProgramRuleUploaded,
		CASE WHEN PRAF.FAQFile IS NULL THEN CAST(0 AS Bit) ELSE CAST(1 AS Bit) END AS FAQUploaded
	FROM [profile].[PlanTypes] PP (NOLOCK)
		INNER JOIN [profile].[Plan] PP1 (NOLOCK) ON PP.PlanTypePID = PP1.PlanTypePID
		LEFT JOIN [dbo].[ProgramRuleAndFAQFiles] PRAF (NOLOCK) ON PP.PlanTypePID = PRAF.PlanTypePID
	WHERE PP1.PlanStatus = 2
	order by PlanName
END
GO
/****** Object:  StoredProcedure [dbo].[spGetProgramRuleAndFAQByPlanTypePID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =========================================================
-- Author: Swapnil U. Suryawanshi
-- Create date: 06/26/2024
-- Description:	Get plan list along with the file path for program rules
/*
EXEC [dbo].[spGetProgramRuleAndFAQByPlanTypePID] @PlanTypePID = 11
*/
-- =========================================================

CREATE PROCEDURE [dbo].[spGetProgramRuleAndFAQByPlanTypePID]
@PlanTypePID INT
AS
BEGIN
	SELECT
		ISNULL(PRAF.Id,0) AS Id,
		PP.PlanTypePID,
		PP.PlanType AS PlanName,
		PRAF.ProgramRuleFile,
		PRAF.FAQFile,
		CASE WHEN PRAF.ProgramRuleFile IS NULL THEN CAST(0 AS Bit) ELSE CAST(1 AS Bit) END AS ProgramRuleUploaded,
		CASE WHEN PRAF.FAQFile IS NULL THEN CAST(0 AS Bit) ELSE CAST(1 AS Bit) END AS FAQUploaded
	FROM [profile].[PlanTypes] PP (NOLOCK)
		INNER JOIN [profile].[Plan] PP1 (NOLOCK) ON PP.PlanTypePID = PP1.PlanTypePID
		LEFT JOIN [dbo].[ProgramRuleAndFAQFiles] PRAF (NOLOCK) ON PP.PlanTypePID = PRAF.PlanTypePID
	WHERE PP1.PlanStatus = 2 AND PP.PlanTypePID = @PlanTypePID
END
GO
/****** Object:  StoredProcedure [dbo].[spHCircle_get_Trim]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spHCircle_get_Trim]
	@VehicleMapID int
AS

/* EXAMPLE: EXEC [spHCircle_get_Trim] 1 */
SELECT  distinct MapVehiclePID,
        MapTrimPID,
        DCSTrimCode,
        ISNULL(DCSEngineCode, '') AS 'DCSEngineCode',
        ISNULL(DCSTransCode, '') AS 'DCSTransCode',
        VehicleYear,
        VehicleName,
        TrimName,
        TrimDesc,
        EngineName,
        EngineDesc,
        TransmissionName,
        TransmissionDesc,
        PowertrainDesc,
        VehicleDrivetrainId
FROM    Byo.AS400ToTrimMap (NOLOCK) 
where   MapVehiclePID = @VehicleMapID
and [dbo].[fnReturnVehicleDrivetrainId](@VehicleMapID,VehicleDrivetrainId)=VehicleDrivetrainId

GO
/****** Object:  StoredProcedure [dbo].[spHCircle_get_vehicleModelYear]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spHCircle_get_vehicleModelYear]
AS

SELECT MapVehiclePID, 
	ModelYear, 
	VehicleName, 
	VehicleTypeName, 
	ISNULL(DrivetrainDesc, '') AS 'DrivetrainDesc',
	DefaultImage AS VehicleImageLoc	
FROM [dbo].[As400ToVehicleMap]

GO
/****** Object:  StoredProcedure [dbo].[spHCirlce_GetModelByVIN]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[SPHCirlce_GetModelByVIN] 'KMHDB8AE3BU111055'
CREATE procedure [dbo].[spHCirlce_GetModelByVIN]
(
@VIN varchar(24)
)
as
begin

declare @modelYear int
declare @modelName varchar(20)

        SELECT distinct
                    @modelYear=M.Year,@modelName=M.Name
          FROM      ( SELECT  SUBSTRING(@VIN, 4, 1) + SUBSTRING(@VIN, 6, 1)
                                + SUBSTRING(@VIN, 5, 1) + SUBSTRING(@VIN, 8, 1)
                                + SUBSTRING(@VIN, 10, 1) as ModelID
                    ) A
                    INNER JOIN HMA_OS_APP.dbo.Modl_Model M ON A.ModelID = M.Modl_Model_Number
        select * from dbo.fnHCirlce_GetModelByYear (@modelYear) where VehicleName like @modelName
end

GO
/****** Object:  StoredProcedure [dbo].[spInsertProgramRuleAndFAQ]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Date: 6/28/2024
-- Author:Swapnil U. Suryawanshi
-- Description: It inserts the new file path of Program Rule and FAQ for specified plan
-- exec [dbo].[spInsertProgramRuleAndFAQ] @PlanTypePID =1 , @ProgramRuleFile = null, @FAQFile = null, @OperationBy = 240
-- =============================================
CREATE   PROCEDURE [dbo].[spInsertProgramRuleAndFAQ]
(
	@PlanTypePID INT,
	@ProgramRuleFile VARBINARY(MAX) = NULL,
	@FAQFile VARBINARY(MAX) = NULL,
	@OperationBy INT
)
AS
BEGIN
		INSERT INTO [dbo].[ProgramRuleAndFAQFiles]
		(
			PlanTypePID,
			ProgramRuleFile,
			FAQFile,
			CreatedBy,
			CreatedDate
		)
		VALUES
		(
			@PlanTypePID,
			@ProgramRuleFile,
			@FAQFile,
			@OperationBy,
			GETDATE()
		)
	    RETURN ISNULL(@@ROWCOUNT,0)
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchDealerInventory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:           Randy
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
--Modified and optimized by Nick Nguyen
-- 2/2/2017_DTon: Fixed performance issue when split dealer list into table + use modelyear instead of concatenate yr+century
/*

declare @p11 int
set @p11=0
exec sp_executesql N'EXEC @RETURN_VALUE = [spSearchDealerInventory] @MapVehiclePID = @p0, @dealerCodes = @p1, @MapModelCodePID = @p2, @MapPackagePID = @p3, 
@MapColorPID = @p4, @MapInteriorColorPID = @p5, @ModelYear = @p6, @InventoryStatus = @p7',N'@p0 nvarchar(4000),@p1 varchar(8000),@p2 varchar(8000),@p3 varchar(8000),
@p4 varchar(8000),@p5 varchar(8000),@p6 varchar(8000),@p7 varchar(8000),@RETURN_VALUE int output',@p0=N'4',
@p1='CA325,CA293,CA317,CA310,CA363',@p2='',@p3='',@p4='',@p5='',@p6='2017',@p7=NULL,@RETURN_VALUE=@p11 output
select @p11

*/

-- =============================================
CREATE PROCEDURE [dbo].[spSearchDealerInventory]
       @MapVehiclePID nvarchar(20),
       @dealerCodes varchar(200),
       @MapModelCodePID varchar(100) = NULL,
       @MapPackagePID varchar(20) = NULL,
       @MapColorPID varchar(10) = NULL,
       @MapInteriorColorPID varchar(50) = NULL,
       @ModelYear varchar(4) = NULL,
       @InventoryStatus varchar(4) = NULL,
       @DealerCashInd bit=0,
       @OrgModelCodeInd bit=1
       
AS
BEGIN

       DECLARE
			  @VehicleTableDelete table (	 
				SeqNo	int  NOT NULL, 
				VIN varchar(17)
				)

      declare @VehicleTable table (
					 SeqNo	int identity (1,1) NOT NULL, 
                     C2PIOM_TotPIOMSRP [numeric](7, 2),
                     C2COST_AdvertsingCost [numeric](7, 2),
                     C2EXCL_ExteriorClrHMA varchar(10),
                     MapInteriorColorPID varchar(50),
                     InteriorColorName varchar(100),
                     C2DELR_DealerCodeCURRET varchar(5),
                     C2FOBP_BasePriceDCost [numeric](7, 2),
                     C2PIOD_TorPIODealer [numeric](7, 2),
                     C2FRTC_FreightCharge [numeric](7, 2),
                     C2CTNE_YearCentryCode varchar(2),
                     C2YRNE_ShortVINYear varchar(2),
                     C2MSRP_BasePriceMSRP [numeric](7, 2),
                     C2FVIN_FullVIN varchar(17),
                     C2FACM_TotFacAccMSRP [numeric](7, 2),
                     ExColorDesc varchar(100),
                     ModelYear varchar(4),
                     PackageDesc varchar(100),
                     TransmissionDesc varchar(100),
                     MapVehiclePID varchar(20),
                     VehicleName varchar(100),
                     MapModelCodePID varchar(20),
                     OrgModelCodePID varchar(20),
                     DealerCashAmount [numeric](7, 2),
                     AutoID int,
                     InventoryStatus varchar(4),
                     PackageCode varchar(20),
                     MSRP [numeric](7, 2),
                     RegionCode varchar(2),
                     PriceModification money NULL,
                     PortOption01 varchar(2) NULL,
                     PortOption02 varchar(2) NULL,
                     PortOption03 varchar(2) NULL,
                     PortOption04 varchar(2) NULL,
                     PortOption05 varchar(2) NULL,
                     PortOption06 varchar(2) NULL,
                     PortOption07 varchar(2) NULL,
                     PortOption08 varchar(2) NULL,
                     PortOption09 varchar(2) NULL,
                     PortOption10 varchar(2) NULL,
                     DealerOption01 varchar(2) NULL,
                     DealerOption02 varchar(2) NULL,
                     DealerOption03 varchar(2) NULL,
                     DealerOption04 varchar(2) NULL,
                     DealerOption05 varchar(2) NULL,
                     DealerOption06 varchar(2) NULL,
                     DealerOption07 varchar(2) NULL,
                     DealerOption08 varchar(2) NULL,
                     DealerOption09 varchar(2) NULL,
                     DealerOption10 varchar(2) NULL
              );

       DECLARE
              @ModelCodeTable table (
                     MapModelCodePID varchar(13)
                     , ModelYear char(4)
                     , OrgModelCode varchar(20) NULL
              );

       DECLARE
              @DealerCashTable table (
                     RegionCode varchar(2)
                     , DealerCode varchar(5)
                     , ModelYear char(4)
                     , ModelCodePID varchar(13)
                     , VehiclePID varchar(10)
                     , CashAmount money null
              );

       DECLARE
              @NoPREZ varchar(50),
              @PREZPackage varchar(15),
              @ModelCode varchar(100);

       SET NOCOUNT ON;

       -- Parameter cleanup
       IF(@MapVehiclePID = '') SET @MapVehiclePID = null;
       IF(@MapModelCodePID = '') SET @MapModelCodePID = null;
       IF(@MapPackagePID = '') SET @MapPackagePID = null;
       IF(@MapColorPID = '') SET @MapColorPID = null;
       IF(@MapInteriorColorPID = '') SET @MapInteriorColorPID = null;

       --Check for modelcode
       SET @ModelCode = '';
       SELECT  @ModelCode = @ModelCode + ',' + (CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
       FROM dbo.udf_Split(@MapModelCodePID , ',') M
              LEFT JOIN  [dbo].[EquivalentModelCode] E
                     ON CHARINDEX(M.Value, [EquivalentModelCodeID]) > 0
                     AND [Year] = @ModelYear;

       -- I don't know what PREZ is...
       SET @NoPREZ = '';
       SELECT @NoPREZ = @NoPREZ + ',' + PZEVVehicleModelCodeID 
       FROM [dbo].[PZEV_Packages]
       WHERE [OrgVehicleModelCodeID] = @MapModelCodePID 
              OR CHARINDEX([OrgVehicleModelCodeID], @ModelCode) > 0;
       SET @PREZPackage = '';

       DECLARE
       @ParamDefs nvarchar(1000),
       @Select nvarchar(4000)
       SET @ParamDefs = 
              '   @pMapVehiclePID varchar(20),'
              + ' @pdealerCodes varchar(200),'
              + ' @pMapModelCodePID varchar(100),'
              + ' @pMapPackagePID varchar(20),'
              + ' @pMapColorPID varchar(10),'
              + ' @pMapInteriorColorPID varchar(50),'
              + ' @pModelYear varchar(4),'
              + ' @pInventoryStatus varchar(4),'
              + ' @pNoPREZ varchar(50),'
              + ' @pPREZPackage varchar(15),'
              + ' @pModelCode varchar(100)';
              
              SET @SELECT = dbo.udf_GetInventorySearch_String(@MapVehiclePID,
                                                              @dealerCodes,
                                                              @MapModelCodePID ,
                                                              @MapPackagePID ,
                                                              @MapColorPID ,
                                                              @MapInteriorColorPID ,
                                                              @ModelYear ,
                                                              @InventoryStatus
                                                         );
                                                             						 
      SET @PREZPackage = [dbo].[udf_PREVPackage_GET_String] (@MapModelCodePID, @MapPackagePID, @ModelYear);

	  DECLARE @ListDealerCode TABLE(Dealercode VARCHAR(5));  
	  INSERT INTO @ListDealerCode SELECT Value FROM dbo.udf_Split(@dealerCodes, ','); 

	  IF ( ISNULL(@ModelYear, '') <> '' AND ISNULL(@MapVehiclePID, '') <> '' AND ISNULL(@dealerCodes, '') <> '') 
		AND (@MapPackagePID IS NULL AND @MapColorPID IS NULL AND @MapInteriorColorPID IS NULL)
		BEGIN
				INSERT INTO @VehicleTable (
									C2PIOM_TotPIOMSRP,
									C2COST_AdvertsingCost,
									C2EXCL_ExteriorClrHMA,
									MapInteriorColorPID,
									InteriorColorName,
									C2DELR_DealerCodeCURRET,
									C2FOBP_BasePriceDCost,
									C2PIOD_TorPIODealer,
									C2FRTC_FreightCharge,
									C2CTNE_YearCentryCode,
									C2YRNE_ShortVINYear,
									C2MSRP_BasePriceMSRP,
									C2FVIN_FullVIN,
									C2FACM_TotFacAccMSRP,
									ExColorDesc,
									ModelYear,
									PackageDesc,
									TransmissionDesc,
									MapVehiclePID,
									VehicleName,
									MapModelCodePID,
									OrgModelCodePID,
									DealerCashAmount,
									AutoID,
									InventoryStatus,
									PackageCode,
									MSRP,
									RegionCode,
									PriceModification,
									PortOption01,
									PortOption02,
									PortOption03,
									PortOption04,
									PortOption05,
									PortOption06,
									PortOption07,
									PortOption08,
									PortOption09,
									PortOption10,
									DealerOption01,
									DealerOption02,
									DealerOption03,
									DealerOption04,
									DealerOption05,
									DealerOption06,
									DealerOption07,
									DealerOption08,
									DealerOption09,
									DealerOption10
								)
					SELECT DISTINCT top(1000) husa.[C2PIOM_TotPIOMSRP],husa.[C2COST_AdvertsingCost],husa.[C2EXCL_ExteriorClrHMA],MapInteriorColorPID,HUSA.VehicleSeatColorID,
					husa.[C2DELR_DealerCodeCURRET],husa.[C2FOBP_BasePriceDCost],husa.[C2PIOD_TorPIODealer],husa.[C2FRTC_FreightCharge],husa.[C2CTNE_YearCentryCode],
					husa.[C2YRNE_ShortVINYear],husa.[C2MSRP_BasePriceMSRP]+husa.[PriceModification] as [C2MSRP_BasePriceMSRP],husa.[C2FVIN_FullVIN],husa.[C2FACM_TotFacAccMSRP],
					husa.[ColorDesc],husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear as [ModelYear],husa.[PackageDesc],husa.TransmissionDesc as TransmissionDesc,
					@MapVehiclePID,husa.[VehicleName],HUSA.MapModelCodePID,null,null,1,HUSA.C2IVST_InventoryStatus,HUSA.MapPackagePID,
					MSRP = case  when (CHARINDEX('_02',husa.MapModelCodePID) > 0 and @MapVehiclePID = 'E') 
						then (husa.C2MSRP_BasePriceMSRP + husa.C2FACM_TotFacAccMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge)
						else (husa.C2MSRP_BasePriceMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge) END,
					HUSA.[C2REGN_RegionCode],husa.[PriceModification],HUSA.C2PC01_PortInstlOPT1,HUSA.C2PC02_PortInstlOPT2,HUSA.C2PC03_PortInstlOPT3,
					HUSA.C2PC04_PortInstlOPT4,HUSA.C2PC05_PortInstlOPT5,HUSA.C2PC06_PortInstlOPT6,HUSA.C2PC07_PortInstlOPT7,HUSA.C2PC08_PortInstlOPT8,HUSA.C2PC09_PortInstlOPT9,
					HUSA.C2PC10_PortInstlOPT10,HUSA.C2PA01_FrtLoadPIO1,HUSA.C2PA02_FrtLoadPIO2,HUSA.C2PA03_FrtLoadPIO3,HUSA.C2PA04_FrtLoadPIO4,HUSA.C2PA05_FrtLoadPIO5,
					HUSA.C2PA06_FrtLoadPIO6,HUSA.C2PA07_FrtLoadPIO7,HUSA.C2PA08_FrtLoadPIO8,HUSA.C2PA09_FrtLoadPIO9,HUSA.C2PA10_FrtLoadPIO10 
					FROM dbo.fn_GetInventoryAll() HUSA  
						--INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D ON HUSA.C2DELR_DealerCodeCURRET=D.Value 
						INNER JOIN @ListDealerCode D ON d.Dealercode = HUSA.C2DELR_DealerCodeCURRET
					WHERE HUSA.MapVehiclePID = @MapVehiclePID  AND husa.ModelYear = @ModelYear 
					AND HUSA.[C2DSLD_DateSold]=0  
					AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0) 
					--AND (charindex(HUSA.MapModelCodePID,@NoPREZ)>0 OR charindex(HUSA.MapModelCodePID,@ModelCode)>0 ) 
					--AND charindex(HUSA.MapColorPID,@MapColorPID)>0 
					--AND charindex(HUSA.VehicleSeatColorID,@MapInteriorColorPID)>0 
					--AND (husa.MapPackagePID=@MapPackagePID OR charindex(husa.MapPackagePID,@PREZPackage) >0 ) 
					AND HUSA.C2IVST_InventoryStatus=ISNULL(@InventoryStatus, HUSA.C2IVST_InventoryStatus)
				END
			ELSE
				BEGIN
				  INSERT INTO @VehicleTable (
									   C2PIOM_TotPIOMSRP,
									   C2COST_AdvertsingCost,
									   C2EXCL_ExteriorClrHMA,
									   MapInteriorColorPID,
									   InteriorColorName,
									   C2DELR_DealerCodeCURRET,
									   C2FOBP_BasePriceDCost,
									   C2PIOD_TorPIODealer,
									   C2FRTC_FreightCharge,
									   C2CTNE_YearCentryCode,
									   C2YRNE_ShortVINYear,
									   C2MSRP_BasePriceMSRP,
									   C2FVIN_FullVIN,
									   C2FACM_TotFacAccMSRP,
									   ExColorDesc,
									   ModelYear,
									   PackageDesc,
									   TransmissionDesc,
									   MapVehiclePID,
									   VehicleName,
									   MapModelCodePID,
									   OrgModelCodePID,
									   DealerCashAmount,
									   AutoID,
									   InventoryStatus,
									   PackageCode,
									   MSRP,
									   RegionCode,
									   PriceModification,
									   PortOption01,
									   PortOption02,
									   PortOption03,
									   PortOption04,
									   PortOption05,
									   PortOption06,
									   PortOption07,
									   PortOption08,
									   PortOption09,
									   PortOption10,
									   DealerOption01,
									   DealerOption02,
									   DealerOption03,
									   DealerOption04,
									   DealerOption05,
									   DealerOption06,
									   DealerOption07,
									   DealerOption08,
									   DealerOption09,
									   DealerOption10
								 )		
				
				    EXECUTE sp_executesql @Select, @ParamDefs,
                                 @pMapVehiclePID = @MapVehiclePID,
                                 @pdealerCodes = @dealerCodes,
                                 @pMapModelCodePID = @MapModelCodePID,
                                 @pMapPackagePID = @MapPackagePID,
                                 @pMapColorPID = @MapColorPID,
                                 @pMapInteriorColorPID = @MapInteriorColorPID ,
                                 @pModelYear = @ModelYear,
                                 @pInventoryStatus = @InventoryStatus,
                                 @pNoPREZ = @NoPREZ,
                                 @pPREZPackage = @PREZPackage,
                                 @pModelCode = @ModelCode ;
             
			END 


       IF @DealerCashInd=1 
       BEGIN
              INSERT INTO @DealerCashTable (
                     RegionCode
                     , DealerCode
                     , ModelYear
                     , ModelCodePID
                     , VehiclePID )
              SELECT DISTINCT
                     vt.RegionCode
                     , vt.C2DELR_DealerCodeCURRET
                     , vt.ModelYear
                     , vt.MapModelCodePID
                     , vt.MapVehiclePID
              FROM @VehicleTable vt;

              UPDATE @DealerCashTable
              SET CashAmount = [dbo].[udf_getDealerCash](RegionCode, DealerCode, ModelYear, VehiclePID, ModelCodePID);
              UPDATE vt
              SET vt.DealerCashAmount = dt.CashAmount
              FROM @VehicleTable vt
                     INNER JOIN @DealerCashTable dt
                           ON vt.RegionCode = dt.RegionCode
                                  AND vt.C2DELR_DealerCodeCURRET = dt.DealerCode
                                  AND vt.ModelYear = dt.ModelYear
                                  AND vt.MapModelCodePID = dt.ModelCodePID
                                  AND vt.MapVehiclePID = dt.VehiclePID;
       END

       IF @OrgModelCodeInd=1 
       BEGIN

              INSERT INTO @ModelCodeTable (
                     MapModelCodePID
                     , ModelYear )
              SELECT DISTINCT
                     vt.ModelCodePID
                     , vt.ModelYear
              FROM  @DealerCashTable vt;

              UPDATE @ModelCodeTable
              SET OrgModelCode = [dbo].[udf_getOrgModelCode](MapModelCodePID, ModelYear);
       END

       SET NOCOUNT OFF;

-- Return the data
	  --insert into @VehicleTableDelete (vin)
	  --select C2FVIN_FullVIN
	  --from @VehicleTable
	  --group by C2FVIN_FullVIN having count(C2FVIN_FullVIN) > 1
	  
	  insert into @VehicleTableDelete (vin, seqno)
	  select a.C2FVIN_FullVIN, a.seqno
	  from @VehicleTable a
		join @VehicleTable b on a.C2FVIN_FullVIN = b.C2FVIN_FullVIN
			and a.seqno < b.seqno
	  where a.C2FVIN_FullVIN in (
		select distinct C2FVIN_FullVIN 
		from @VehicleTable
		group by C2FVIN_FullVIN having count(C2FVIN_FullVIN) > 1
	  )
	  		 
	--select * from @VehicleTableDelete

	delete org 
	from @VehicleTableDelete del
		join @VehicleTable org on del.vin = org.C2FVIN_FullVIN and del.seqno = org.seqno

       SELECT distinct top 500
                     C2PIOM_TotPIOMSRP,
                     C2COST_AdvertsingCost,
                     C2EXCL_ExteriorClrHMA,
                     MapInteriorColorPID,
                     InteriorColorName,
                     C2DELR_DealerCodeCURRET,
                     C2FOBP_BasePriceDCost
                     C2PIOD_TorPIODealer,
                     C2FRTC_FreightCharge,
                     C2CTNE_YearCentryCode,
                     C2YRNE_ShortVINYear,
                     C2MSRP_BasePriceMSRP,
                     C2FVIN_FullVIN,
                     C2FACM_TotFacAccMSRP,
                     ExColorDesc,
                     ModelYear,
                     PackageDesc,
                     TransmissionDesc,
                     MapVehiclePID,
                     VehicleName,
                     MapModelCodePID,
                     OrgModelCodePID,
                     DealerCashAmount,
                     AutoID,
                     InventoryStatus,
                     PackageCode,
                     MSRP,
                     RegionCode,
                     PriceModification,
                     PortOption01,
                     PortOption02,
                     PortOption03,
                     PortOption04,
                     PortOption05,
                     PortOption06,
                     PortOption07,
                     PortOption08,
                     PortOption09,
                     PortOption10,
                     DealerOption01,
                     DealerOption02,
                     DealerOption03,
                     DealerOption04,
                     DealerOption05,
                     DealerOption06,
                     DealerOption07,
                     DealerOption08,
                     DealerOption09,
                     DealerOption10
       FROM @VehicleTable;

       SELECT DISTINCT
              acc.ModelCode
              , acc.AccessoryCode
              , acc.[Desc]
       FROM Byo.VehicleAccessory acc
              INNER JOIN @VehicleTable vt
                     ON acc.ModelCode = vt.MapModelCodePID
                           AND acc.ModelYear = vt.ModelYear;
                           
       SELECT EquivalentModelCodeID
       FROM EquivalentModelCode
       WHERE [Year] = @ModelYear OR @ModelYear IS NULL;
END


GO
/****** Object:  StoredProcedure [dbo].[spSearchDealerInventory_HC]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Randy
-- Create date: 3/15/2014
-- Description:	This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
-- Modified: 11/27/2017, Erik Mildner, add interior color data.
-- Modified: 2/7/2019, Erik Mildner, uncommented @vehicleExclusion filter
-- Modified: 8/16/2019, Erik Mildner, fixed dealer filter inventory logic(2 or less)
-- Modified: 8/22/2019, Erik Mildner, removed dealer filter inventory logic(2 or less)
-- exec  [dbo].[spSearchDealerInventory_HC] '2','MO023,MO039,MO040,IL064,MO016,MO011,MO035,MO029,MO030,MO006,KS015,IL014,MO026,KS010,MO031',null,null,null,null,'2014','DS',29,1,1
--SELECT * FROm [dbo].[fnHCirle_Get_DealersInventory]('2','MO023,MO039,MO040,IL064,MO016,MO011,MO035,MO029,MO030,MO006,KS015,IL014,MO026,KS010,MO031',null,null,null,'2016',29)

-- =============================================
CREATE PROCEDURE [dbo].[spSearchDealerInventory_HC]
	@MapVehiclePID nvarchar(20),
	@dealerCodes varchar(200),
	@MapModelCodePID varchar(100) = NULL,
	@MapPackagePID varchar(20) = NULL,
	@MapColorPID varchar(10) = NULL,
	@MapInteriorColorPID varchar(50) = NULL,
	@ModelYear varchar(4) = NULL,
	@InventoryStatus varchar(4) = NULL,
	@PlanPID int,
	@DealerCashInd bit=0,
	@OrgModelCodeInd bit=1
	
	
	
AS
BEGIN

	DECLARE
		@VehicleTable table (
			C2PIOM_TotPIOMSRP [numeric](7, 2),
			C2COST_AdvertsingCost [numeric](7, 2),
			C2EXCL_ExteriorClrHMA varchar(10),
			--MapInteriorColorPID varchar(50),
			InteriorColorName varchar(100),
			C2DELR_DealerCodeCURRET varchar(5),
			C2FOBP_BasePriceDCost [numeric](7, 2),
			C2PIOD_TorPIODealer [numeric](7, 2),
			C2FRTC_FreightCharge [numeric](7, 2),
			C2CTNE_YearCentryCode varchar(2),
			C2YRNE_ShortVINYear varchar(2),
			C2MSRP_BasePriceMSRP [numeric](7, 2),
			C2FVIN_FullVIN varchar(17),
			C2FACM_TotFacAccMSRP [numeric](7, 2),
			ExColorDesc varchar(100),
			ModelYear varchar(4),
			PackageDesc varchar(100),
			TransmissionDesc varchar(100),
			MapVehiclePID varchar(20),
			VehicleName varchar(100),
			MapModelCodePID varchar(20),
			--OrgModelCodePID varchar(20),
			DealerCashAmount [numeric](7, 2),
			AutoID int,
			--InventoryStatus varchar(4),
			PackageMapPID varchar(20),
			--MSRP [numeric](7, 2),
			RegionCode varchar(2)
			--PriceModification money NULL
			--PortOption01 varchar(2) NULL,
			--PortOption02 varchar(2) NULL,
			--PortOption03 varchar(2) NULL,
			--PortOption04 varchar(2) NULL,
			--PortOption05 varchar(2) NULL,
			--PortOption06 varchar(2) NULL,
			--PortOption07 varchar(2) NULL,
			--PortOption08 varchar(2) NULL,
			--PortOption09 varchar(2) NULL,
			--PortOption10 varchar(2) NULL,
			--DealerOption01 varchar(2) NULL,
			--DealerOption02 varchar(2) NULL,
			--DealerOption03 varchar(2) NULL,
			--DealerOption04 varchar(2) NULL,
			--DealerOption05 varchar(2) NULL,
			--DealerOption06 varchar(2) NULL,
			--DealerOption07 varchar(2) NULL,
			--DealerOption08 varchar(2) NULL,
			--DealerOption09 varchar(2) NULL,
			--DealerOption10 varchar(2) NULL
		);
	DECLARE @vehicleExclusion table
	(ModelCode varchar(12) );
	
	 

	DECLARE
		@ModelCodeTable table (
			MapModelCodePID varchar(13)
			, ModelYear char(4)
			, OrgModelCode varchar(20) NULL
		);

	DECLARE
		 @DealerCashTable table (
			RegionCode varchar(2)
			, DealerCode varchar(5)
			, ModelYear char(4)
			, ModelCodePID varchar(13)
			, VehiclePID varchar(10)
			, CashAmount money null
		);

	DECLARE
		@NoPREZ varchar(50),
		@PREZPackage varchar(15),
		@ModelCode varchar(100);
	     

	SET NOCOUNT ON;

	-- Parameter cleanup
	IF(@MapVehiclePID = '') SET @MapVehiclePID = null;
	IF(@MapModelCodePID = '') SET @MapModelCodePID = null;
	IF(@MapPackagePID = '') SET @MapPackagePID = null;
	IF(@MapColorPID = '') SET @MapColorPID = null;
	IF(@MapInteriorColorPID = '') SET @MapInteriorColorPID = null;

	--Check for modelcode
	SET @ModelCode = '';
	SELECT  @ModelCode = @ModelCode + ',' + (CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
	FROM dbo.udf_Split(@MapModelCodePID , ',') M
		LEFT JOIN  [dbo].[EquivalentModelCode] E
			ON CHARINDEX(M.Value, [EquivalentModelCodeID]) > 0
			AND [Year] = @ModelYear;

	-- I don't know what PREZ is...
	SET @NoPREZ = '';
	SELECT @NoPREZ = @NoPREZ + ',' + PZEVVehicleModelCodeID 
	FROM [dbo].[PZEV_Packages]
	WHERE [OrgVehicleModelCodeID] = @MapModelCodePID 
		OR CHARINDEX([OrgVehicleModelCodeID], @ModelCode) > 0;
	SET @PREZPackage = '';
    ----------------------------------------------------------------------
    --Vehicle Exclusion
     DECLARE @PlanTypePID INT
     SELECT @PlanTypePID=PlanTypePID FROM [HyundaiApp].[profile].[Plan] WHERE PlanPID=@PlanPID
     INSERT INTO @vehicleExclusion
      SELECT   Byo.VehicleExclusions.VehicleModelCodeId
                FROM    Byo.ExclusionType
                        INNER JOIN Byo.VehicleExclusions ON Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                                                            AND Byo.ExclusionType.ExclusionTypePID = Byo.VehicleExclusions.ExclusionTypePID
                        LEFT OUTER JOIN profile.T_Company ON Byo.VehicleExclusions.CompanyPID = profile.T_Company.companyPID 
                WHERE   Byo.VehicleExclusions.modelyear = @ModelYear
                        AND Byo.VehicleExclusions.ExclusionTypePID = 2
                        AND VehicleId = @MapVehiclePID
                        AND Byo.VehicleExclusions.isActive = 1
                        AND Byo.VehicleExclusions.PlanTypePID IN (
                        @PlanTypePID, 0 )
                        AND Byo.VehicleExclusions.CompanyPID IN ('0', 0 ) 
    ----------------------------------------------------------------------
	DECLARE
	@ParamDefs nvarchar(1000),
	@Select nvarchar(4000)
	SET @ParamDefs = 
		'   @pMapVehiclePID varchar(20),'
		+ ' @pdealerCodes varchar(200),'
		+ ' @pMapModelCodePID varchar(100),'
		+ ' @pMapPackagePID varchar(20),'
		+ ' @pMapColorPID varchar(10),'
		+ ' @pMapInteriorColorPID varchar(50),'
		+ ' @pModelYear varchar(4),'
		+ ' @pInventoryStatus varchar(4),'
		+ ' @pNoPREZ varchar(50),'
		+ ' @pPREZPackage varchar(15),'
		+ ' @pModelCode varchar(100)';
		
		SET @SELECT = dbo.udf_GetInventorySearch_String_HC(@MapVehiclePID,
									@dealerCodes,
									@MapModelCodePID ,
									@MapPackagePID ,
									@MapColorPID ,
									@MapInteriorColorPID ,
									@ModelYear ,
									@InventoryStatus,
									@PlanPID
								  );

		SET @PREZPackage = [dbo].[udf_PREVPackage_GET_String] (@MapModelCodePID, @MapPackagePID, @ModelYear);

      	INSERT INTO @VehicleTable (
				C2PIOM_TotPIOMSRP,
				C2COST_AdvertsingCost,
				C2EXCL_ExteriorClrHMA,
				--MapInteriorColorPID,
				InteriorColorName,
				C2DELR_DealerCodeCURRET,
				C2FOBP_BasePriceDCost,
				C2PIOD_TorPIODealer,
				C2FRTC_FreightCharge,
				C2CTNE_YearCentryCode,
				C2YRNE_ShortVINYear,
				C2MSRP_BasePriceMSRP,
				C2FVIN_FullVIN,
				C2FACM_TotFacAccMSRP,
				ExColorDesc,
				ModelYear,
				PackageDesc,
				TransmissionDesc,
				MapVehiclePID,
				VehicleName,
				MapModelCodePID,
				--OrgModelCodePID,
				DealerCashAmount,
				AutoID,
				--InventoryStatus,
				PackageMapPID,
				--MSRP,
				RegionCode
				--PriceModification
				--PortOption01,
				--PortOption02,
				--PortOption03,
				--PortOption04,
				--PortOption05,
				--PortOption06,
				--PortOption07,
				--PortOption08,
				--PortOption09,
				--PortOption10,
				--DealerOption01,
				--DealerOption02,
				--DealerOption03,
				--DealerOption04,
				--DealerOption05,
				--DealerOption06,
				--DealerOption07,
				--DealerOption08,
				--DealerOption09,
				--DealerOption10
			)
			EXECUTE sp_executesql @Select, @ParamDefs,
						@pMapVehiclePID = @MapVehiclePID,
						@pdealerCodes = @dealerCodes,
						@pMapModelCodePID = @MapModelCodePID,
						@pMapPackagePID = @MapPackagePID,
						@pMapColorPID = @MapColorPID,
						@pMapInteriorColorPID = @MapInteriorColorPID ,
						@pModelYear = @ModelYear,
						@pInventoryStatus = @InventoryStatus,
						@pNoPREZ = @NoPREZ,
						@pPREZPackage = @PREZPackage,
						@pModelCode = @ModelCode ;
		print @select

    set @DealerCashInd=0
	IF @DealerCashInd=1 
	BEGIN
		INSERT INTO @DealerCashTable (
			RegionCode
			, DealerCode
			, ModelYear
			, ModelCodePID
			, VehiclePID )
		SELECT DISTINCT
			vt.RegionCode
			, vt.C2DELR_DealerCodeCURRET
			, vt.ModelYear
			, vt.MapModelCodePID
			, vt.MapVehiclePID
		FROM @VehicleTable vt;

		UPDATE @DealerCashTable
		SET CashAmount = [dbo].[udf_getDealerCash](RegionCode, DealerCode, ModelYear, VehiclePID, ModelCodePID);
		UPDATE vt
		SET vt.DealerCashAmount = dt.CashAmount
		FROM @VehicleTable vt
			INNER JOIN @DealerCashTable dt
				ON vt.RegionCode = dt.RegionCode
					AND vt.C2DELR_DealerCodeCURRET = dt.DealerCode
					AND vt.ModelYear = dt.ModelYear
					AND vt.MapModelCodePID = dt.ModelCodePID
					AND vt.MapVehiclePID = dt.VehiclePID;
	END

	IF @OrgModelCodeInd=1 
	BEGIN

		INSERT INTO @ModelCodeTable (
			MapModelCodePID
			, ModelYear )
		SELECT DISTINCT
			vt.ModelCodePID
			, vt.ModelYear
		FROM  @DealerCashTable vt;

		UPDATE @ModelCodeTable
		SET OrgModelCode = [dbo].[udf_getOrgModelCode](MapModelCodePID, ModelYear);
	END


	SET NOCOUNT OFF;

-- Return the data
	SELECT
			C2PIOM_TotPIOMSRP,
			C2COST_AdvertsingCost,
			C2EXCL_ExteriorClrHMA,
			--MapInteriorColorPID,
			InteriorColorName,
			C2DELR_DealerCodeCURRET,
			C2FOBP_BasePriceDCost,
			C2PIOD_TorPIODealer,
			C2FRTC_FreightCharge,
			C2CTNE_YearCentryCode,
			C2YRNE_ShortVINYear,
			C2MSRP_BasePriceMSRP,
			C2FVIN_FullVIN,
			C2FACM_TotFacAccMSRP,
			ExColorDesc,
			ModelYear,
			PackageDesc,
			TransmissionDesc,
			MapVehiclePID,
			VehicleName,
			MapModelCodePID,
			--OrgModelCodePID,
			DealerCashAmount,
			AutoID,
			--InventoryStatus,
			PackageMapPID,
			--MSRP,
			RegionCode
			--PriceModification
			--PortOption01,
			--PortOption02,
			--PortOption03,
			--PortOption04,
			--PortOption05,
			--PortOption06,
			--PortOption07,
			--PortOption08,
			--PortOption09,
			--PortOption10,
			--DealerOption01,
			--DealerOption02,
			--DealerOption03,
			--DealerOption04,
			--DealerOption05,
			--DealerOption06,
			--DealerOption07,
			--DealerOption08,
			--DealerOption09,
			--DealerOption10
			-----------------------------------

							--Dealer Info
						    ,replace(Dealer.dealer_name,'''','') as DealerName
							,replace(Dealer.Address1,'''','') as Address1
							,replace(Dealer.Address2,'''','') as Address2 
							,replace(Dealer.city,'''','') as City
							,Dealer.State
							,Dealer.Zip
							,Dealer.Sales_Phone as SalesPhone
			------------------------------------
	FROM @VehicleTable 
	INNER JOIN  HyundaiUSA.Dealer.DealerInfo (nolock) Dealer
					ON C2DELR_DealerCodeCURRET=Dealer.DealerCode and Dealer.[sales_phone] is not null
	WHERE MapModelCodePID NOT IN
	(SELECT ModelCode FROM  @vehicleExclusion)
	;

	--SELECT DISTINCT
	--	acc.ModelCode
	--	, acc.AccessoryCode
	--	, acc.[Desc]
	--FROM Byo.VehicleAccessory acc
	--	INNER JOIN @VehicleTable vt
	--		ON acc.ModelCode = vt.MapModelCodePID
	--			AND acc.ModelYear = vt.ModelYear;
				
	--SELECT EquivalentModelCodeID
	--FROM EquivalentModelCode
	--WHERE [Year] = @ModelYear OR @ModelYear IS NULL;
END


GO
/****** Object:  StoredProcedure [dbo].[spSearchDealerInventory_HyundaiUSA]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:           Randy
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
--Modified and optimized by Nick Nguyen
-- EXEC [dbo].[spSearchDealerInventory_HyundaiUSA] 'CA310'
-- =============================================
CREATE PROCEDURE [dbo].[spSearchDealerInventory_HyundaiUSA]
           @dealerCode varchar(200)
       
       
       
       
AS
BEGIN

       DECLARE
              @VehicleTable table (
                     C2PIOM_TotPIOMSRP [numeric](7, 2),
                     C2COST_AdvertsingCost [numeric](7, 2),
                     C2EXCL_ExteriorClrHMA varchar(10),
                     MapInteriorColorPID varchar(50),
                     InteriorColorName varchar(100),
                     C2DELR_DealerCodeCURRET varchar(5),
                     C2FOBP_BasePriceDCost [numeric](7, 2),
                     C2PIOD_TorPIODealer [numeric](7, 2),
                     C2FRTC_FreightCharge [numeric](7, 2),
                     C2CTNE_YearCentryCode varchar(2),
                     C2YRNE_ShortVINYear varchar(2),
                     C2MSRP_BasePriceMSRP [numeric](7, 2),
                     C2FVIN_FullVIN varchar(17),
                     C2FACM_TotFacAccMSRP [numeric](7, 2),
                     ExColorDesc varchar(100),
                     ModelYear varchar(4),
                     PackageDesc varchar(100),
                     TransmissionDesc varchar(100),
                     MapVehiclePID varchar(20),
                     VehicleName varchar(100),
                     MapModelCodePID varchar(20),
                     OrgModelCodePID varchar(20),
                     DealerCashAmount [numeric](7, 2),
                     InventoryStatus varchar(4),
                     PackageCode varchar(20),
                     MSRP [numeric](7, 2),
                     RegionCode varchar(2),
                     PriceModification money NULL
                    
                     
              );

       DECLARE
              @ModelCodeTable table (
                     MapModelCodePID varchar(13)
                     , ModelYear char(4)
                     , OrgModelCode varchar(20) NULL
              );

       DECLARE
              @DealerCashTable table (
                     RegionCode varchar(2)
                     , DealerCode varchar(5)
                     , ModelYear char(4)
                     , ModelCodePID varchar(13)
                     , VehiclePID varchar(10)
                     , CashAmount money null
              );

       DECLARE
              @NoPREZ varchar(50),
              @PREZPackage varchar(15),
              @ModelCode varchar(100);

       SET NOCOUNT ON;

       --Check for modelcode
       SET @ModelCode = '';
       INSERT INTO @VehicleTable (
                           C2PIOM_TotPIOMSRP,
                           C2COST_AdvertsingCost,
                           C2EXCL_ExteriorClrHMA,
                           MapInteriorColorPID,
                           InteriorColorName,
                           C2DELR_DealerCodeCURRET,
                           C2FOBP_BasePriceDCost,
                           C2PIOD_TorPIODealer,
                           C2FRTC_FreightCharge,
                           C2CTNE_YearCentryCode,
                           C2YRNE_ShortVINYear,
                           C2MSRP_BasePriceMSRP,
                           C2FVIN_FullVIN,
                           C2FACM_TotFacAccMSRP,
                           ExColorDesc,
                           ModelYear,
                           PackageDesc,
                           TransmissionDesc,
                           VehicleName,
                           MapVehiclePID,                          
                           MapModelCodePID,
                           OrgModelCodePID,
                           InventoryStatus,
                           PackageCode,
                           MSRP,
                           RegionCode,
                           PriceModification
                          
                           
                     )
                    SELECT DISTINCT top(500) husa.[C2PIOM_TotPIOMSRP],
                            husa.[C2COST_AdvertsingCost],
							husa.[C2EXCL_ExteriorClrHMA],
							MapInteriorColorPID,
							HUSA.VehicleSeatColorID,
							husa.[C2DELR_DealerCodeCURRET],
							husa.[C2FOBP_BasePriceDCost],
							husa.[C2PIOD_TorPIODealer],
							husa.[C2FRTC_FreightCharge],
							husa.[C2CTNE_YearCentryCode],
							husa.[C2YRNE_ShortVINYear],
							husa.[C2MSRP_BasePriceMSRP]+husa.[PriceModification] as [C2MSRP_BasePriceMSRP],
							husa.[C2FVIN_FullVIN]
						   ,husa.[C2FACM_TotFacAccMSRP],
							husa.[ColorDesc],
							husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear as [ModelYear],
							husa.[PackageDesc],
							husa.TransmissionDesc as TransmissionDesc,
							husa.[VehicleName],
							HUSA.MapModelCodePID,
						    MapModelCodePID,
							null,
							HUSA.C2IVST_InventoryStatus,
							HUSA.MapPackagePID,
							MSRP = case  when (CHARINDEX('_02',husa.MapModelCodePID) > 0 ) then (husa.C2MSRP_BasePriceMSRP + husa.C2FACM_TotFacAccMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge)else (husa.C2MSRP_BasePriceMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge) END,
							HUSA.[C2REGN_RegionCode],
							husa.[PriceModification]
							FROM dbo.fn_GetInventoryAll() HUSA  
							WHERE  HUSA.[C2DSLD_DateSold]=0  AND HUSA.C2DELR_DealerCodeCURRET=@dealerCode
							AND HUSA.C2IVST_InventoryStatus='DS'

-- Return the data
       SELECT
                     C2PIOM_TotPIOMSRP,
                     C2COST_AdvertsingCost,
                     C2EXCL_ExteriorClrHMA,
                     MapInteriorColorPID,
                     InteriorColorName,
                     C2DELR_DealerCodeCURRET,
                     C2FOBP_BasePriceDCost
                     C2PIOD_TorPIODealer,
                     C2FRTC_FreightCharge,
                     C2CTNE_YearCentryCode,
                     C2YRNE_ShortVINYear,
                     C2MSRP_BasePriceMSRP,
                     C2FVIN_FullVIN,
                     C2FACM_TotFacAccMSRP,
                     ExColorDesc,
                     ModelYear,
                     PackageDesc,
                     TransmissionDesc,
                     MapVehiclePID,
                     VehicleName,
                     MapModelCodePID,
                     OrgModelCodePID,
                     DealerCashAmount,
                     InventoryStatus,
                     PackageCode,
                     MSRP,
                     RegionCode,
                     PriceModification
                     
       FROM @VehicleTable
       WHERE InventoryStatus='DS'
     
       
       SELECT DISTINCT
              acc.ModelCode
              , acc.AccessoryCode
              , acc.[Desc]
              ,acc.ModelYear 
       FROM Byo.VehicleAccessory acc
              INNER JOIN @VehicleTable vt
                     ON acc.ModelCode = vt.MapModelCodePID
                       AND acc.ModelYear = vt.ModelYear;
                           
   
       ;
END


GO
/****** Object:  StoredProcedure [dbo].[spSearchDealerInventory_TEST]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:           Randy
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
--Modified and optimized by Nick Nguyen
-- 2/2/2017_DTon: Fixed performance issue when split dealer list into table + use modelyear instead of concatenate yr+century
/*

declare @p11 int
set @p11=0
exec sp_executesql N'EXEC @RETURN_VALUE = [spSearchDealerInventory_TEST] @MapVehiclePID = @p0, @dealerCodes = @p1, @MapModelCodePID = @p2, @MapPackagePID = @p3, 
@MapColorPID = @p4, @MapInteriorColorPID = @p5, @ModelYear = @p6, @InventoryStatus = @p7',N'@p0 nvarchar(4000),@p1 varchar(8000),@p2 varchar(8000),@p3 varchar(8000),
@p4 varchar(8000),@p5 varchar(8000),@p6 varchar(8000),@p7 varchar(8000),@RETURN_VALUE int output',@p0=N'4',
@p1='CA325,CA293,CA317,CA310,CA363',@p2='',@p3='',@p4='',@p5='',@p6='2017',@p7=NULL,@RETURN_VALUE=@p11 output
select @p11

*/

-- =============================================
CREATE PROCEDURE [dbo].[spSearchDealerInventory_TEST]
       @MapVehiclePID nvarchar(20),
       @dealerCodes varchar(200),
       @MapModelCodePID varchar(100) = NULL,
       @MapPackagePID varchar(20) = NULL,
       @MapColorPID varchar(10) = NULL,
       @MapInteriorColorPID varchar(50) = NULL,
       @ModelYear varchar(4) = NULL,
       @InventoryStatus varchar(4) = NULL,
       @DealerCashInd bit=0,
       @OrgModelCodeInd bit=1
       
AS
BEGIN

       DECLARE
			  @VehicleTableDelete table (	 
				SeqNo	int  NOT NULL, 
				VIN varchar(17)
				)

      declare @VehicleTable table (
					 SeqNo	int identity (1,1) NOT NULL, 
                     C2PIOM_TotPIOMSRP [numeric](7, 2),
                     C2COST_AdvertsingCost [numeric](7, 2),
                     C2EXCL_ExteriorClrHMA varchar(10),
                     MapInteriorColorPID varchar(50),
                     InteriorColorName varchar(100),
                     C2DELR_DealerCodeCURRET varchar(5),
                     C2FOBP_BasePriceDCost [numeric](7, 2),
                     C2PIOD_TorPIODealer [numeric](7, 2),
                     C2FRTC_FreightCharge [numeric](7, 2),
                     C2CTNE_YearCentryCode varchar(2),
                     C2YRNE_ShortVINYear varchar(2),
                     C2MSRP_BasePriceMSRP [numeric](7, 2),
                     C2FVIN_FullVIN varchar(17),
                     C2FACM_TotFacAccMSRP [numeric](7, 2),
                     ExColorDesc varchar(100),
                     ModelYear varchar(4),
                     PackageDesc varchar(100),
                     TransmissionDesc varchar(100),
                     MapVehiclePID varchar(20),
                     VehicleName varchar(100),
                     MapModelCodePID varchar(20),
                     OrgModelCodePID varchar(20),
                     DealerCashAmount [numeric](7, 2),
                     AutoID int,
                     InventoryStatus varchar(4),
                     PackageCode varchar(20),
                     MSRP [numeric](7, 2),
                     RegionCode varchar(2),
                     PriceModification money NULL,
                     PortOption01 varchar(2) NULL,
                     PortOption02 varchar(2) NULL,
                     PortOption03 varchar(2) NULL,
                     PortOption04 varchar(2) NULL,
                     PortOption05 varchar(2) NULL,
                     PortOption06 varchar(2) NULL,
                     PortOption07 varchar(2) NULL,
                     PortOption08 varchar(2) NULL,
                     PortOption09 varchar(2) NULL,
                     PortOption10 varchar(2) NULL,
                     DealerOption01 varchar(2) NULL,
                     DealerOption02 varchar(2) NULL,
                     DealerOption03 varchar(2) NULL,
                     DealerOption04 varchar(2) NULL,
                     DealerOption05 varchar(2) NULL,
                     DealerOption06 varchar(2) NULL,
                     DealerOption07 varchar(2) NULL,
                     DealerOption08 varchar(2) NULL,
                     DealerOption09 varchar(2) NULL,
                     DealerOption10 varchar(2) NULL
              );

       DECLARE
              @ModelCodeTable table (
                     MapModelCodePID varchar(13)
                     , ModelYear char(4)
                     , OrgModelCode varchar(20) NULL
              );

       DECLARE
              @DealerCashTable table (
                     RegionCode varchar(2)
                     , DealerCode varchar(5)
                     , ModelYear char(4)
                     , ModelCodePID varchar(13)
                     , VehiclePID varchar(10)
                     , CashAmount money null
              );

       DECLARE
              @NoPREZ varchar(50),
              @PREZPackage varchar(15),
              @ModelCode varchar(100);

       SET NOCOUNT ON;

       -- Parameter cleanup
       IF(@MapVehiclePID = '') SET @MapVehiclePID = null;
       IF(@MapModelCodePID = '') SET @MapModelCodePID = null;
       IF(@MapPackagePID = '') SET @MapPackagePID = null;
       IF(@MapColorPID = '') SET @MapColorPID = null;
       IF(@MapInteriorColorPID = '') SET @MapInteriorColorPID = null;

       --Check for modelcode
       SET @ModelCode = '';
       SELECT  @ModelCode = @ModelCode + ',' + (CASE WHEN E.EquivalentModelCodeID IS NULL THEN M.Value ELSE E.EquivalentModelCodeID END) 
       FROM dbo.udf_Split(@MapModelCodePID , ',') M
              LEFT JOIN  [dbo].[EquivalentModelCode] E
                     ON CHARINDEX(M.Value, [EquivalentModelCodeID]) > 0
                     AND [Year] = @ModelYear;

       -- I don't know what PREZ is...
       SET @NoPREZ = '';
       SELECT @NoPREZ = @NoPREZ + ',' + PZEVVehicleModelCodeID 
       FROM [dbo].[PZEV_Packages]
       WHERE [OrgVehicleModelCodeID] = @MapModelCodePID 
              OR CHARINDEX([OrgVehicleModelCodeID], @ModelCode) > 0;
       SET @PREZPackage = '';

       DECLARE
       @ParamDefs nvarchar(1000),
       @Select nvarchar(4000)
       SET @ParamDefs = 
              '   @pMapVehiclePID varchar(20),'
              + ' @pdealerCodes varchar(200),'
              + ' @pMapModelCodePID varchar(100),'
              + ' @pMapPackagePID varchar(20),'
              + ' @pMapColorPID varchar(10),'
              + ' @pMapInteriorColorPID varchar(50),'
              + ' @pModelYear varchar(4),'
              + ' @pInventoryStatus varchar(4),'
              + ' @pNoPREZ varchar(50),'
              + ' @pPREZPackage varchar(15),'
              + ' @pModelCode varchar(100)';
              
              SET @SELECT = dbo.udf_GetInventorySearch_String(@MapVehiclePID,
                                                              @dealerCodes,
                                                              @MapModelCodePID ,
                                                              @MapPackagePID ,
                                                              @MapColorPID ,
                                                              @MapInteriorColorPID ,
                                                              @ModelYear ,
                                                              @InventoryStatus
                                                         );
                                                             						 
      SET @PREZPackage = [dbo].[udf_PREVPackage_GET_String] (@MapModelCodePID, @MapPackagePID, @ModelYear);

	  DECLARE @ListDealerCode TABLE(Dealercode VARCHAR(5));  
	  INSERT INTO @ListDealerCode SELECT Value FROM dbo.udf_Split(@dealerCodes, ','); 

	  IF ( ISNULL(@ModelYear, '') <> '' AND ISNULL(@MapVehiclePID, '') <> '' AND ISNULL(@dealerCodes, '') <> '') 
		AND (@MapPackagePID IS NULL AND @MapColorPID IS NULL AND @MapInteriorColorPID IS NULL)
		BEGIN
				INSERT INTO @VehicleTable (
									C2PIOM_TotPIOMSRP,
									C2COST_AdvertsingCost,
									C2EXCL_ExteriorClrHMA,
									MapInteriorColorPID,
									InteriorColorName,
									C2DELR_DealerCodeCURRET,
									C2FOBP_BasePriceDCost,
									C2PIOD_TorPIODealer,
									C2FRTC_FreightCharge,
									C2CTNE_YearCentryCode,
									C2YRNE_ShortVINYear,
									C2MSRP_BasePriceMSRP,
									C2FVIN_FullVIN,
									C2FACM_TotFacAccMSRP,
									ExColorDesc,
									ModelYear,
									PackageDesc,
									TransmissionDesc,
									MapVehiclePID,
									VehicleName,
									MapModelCodePID,
									OrgModelCodePID,
									DealerCashAmount,
									AutoID,
									InventoryStatus,
									PackageCode,
									MSRP,
									RegionCode,
									PriceModification,
									PortOption01,
									PortOption02,
									PortOption03,
									PortOption04,
									PortOption05,
									PortOption06,
									PortOption07,
									PortOption08,
									PortOption09,
									PortOption10,
									DealerOption01,
									DealerOption02,
									DealerOption03,
									DealerOption04,
									DealerOption05,
									DealerOption06,
									DealerOption07,
									DealerOption08,
									DealerOption09,
									DealerOption10
								)
					SELECT DISTINCT top(700) husa.[C2PIOM_TotPIOMSRP],husa.[C2COST_AdvertsingCost],husa.[C2EXCL_ExteriorClrHMA],MapInteriorColorPID,HUSA.VehicleSeatColorID,
					husa.[C2DELR_DealerCodeCURRET],husa.[C2FOBP_BasePriceDCost],husa.[C2PIOD_TorPIODealer],husa.[C2FRTC_FreightCharge],husa.[C2CTNE_YearCentryCode],
					husa.[C2YRNE_ShortVINYear],husa.[C2MSRP_BasePriceMSRP]+husa.[PriceModification] as [C2MSRP_BasePriceMSRP],husa.[C2FVIN_FullVIN],husa.[C2FACM_TotFacAccMSRP],
					husa.[ColorDesc],husa.C2CTNE_YearCentryCode + husa.C2YRNE_ShortVINYear as [ModelYear],husa.[PackageDesc],husa.TransmissionDesc as TransmissionDesc,
					@MapVehiclePID,husa.[VehicleName],HUSA.MapModelCodePID,null,null,1,HUSA.C2IVST_InventoryStatus,HUSA.MapPackagePID,
					MSRP = case  when (CHARINDEX('_02',husa.MapModelCodePID) > 0 and @MapVehiclePID = 'E') 
						then (husa.C2MSRP_BasePriceMSRP + husa.C2FACM_TotFacAccMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge)
						else (husa.C2MSRP_BasePriceMSRP + husa.C2PIOM_TotPIOMSRP + husa.C2FRTC_FreightCharge) END,
					HUSA.[C2REGN_RegionCode],husa.[PriceModification],HUSA.C2PC01_PortInstlOPT1,HUSA.C2PC02_PortInstlOPT2,HUSA.C2PC03_PortInstlOPT3,
					HUSA.C2PC04_PortInstlOPT4,HUSA.C2PC05_PortInstlOPT5,HUSA.C2PC06_PortInstlOPT6,HUSA.C2PC07_PortInstlOPT7,HUSA.C2PC08_PortInstlOPT8,HUSA.C2PC09_PortInstlOPT9,
					HUSA.C2PC10_PortInstlOPT10,HUSA.C2PA01_FrtLoadPIO1,HUSA.C2PA02_FrtLoadPIO2,HUSA.C2PA03_FrtLoadPIO3,HUSA.C2PA04_FrtLoadPIO4,HUSA.C2PA05_FrtLoadPIO5,
					HUSA.C2PA06_FrtLoadPIO6,HUSA.C2PA07_FrtLoadPIO7,HUSA.C2PA08_FrtLoadPIO8,HUSA.C2PA09_FrtLoadPIO9,HUSA.C2PA10_FrtLoadPIO10 
					FROM dbo.fn_GetInventoryAll() HUSA  
						--INNER JOIN  dbo.udf_Split(@dealerCodes, ',') D ON HUSA.C2DELR_DealerCodeCURRET=D.Value 
						INNER JOIN @ListDealerCode D ON d.Dealercode = HUSA.C2DELR_DealerCodeCURRET
					WHERE HUSA.MapVehiclePID = @MapVehiclePID  AND husa.ModelYear = @ModelYear 
					AND HUSA.[C2DSLD_DateSold]=0  
					AND (HUSA.[C2FRTC_FreightCharge] <> 0 OR HUSA.[C2COST_AdvertsingCost]<>0) 
					--AND (charindex(HUSA.MapModelCodePID,@NoPREZ)>0 OR charindex(HUSA.MapModelCodePID,@ModelCode)>0 ) 
					--AND charindex(HUSA.MapColorPID,@MapColorPID)>0 
					--AND charindex(HUSA.VehicleSeatColorID,@MapInteriorColorPID)>0 
					--AND (husa.MapPackagePID=@MapPackagePID OR charindex(husa.MapPackagePID,@PREZPackage) >0 ) 
					AND HUSA.C2IVST_InventoryStatus=ISNULL(@InventoryStatus, HUSA.C2IVST_InventoryStatus)
				END
			ELSE
				BEGIN
				  INSERT INTO @VehicleTable (
									   C2PIOM_TotPIOMSRP,
									   C2COST_AdvertsingCost,
									   C2EXCL_ExteriorClrHMA,
									   MapInteriorColorPID,
									   InteriorColorName,
									   C2DELR_DealerCodeCURRET,
									   C2FOBP_BasePriceDCost,
									   C2PIOD_TorPIODealer,
									   C2FRTC_FreightCharge,
									   C2CTNE_YearCentryCode,
									   C2YRNE_ShortVINYear,
									   C2MSRP_BasePriceMSRP,
									   C2FVIN_FullVIN,
									   C2FACM_TotFacAccMSRP,
									   ExColorDesc,
									   ModelYear,
									   PackageDesc,
									   TransmissionDesc,
									   MapVehiclePID,
									   VehicleName,
									   MapModelCodePID,
									   OrgModelCodePID,
									   DealerCashAmount,
									   AutoID,
									   InventoryStatus,
									   PackageCode,
									   MSRP,
									   RegionCode,
									   PriceModification,
									   PortOption01,
									   PortOption02,
									   PortOption03,
									   PortOption04,
									   PortOption05,
									   PortOption06,
									   PortOption07,
									   PortOption08,
									   PortOption09,
									   PortOption10,
									   DealerOption01,
									   DealerOption02,
									   DealerOption03,
									   DealerOption04,
									   DealerOption05,
									   DealerOption06,
									   DealerOption07,
									   DealerOption08,
									   DealerOption09,
									   DealerOption10
								 )		
				
				    EXECUTE sp_executesql @Select, @ParamDefs,
                                 @pMapVehiclePID = @MapVehiclePID,
                                 @pdealerCodes = @dealerCodes,
                                 @pMapModelCodePID = @MapModelCodePID,
                                 @pMapPackagePID = @MapPackagePID,
                                 @pMapColorPID = @MapColorPID,
                                 @pMapInteriorColorPID = @MapInteriorColorPID ,
                                 @pModelYear = @ModelYear,
                                 @pInventoryStatus = @InventoryStatus,
                                 @pNoPREZ = @NoPREZ,
                                 @pPREZPackage = @PREZPackage,
                                 @pModelCode = @ModelCode ;
             
			END 


       IF @DealerCashInd=1 
       BEGIN
              INSERT INTO @DealerCashTable (
                     RegionCode
                     , DealerCode
                     , ModelYear
                     , ModelCodePID
                     , VehiclePID )
              SELECT DISTINCT
                     vt.RegionCode
                     , vt.C2DELR_DealerCodeCURRET
                     , vt.ModelYear
                     , vt.MapModelCodePID
                     , vt.MapVehiclePID
              FROM @VehicleTable vt;

              UPDATE @DealerCashTable
              SET CashAmount = [dbo].[udf_getDealerCash](RegionCode, DealerCode, ModelYear, VehiclePID, ModelCodePID);
              UPDATE vt
              SET vt.DealerCashAmount = dt.CashAmount
              FROM @VehicleTable vt
                     INNER JOIN @DealerCashTable dt
                           ON vt.RegionCode = dt.RegionCode
                                  AND vt.C2DELR_DealerCodeCURRET = dt.DealerCode
                                  AND vt.ModelYear = dt.ModelYear
                                  AND vt.MapModelCodePID = dt.ModelCodePID
                                  AND vt.MapVehiclePID = dt.VehiclePID;
       END

       IF @OrgModelCodeInd=1 
       BEGIN

              INSERT INTO @ModelCodeTable (
                     MapModelCodePID
                     , ModelYear )
              SELECT DISTINCT
                     vt.ModelCodePID
                     , vt.ModelYear
              FROM  @DealerCashTable vt;

              UPDATE @ModelCodeTable
              SET OrgModelCode = [dbo].[udf_getOrgModelCode](MapModelCodePID, ModelYear);
       END

       SET NOCOUNT OFF;

-- Return the data
	  --insert into @VehicleTableDelete (vin)
	  --select C2FVIN_FullVIN
	  --from @VehicleTable
	  --group by C2FVIN_FullVIN having count(C2FVIN_FullVIN) > 1
	  
	  insert into @VehicleTableDelete (vin, seqno)
	  select a.C2FVIN_FullVIN, a.seqno
	  from @VehicleTable a
		left join @VehicleTable b on a.C2FVIN_FullVIN = b.C2FVIN_FullVIN
			and a.seqno < b.seqno
	  where a.C2FVIN_FullVIN in (
		select distinct C2FVIN_FullVIN 
		from @VehicleTable
		group by C2FVIN_FullVIN having count(C2FVIN_FullVIN) > 1
	  )
	  		 
	--select * from @VehicleTableDelete

	delete org 
	from @VehicleTableDelete del
		join @VehicleTable org on del.vin = org.C2FVIN_FullVIN and del.seqno = org.seqno

       SELECT 
                     C2PIOM_TotPIOMSRP,
                     C2COST_AdvertsingCost,
                     C2EXCL_ExteriorClrHMA,
                     MapInteriorColorPID,
                     InteriorColorName,
                     C2DELR_DealerCodeCURRET,
                     C2FOBP_BasePriceDCost
                     C2PIOD_TorPIODealer,
                     C2FRTC_FreightCharge,
                     C2CTNE_YearCentryCode,
                     C2YRNE_ShortVINYear,
                     C2MSRP_BasePriceMSRP,
                     C2FVIN_FullVIN,
                     C2FACM_TotFacAccMSRP,
                     ExColorDesc,
                     ModelYear,
                     PackageDesc,
                     TransmissionDesc,
                     MapVehiclePID,
                     VehicleName,
                     MapModelCodePID,
                     OrgModelCodePID,
                     DealerCashAmount,
                     AutoID,
                     InventoryStatus,
                     PackageCode,
                     MSRP,
                     RegionCode,
                     PriceModification,
                     PortOption01,
                     PortOption02,
                     PortOption03,
                     PortOption04,
                     PortOption05,
                     PortOption06,
                     PortOption07,
                     PortOption08,
                     PortOption09,
                     PortOption10,
                     DealerOption01,
                     DealerOption02,
                     DealerOption03,
                     DealerOption04,
                     DealerOption05,
                     DealerOption06,
                     DealerOption07,
                     DealerOption08,
                     DealerOption09,
                     DealerOption10
       FROM @VehicleTable;

       SELECT DISTINCT
              acc.ModelCode
              , acc.AccessoryCode
              , acc.[Desc]
       FROM Byo.VehicleAccessory acc
              INNER JOIN @VehicleTable vt
                     ON acc.ModelCode = vt.MapModelCodePID
                           AND acc.ModelYear = vt.ModelYear;
                           
       SELECT EquivalentModelCodeID
       FROM EquivalentModelCode
       WHERE [Year] = @ModelYear OR @ModelYear IS NULL;
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateProgramRuleAndFAQ]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Date: 6/28/2024
-- Author:Swapnil U. Suryawanshi
-- Description: It updates the file path of Program Rule and FAQ for specified plan
-- exec [dbo].[spUpdateProgramRuleAndFAQ] @Id = 2, @PlanTypePID =1 , @ProgramRuleFile = null, @FAQFile = null, @OperationBy = 240
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateProgramRuleAndFAQ]
(
	@Id INT,
	@PlanTypePID INT,
	@ProgramRuleFile VARBINARY(MAX) = NULL,
	@FAQFile VARBINARY(MAX) = NULL,
	@OperationBy INT
)
AS
BEGIN
		UPDATE [dbo].[ProgramRuleAndFAQFiles]
		SET
			ProgramRuleFile = ISNULL(@ProgramRuleFile, ProgramRuleFile),
			FAQFile = ISNULL(@FAQFile, FAQFile),
			ModifiedBy = @OperationBy,
			ModifiedDate = GETDATE()
		WHERE Id = @Id AND PlanTypePID = @PlanTypePID

		RETURN ISNULL(@@ROWCOUNT,0)
END
GO
/****** Object:  StoredProcedure [developer].[spGetPinAllPerCompany]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:          dton
-- Create date: 8/5/2015
-- Description:     util to print the pin active / in active per company
-- sample: 
-- EXEC [developer].[spGetPinAllPerCompany] 1957, NULL -- RE/MAX
-- EXEC [developer].[spGetPinAllPerCompany] NULL, 'CID-636417' -- RE/MAX
-- Modify
-- =============================================

CREATE PROCEDURE [developer].[spGetPinAllPerCompany]
      @CompanyPID INT = NULL,
      @CompanyID  VARCHAR(30) = NULL
AS
     SELECT companyID,
            companyName,
            PinCode,
            IssueDate,
            ExpirationDate,
            VIN,
            d.[Year] AS modelyear,
            c2delr_dealercodeCURRET AS DealerCode,
            di.dealer_name,
            MSRP,
            HCDiscount,
            HCInvoice,
            HCCash,
            HCCoupon,
            Incentive,
            HCECash,
            PinStatus,
            FirstName,
            MiddleInitial,
            LastName,
            d.Address1,
            d.Address2,
            d.City,
            StateID,
            Zipcode,
            Email,
            Phone1,
            Phone2,
            Fax,
            m.vehiclemodelCodeID AS SAPModelCode --, byo.VehicleName, byo.ModelYear,
     FROM [PIN].[VWPINDetailDT] d
          JOIN [mig].[Tb_400_VWVM2P_VINMaster] m ON d.vin = m.[C2FVIN_FullVIN]
          JOIN hyundaiusa.dealer.dealerinfo di ON di.dealercode = m.c2delr_dealercodeCURRET
     --join [Byo].[As400Map] byo on byo.MapModelCodePID = m.vehiclemodelCodeID
     WHERE( companypid = @CompanyPID
         OR companyID = @CompanyID
          )
      AND vin IS NOT NULL;
GO
/****** Object:  StoredProcedure [mig].[profile_importProfile]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec mig.profile_importProfile
CREATE proc [mig].[profile_importProfile]
AS BEGIN



----------------------------------------
--Update userID
--update [HyundaiApp].[profile].[HMM_TempCompare]
--SET userID='HMM'+UserID
----------------------------------------
DECLARE @GlobalRefID uniqueidentifier
DECLARE @FirstName varchar(50),@Lastname varchar(50),@Email varchar(50),@UserID varchar(20)
DECLARE @ErrorMsg varchar(200)

BEGIN TRANSACTION;
	BEGIN TRY
			DECLARE Input_Cursor  CURSOR FOR
			SELECT 
			
			[UserID]
				  ,[FirstName]
				  ,[LastName]
				  ,[Email]
			  FROM [HyundaiApp].[profile].[HMM_TempCompare]
			 where USERid not in
				(select userid from profile.T_user)
			OPEN Input_cursor
					FETCH NEXT FROM Input_cursor INTO
					@UserID,@FirstName,@LastName,@Email
				 WHILE @@FETCH_STATUS=0
					BEGIN
					SET @GlobalRefID=newid()
					INSERT INTO [HyundaiApp].[profile].[T_Profile]
					   ([GlobalRefID]
					   ,[FirstName]
					   ,[LastName]
					   ,[Email]
					   ,[isActive]
					 --  ,[RelationShipPID]
					   )
					 SELECT
						  @GlobalRefID
						   ,@FirstName
							,@LastName
						   ,isnull(@Email,@UserID+'@hmm.com')
						   ,1--<isActive, bit,>
						  -- ,17
						   
				   
					INSERT INTO [HyundaiApp].[profile].[T_User]
					   ([GlobalID]
					   ,[companyPID]
					   ,[UserID]
					   ,[Password]
					   ,[Enabled]
					   ,[lLockedOut]
					   ,[nBadLoginCount]
					   ,[lockoutExpires]
					   ,[MustChangePassword]
					   ,[IsActive]
					   ,[NeedsApproval])
				  SELECT
					   @GlobalRefID
					   ,11
					   ,@UserID
					   ,'XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg='
					   ,1
					   ,0
					   ,0
					   ,'2010-01-26 15:37:18.640'
					   ,0
					   ,1
					   ,0



                  INSERT INTO [HyundaiApp].[profile].[Role_User]
							   ([Role_PID]
							   ,[UserPID]
							   ,[IsActive])
					SELECT top 1
						   1
						   ,UserPID
						   ,1
						   FROM profile.T_User
					WHERE UserID=@UserID
					
				 print 'insert'+ @UserID
					
					FETCH NEXT FROM Input_cursor INTO
						@UserID,@FirstName,@LastName,@Email
					END
				CLOSE Input_cursor
				DEALLOCATE Input_cursor
END TRY

BEGIN CATCH
		  SET @ErrorMsg =ERROR_PROCEDURE()
          SELECT 
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
		BEGIN
        ROLLBACK TRANSACTION;
  --      --Send email
  --      EXEC msdb.dbo.sp_send_dbmail @profile_name='EmailSQL',
		--	@recipients='nnguyen@hisna.com',
		--	@subject='Error',
		--	@body= @ErrorMsg 
		print 'go to rollback'
			        
        END

END CATCH



IF @@TRANCOUNT > 0
    BEGIN
		COMMIT TRANSACTION;
		 -- EXEC msdb.dbo.sp_send_dbmail @profile_name='EmailSQL',
			--	@recipients='nnguyen@hisna.com',
			--	@subject='Good',
			--	@body='Good'
		 print 'good'
    END
	
END




GO
/****** Object:  StoredProcedure [mig].[sp_Import_AS400_Color_Update]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:           Randy
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
--Modified and optimized by Nick Nguyen
-- 11/17/2015_DTON: Added workaround for 2016 Sonata Hyrid-PlugIn. Basically, if we see Series = G then change it to G + L
-- 12/14/2015 -- remove 11/17/2015
-- 10/21/2016 -- include filter for model year for Equus: (E). The G90 should not include _1 or _2 
-- EX: exec [mig].[sp_Import_AS400_Color_Update] 
-- =============================================

CREATE proc [mig].[sp_Import_AS400_Color_Update] 
AS
BEGIN

     DECLARE @LastYear int, @CurrentYear int, @NextYear int, @RecCount int =0

	SELECT @CurrentYear = datepart(yyyy, getdate()),
		  @LastYear = @CurrentYear - 1, 
		  @NextYear =  @CurrentYear + 1

     SELECT @RecCount = Count(*) FROM HyundaiUSA.dwh.ModelColorDesc
	WHERE ModelYear in (@CurrentYear, @NextYear)


	IF (EXISTS (Select 1 FROM  [HyundaiUSA].[Raw].[VWCCMP])) AND @RecCount > 20 
	BEGIN 
			DELETE FROM Byo.VWCCMP
			INSERT INTO Byo.VWCCMP
			   ([S5PLTC]
			   ,[S5CTNE]
			   ,[S5YRNE]
			   ,[S5SERI]
			   ,[S5FMLY]
			   ,[S5DOOR]
			   ,[S5TRIM]
			   ,[S5TRAN]
			   ,[S5EXCL]
			   ,[S5INCL]
			   ,[S5EXDS]
			   ,[S5INDS]
			   ,VehicleModelCodeID
			   )
			SELECT [S5PLTC]
			  ,[S5CTNE]
			  ,[S5YRNE]
			  ,[S5SERI]
			  ,[S5FMLY]
			  ,[S5DOOR]
			  ,[S5TRIM]
			  ,[S5TRAN]
			  ,[S5EXCL]
			  ,[S5INCL]
			  ,[S5EXDS]
			  ,[S5INDS]
			  ,CASE WHEN  S5SERI='E' AND CAST([S5YRNE] AS INT) < 17 THEN  left(ModelCode,8) + '_01' ELSE left(ModelCode,8) END
		  FROM [HyundaiUSA].[Raw].[VWCCMP]

		  INSERT INTO Byo.VWCCMP
			   ([S5PLTC]
			   ,[S5CTNE]
			   ,[S5YRNE]
			   ,[S5SERI]
			   ,[S5FMLY]
			   ,[S5DOOR]
			   ,[S5TRIM]
			   ,[S5TRAN]
			   ,[S5EXCL]
			   ,[S5INCL]
			   ,[S5EXDS]
			   ,[S5INDS]
			   ,VehicleModelCodeID
			   )
			SELECT [S5PLTC]
			  ,[S5CTNE]
			  ,[S5YRNE]
			  ,[S5SERI]
			  ,[S5FMLY]
			  ,[S5DOOR]
			  ,[S5TRIM]
			  ,[S5TRAN]
			  ,[S5EXCL]
			  ,[S5INCL]
			  ,[S5EXDS]
			  ,[S5INDS]
			  , left(ModelCode,8) + '_02'
		  FROM [HyundaiUSA].[Raw].[VWCCMP]
		  WHERE   S5SERI='E' AND CAST([S5YRNE] AS INT) < 17



		 UPDATE Byo.VWCCMP
				SET VehicleID=S5SERI,
				VehicleColorID =Replace(S5EXCL,' ','')
				,VehicleInteriorColorID=S5INCL
				,VehicleInteriorColorDesc=S5INDS

		 DELETE FROM Byo.VWCCMP
		 WHERE  mig.udf_isBadColor(S5EXDS)=1


		 ------------------------------------------------------
		  UPDATE  HUSA
		  SET VehicleSeatColorID=D.SeatColorDesc
		  FROM Byo.VWCCMP HUSA
		  INNER JOIN HyundaiUSA.dwh.ModelColorDesc D
			ON charindex(D.ModelCode,HUSA.VehicleModelCodeID)>0
			AND S5CTNE+S5YRNE=D.ModelYear
			AND ExteriorColorCode=HUSA.VehicleColorID
			AND InteriorColorCode=HUSA.VehicleInteriorColorID
		   WHERE D.isdeleted=0

		END


END
GO
/****** Object:  StoredProcedure [mig].[sp_Import_AS400_Package_Update]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Don't know
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
--  Modified and optimized by Nick Nguyen
--  10/21/2016_DTN: Add logic for G90 -- Series E with _1, _2 should stop after 2016 model year 
-- exec [mig].[sp_Import_AS400_Package_Update] 
-- =============================================
CREATE proc [mig].[sp_Import_AS400_Package_Update] 
AS
BEGIN

	IF EXISTS (Select * FROM  [HyundaiUSA].[Raw].[VPKGDS])
	BEGIN
		DELETE FROM Byo.VPKGDS	

			INSERT INTO [Byo].[VPKGDS]
			   ([Year]
			   ,[Series]
			   ,[Family]
			   ,[Door]
			   ,[Trim]
			   ,[Trans]
			   ,[ACCCode]
			   ,[AccGroupCode]
			   ,[Description]
			   ,VehicleModelCodeID
			   )
				 SELECT [Year]
				  ,[Series]
				  ,[Family]
				  ,[Door]
				  ,[Trim]
				  ,[Trans]
				  ,[ACCCode]
				  ,[AccGroupCode]
				  ,[Description]
				  ,Case when [Series]='E' AND [Year] < 2017 THEN ModelCode+'_'+REPLACE(ACCCode,'NO','01') ELSE ModelCode END
			  FROM [HyundaiUSA].[Raw].[VPKGDS]

		  UPDATE Byo.VPKGDS
			SET 
			 VehicleID=replace(Series,' ',''),
			 VehiclePackageID=CASE WHEN ACCCode='NO' THEN [mig].[udf_PackageCodeNoOption_get](VehicleModelCodeID) 
							ELSE [dbo].[udf_Package_GetPackageCodeByTrimAndPackageID](VehicleModelCodeID,AccCode,[Year]) END

		   UPDATE Byo.VPKGDS
			SET  CombineDesc= CASE WHEN ACCCode='NO' THEN [Description]
			ELSE [dbo].[udf_Package_GetPackageDescByTrimAndPackageID](VehicleModelCodeID,AccCode,Year) END
			
			
			
			--Clean up the misbuilt package
			Delete from Byo.VPKGDS
			where CombineDesc like '%MISBuilt%'
			
				--------------------------------------------------------------------------------------------------
		--Insert one more time to get all the posible
		
		--	INSERT INTO [Byo].[VPKGDS]
		--	   ([Year]
		--	   ,[Series]
		--	   ,[Family]
		--	   ,[Door]
		--	   ,[Trim]
		--	   ,[Trans]
		--	   ,[ACCCode]
		--	   ,[AccGroupCode]
		--	   ,[Description]
		--	   ,VehicleModelCodeID
		--	    ,VehicleID
		--	    ,VehiclePackageID
		--	    ,  CombineDesc
		--	   )
		--		 SELECT [Year]
		--		  ,[Series]
		--		  ,[Family]
		--		  ,[Door]
		--		  ,[Trim]
		--		  ,[Trans]
		--		  ,[ACCCode]
		--		  ,[AccGroupCode]
		--		  ,[Description]
		--		  ,Case when [Series]='E' THEN ModelCode+'_'+REPLACE(ACCCode,'NO','01') ELSE ModelCode END
		--		  ,replace(Series,' ','')
		--		  , CASE WHEN ACCCode IN ('NO','01') THEN '01'
		--		  ELSE ACCCode+'-' + AccGroupCode END
		--		  , REPLACE([Description],':',',')
		--	  FROM [HyundaiUSA].[Raw].[VPKGDS]
		----------------------------------------------------------------------------------------------------



		 --Run the sp to update the PZEV table.
		 ------------------------------------------------------------------------------------------
		 --Remove duplicate package in the EquivalentPackage.
		 DELETE VP
		 FROM Byo.VPKGDS VP
		 INNER JOIN dbo.EquivalentPackage P
	 			ON  VP.VehiclePackageID=P.OrgVehiclePackageID
	 			AND VP.[Year]=P.[Year]
	 			AND VP.VehicleModelCodeID=P.ModelCode
		---------------------------------------------------------------------------------------------

		 EXEC [mig].[sp_PZEV_Update]
	END 
END


GO
/****** Object:  StoredProcedure [mig].[sp_Import_AS400_Trim_Update]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Don't know
-- Create date: 3/15/2014
-- Description:      This one replace the function get dbo.fnHCirle_Get_DealersInventory_ALL
-- Modified: 2/27/2018, Erik Mildner, modified insert query for INSERT INTO Byo.[VWMCMP]
--  10/21/2016_DTN: Add logic for G90 -- Series E with _1, _2 should stop after 2016 model year 
-- Modified: Erik Mildner, 8/1/2018, Added deletion of 2019
-- Modified: 9/21/2018, Erik Mildner, removed PZEV filtering code
-- Modified: 12/7/2018, Erik Mildner, added NOT IN ('B', 'E', 'S', 'T', 'R')
-- Modified: 4/11/2019, Erik Mildner, Added: S4YRNE IN('20')
-- exec [mig].[sp_Import_AS400_Trim_Update] 
-- =============================================
CREATE proc [mig].[sp_Import_AS400_Trim_Update] 
AS
BEGIN

    DECLARE @LatestDate datetime
    SELECT top 1 @LatestDate=datemodified FROM HyundaiUSA.Byo.VehicleExteriorColor order by DateModified desc
    SET @LatestDate= DATEADD(mi,-1,@LatestDate)

    DECLARE @ErrorMsg  varchar(200)
	BEGIN TRANSACTION;
		BEGIN TRY
			BEGIN		

				DELETE FROM Byo.VWMCMP
				WHERE S4YRNE IN('17', '18', '19', '20') AND [S4SERI] NOT IN ('B', 'E', 'S', 'T', 'R')

				INSERT INTO Byo.[VWMCMP]
					   ([S4PLTC]
					   ,[S4CTNE]
					   ,[S4YRNE]
					   ,[S4SERI]
					   ,[S4FMLY]
					   ,[S4DOOR]
					   ,[S4TRIM]
					   ,[S4TRAN]
					   ,[S4SERD]
					   ,[S4DORD]
					   ,[S4TRMD]
					   ,[S4TRND]
					   ,EngineDesc
					   ,VehicleModelCodeID
					   
					   )

				SELECT distinct [S4PLTC]
						  ,RTRIM(LTRIM([S4CTNE]))
						  ,RTRIM(LTRIM([S4YRNE]))
						  ,[S4SERI]
						  ,[S4FMLY]
						  ,[S4DOOR]
						  ,RTRIM(LTRIM([S4TRIM]))
						  ,RTRIM(LTRIM([S4TRAN]))
						  ,RTRIM(LTRIM([S4SERD]))
						  ,[S4DORD]
						 ,Replace(coalesce([PowertrainName],RTRIM(S4SERD)+' '+EngineDesc),M.VehicleName,'')												  
						  ,Replace(coalesce([PowertrainName],RTRIM(S4SERD)+' '+EngineDesc),M.VehicleName,'')	
						 ,EngineDesc
						 ,CASE WHEN [S4SERI]='E' and PowertrainName  like '%Signature%'  AND CAST([S4YRNE] AS INT) < 17 THEN left(B.ModelCode,8)+'_01'
							   WHEN [S4SERI]='E' and PowertrainName not like '%Signature%' AND CAST([S4YRNE] AS INT) < 17 THEN left(B.ModelCode,8)+'_02'
						  ELSE left(B.ModelCode,8) END
					
				FROM [HyundaiUSA].[Byo].[VehiclePowertrain] A
						  RIGHT JOIN  [HyundaiUSA].[Raw].[VWMCMP] B
						  ON charindex(left(B.ModelCode,8),A.ModelCode)>0
							  and  substring([VehiclePowertrainId],charindex('-en-US',[VehiclePowertrainId])-4,4)=B.[S4CTNE]+B.[S4YRNE]
						  LEFT JOIN  (
							  select 
								  ModelCode,
								  substring([VehiclePowertrainId],charindex('-en-US',[VehiclePowertrainId])-4,4) as ModelYear,
								  count(*) as cnt
							  from [HyundaiUSA].[Byo].[VehiclePowertrain] 
							  WHERE DisplayFlag = 'Inventory'
							  group by ModelCode, substring([VehiclePowertrainId],charindex('-en-US',[VehiclePowertrainId])-4,4)
						  ) C on CONCAT(B.[S4CTNE],B.[S4YRNE])=C.ModelYear and left(B.ModelCode,8)=C.ModelCode
						  INNER JOIN Byo.VehicleModel M
						  ON M.VehicleId=B.S4SERI
						  and CONCAT([S4CTNE],[S4YRNE]) = COALESCE(M.VehicleYear, CONCAT([S4CTNE],[S4YRNE]))
						  where S4YRNE in ('12','13','14','15','16','17','18','19','20')
						  AND (A.DateModified>@LatestDate OR A.DateModified IS NULL)
						  AND (C.cnt is null or A.DisplayFlag = 'Inventory')

					--AND A.ModelCode is null


				UPDATE Byo.VWMCMP
					SET VehicleID=Replace(S4SERI,' ','')

				DELETE FROM [dbo].[EquivalentModelCode]
				INSERT INTO [dbo].[EquivalentModelCode]
							   ([EquivalentModelCodeID],
							    YEAR)
				SELECT distinct[ModelCode], 
						 substring([VehiclePowertrainId],charindex('-en-US',[VehiclePowertrainId])-4,4)
				FROM [HyundaiUSA].[Byo].[VehiclePowertrain]
				WHERE CHARINDEX(',',modelcode)>0

					 --------------------------------------------------------------------
					 /****** Update display flag  ******/
					 --Reset the flag
				UPDATE [Byo].[VWMCMP]
					SET isDisplayed=0
						 ,HyundaiFleetModelCode='0';
					---------------------------

				UPDATE A
						SET A.isDisplayed= 1
				FROM [Byo].[VWMCMP] A
					 INNER JOIN
							(
							SELECT
								  [S4TRMD],
								  S4CTNE,
								  S4YRNE,
								  S4SERI,
								 max([VehicleModelCodeID]) as VehicleModelCodeID
							  FROM [Byo].[VWMCMP]			 
							 --WHERE  ( (RIGHT(VehicleModelCodeID,1)<> 'P') OR (RIGHT(VehicleModelCodeID,1) = 'P' AND S4SERI = 'L' ))--no PREZ	
							 GROUP BY  S4SERI,[S4TRMD],S4CTNE,S4YRNE
							) B
							ON A.[S4TRMD]=B.[S4TRMD]
							   AND A.S4CTNE=B.S4CTNE
							   AND A.S4YRNE= B.S4YRNE
							   AND A.S4SERI=B.S4SERI
							   AND A.VehicleModelCodeID=B.VehicleModelCodeID
					 ----------------------------------------------------------------------------------
					 --Hyndai Fleet
					Print 'HyundaiFleet'
					 EXEC mig.sp_Import_AS400_Trim_Update_HyundaiFleet
					
					 ----------------------------------------------------------------------------------------


    
			END
		END TRY

		BEGIN CATCH
			SET @ErrorMsg =ERROR_PROCEDURE()
			SELECT 
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				print 'go to rollback'			        
			END

		END CATCH

		----------------------------------------------------------------			
		IF @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION;
				 -- EXEC msdb.dbo.sp_send_dbmail @profile_name='EmailSQL',
					--	@recipients='nnguyen@hisna.com',
					--	@subject='Good',
					--	@body='Good'
				 print 'good'
			END

END


GO
/****** Object:  StoredProcedure [mig].[sp_Import_AS400_Trim_Update_HyundaiFleet]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec  [mig].[sp_Import_AS400_Trim_Update] 
-- History:
--  12/16/2015_DTON: Added this: OR (RIGHT(VehicleModelCodeID,1) = 'P' AND S4SERI = 'L' )) to include Sonata plug-in hybrid
-- Modified: 9/21/2018, Erik Mildner, removed PZEV filtering code
-- Modified: 5/1/2019, Erik Mildner, Added temporary import logic for 2019 Accent|Elantra
-- =============================================
CREATE proc [mig].[sp_Import_AS400_Trim_Update_HyundaiFleet] 
AS
BEGIN

      DECLARE @ErrorMsg varchar(200)
	BEGIN TRANSACTION;
		BEGIN TRY
			BEGIN		

				DELETE FROM Byo.VWMCMP_HyundaiFleet
				INSERT INTO Byo.[VWMCMP_HyundaiFleet]
					   ([S4PLTC]
					   ,[S4CTNE]
					   ,[S4YRNE]
					   ,[S4SERI]
					   ,[S4FMLY]
					   ,[S4DOOR]
					   ,[S4TRIM]
					   ,[S4TRAN]
					   ,[S4SERD]
					   ,[S4DORD]
					   ,[S4TRMD]
					   ,[S4TRND]
					   ,EngineDesc
					   ,VehicleModelCodeID					   
					   )

				SELECT distinct [S4PLTC]
						  ,RTRIM(LTRIM([S4CTNE]))
						  ,RTRIM(LTRIM([S4YRNE]))
						  ,[S4SERI]
						  ,[S4FMLY]
						  ,[S4DOOR]
						  ,RTRIM(LTRIM([S4TRIM]))
						  ,RTRIM(LTRIM([S4TRAN]))
						  ,RTRIM(LTRIM([S4SERD]))
						  ,[S4DORD]
						  ,RTRIM(LTRIM([S4SERD]))  
						  ,RTRIM(LTRIM([S4SERD]))
						 ,EngineDesc
						 ,CASE WHEN [S4SERI]='E' and [S4TRND]     like '%Signature%'   THEN left(ModelCode,8)+'_01'
							   WHEN [S4SERI]='E' and [S4TRND] not like '%Signature%' and cast([S4YRNE] as int) < 17   THEN left(ModelCode,8)+'_02'
						  ELSE left(ModelCode,8) END					
				FROM  [HyundaiUSA].[Raw].[VWMCMP] B
						   INNER JOIN Byo.VehicleModel M
						  ON M.VehicleId=B.S4SERI
						  where S4YRNE in ('12','13','14','15','16','17','18','19','20')
						 


				UPDATE Byo.VWMCMP_HyundaiFleet
					SET VehicleID=Replace(S4SERI,' ','')

			 --------------------------------------------------------------------
					 /****** Update display flag  ******/
					 --Reset the flag
				UPDATE Byo.VWMCMP_HyundaiFleet
					SET isDisplayed=0
						 ,HyundaiFleetModelCode='0';
					---------------------------
				UPDATE A
						SET A.isDisplayed= 1
				FROM Byo.VWMCMP_HyundaiFleet A
					 INNER JOIN
							(
							SELECT
								  [S4TRMD],
								  S4CTNE,
								  S4YRNE,
								  S4SERI,
								 max([VehicleModelCodeID]) as VehicleModelCodeID
							  FROM Byo.VWMCMP_HyundaiFleet		 
							 --WHERE  ((RIGHT(VehicleModelCodeID,1)<> 'P') OR (RIGHT(VehicleModelCodeID,1) = 'P' AND S4SERI = 'L' ))--PZEV code
							 GROUP BY  S4SERI,[S4TRMD],S4CTNE,S4YRNE
							) B
							ON A.[S4TRMD]=B.[S4TRMD]
							   AND A.S4CTNE=B.S4CTNE
							   AND A.S4YRNE= B.S4YRNE
							   AND A.S4SERI=B.S4SERI
							   AND A.VehicleModelCodeID=B.VehicleModelCodeID
					 ----------------------------------------------------------------------------------
					UPDATE A
						SET  HyundaiFleetModelCode= A.VehicleModelCodeID 
					FROM [Byo].[VWMCMP_HyundaiFleet] A
					INNER JOIN HyundaiUSA.dwh.ModelColorDesc D
					ON A.VehicleModelCodeID like D.ModelCode+'%'
					AND A.S4CTNE+S4YRNE=D.ModelYear
					WHERE (IsPoActive=1 AND IsDeleted=0 AND 
					(A.VehicleModelCodeID not like '46%'))
					OR (A.S4SERI IN('4','1') AND A.S4YRNE = 19) -- TEMPORARY FIX to set agreed upon models as active in Fleet 
					 ----------------------------------------------------------------------------------------


    
			END
		END TRY

		BEGIN CATCH
			SET @ErrorMsg =ERROR_PROCEDURE()
			SELECT 
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				print 'go to rollback'			        
			END

		END CATCH

		----------------------------------------------------------------			
		IF @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION;
				 -- EXEC msdb.dbo.sp_send_dbmail @profile_name='EmailSQL',
					--	@recipients='nnguyen@hisna.com',
					--	@subject='Good',
					--	@body='Good'
				 print 'good'
			END

END


--EXEC mig.sp_Import_AS400_Color_Update
--EXEC mig.sp_Import_AS400_Package_Update
--EXEC mig.sp_Import_AS400_Trim_Update








--EXEC mig.sp_Import_AS400_Color_Update
--EXEC mig.sp_Import_AS400_Package_Update
--EXEC mig.sp_Import_AS400_Trim_Update





GO
/****** Object:  StoredProcedure [mig].[sp_Import_DealerCash_Regular]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--EXEC [mig].[sp_Import_DealerCash_Regular] 
CREATE proc [mig].[sp_Import_DealerCash_Regular] 
AS
BEGIN
DELETE FROM [dbo].[DealerCashRegular]

INSERT INTO [dbo].[DealerCashRegular]
           ([ProgramCode]
           ,[Region]
           ,[Start Date]
           ,[End Date]
           ,[ModelYear]
           ,[Series]
           ,[ModelCode]
           ,[Amount])
     


SELECT distinct 
           [ProgramCode]
           ,[Region]
           ,BeginDate
           ,[EndDate]
           ,[ModelYear]
           ,[Series]
           ,[ModelCode]
           ,[Amount]
	   
--SELECT distinct * 
FROM
(
SELECT distinct
   
	P.A4PRGM as ProgramCode,
	CASE  DC.D7REGN WHEN '99' THEN 'ALL' ELSE DC.D7REGN END as Region,
	substring(cast(A4BDTE as varchar(10)),5,2)+'-'+ substring(cast(A4BDTE as varchar(10)),7,2)+'-'+substring(cast(A4BDTE as varchar(10)),1,4) as BeginDate,
	substring(cast(A4ENDE as varchar(10)),5,2)+'-'+ substring(cast(A4ENDE as varchar(10)),7,2)+'-'+substring(cast(A4ENDE as varchar(10)),1,4) as EndDate,
	MC.A5YRNE as ModelYear,
	MC.A5SER2 as Series,
	MC.A5SER2+A5FMLY+MC.A5DOOR+A5TRIM+A5TRAN+A5DRVN+A5ENGT+A5CSFG as ModelCode,
	(select  max(value) from dbo.udf_Util_Split(cast(DC.D7AMT1 as varchar(5))+','+cast(DC.D7AMT2 as varchar(5))+','+cast(DC.D7AMT3 as varchar(5))+','+cast(DC.D7AMT4 as varchar(5))+','+cast(DC.D7AMT5 as varchar(5))+','+cast(DC.D7AMT6 as varchar(5))+','+cast(DC.D7AMT7 as varchar(5)),','))
	as Amount
	FROM as400.MKPGMP P
INNER JOIN AS400.MKEMDP MC--Event Model Table
ON P.A4PRGM=MC.A5PRGM
AND len(MC.A5STAF)=0
INNER JOIN AS400.MKDCTP DC--DealerCash
ON P.A4PRGM=DC.D7PRGM
AND MC.A5YRNE=DC.D7YRNE
AND DC.D7SER2=MC.A5SER2
WHERE A4ETYP='C'


UNION
SELECT distinct
    P.A4PRGM as ProgramCode,
    DC.A8REGN as Region,
	substring(cast(A4BDTE as varchar(10)),5,2)+'-'+ substring(cast(A4BDTE as varchar(10)),7,2)+'-'+substring(cast(A4BDTE as varchar(10)),1,4) as BeginDate,
	substring(cast(A4ENDE as varchar(10)),5,2)+'-'+ substring(cast(A4ENDE as varchar(10)),7,2)+'-'+substring(cast(A4ENDE as varchar(10)),1,4) as EndDate,
	
	MC.A5YRNE as ModelYear,
	MC.A5SER2  as Series,
	MC.A5SER2+A5FMLY+MC.A5DOOR+A5TRIM+A5TRAN+A5DRVN+A5ENGT+A5CSFG as ModelCode,
	
	(select  max(value) from dbo.udf_Util_Split(cast(DC.A8AMT1 as varchar(5))+','+cast(DC.A8AMT2 as varchar(5))+','+cast(DC.A8AMT3 as varchar(5))+','+cast(DC.A8AMT4 as varchar(5))+','+cast(DC.A8AMT5 as varchar(5))+','+cast(DC.A8AMT6 as varchar(5))+','+cast(DC.A8AMT7 as varchar(5)),','))
	as Amount
	
	FROM as400.MKPGMP P
INNER JOIN AS400.MKEMDP MC--Event Model Table
ON P.A4PRGM=MC.A5PRGM
INNER JOIN AS400.MKDCRP DC--DealerCash
		ON P.A4PRGM=DC.A8PRGM
		   AND LEN(A8STAF)=0
WHERE A4ETYP='C'


) A
                    

	
END

GO
/****** Object:  StoredProcedure [mig].[sp_Import_DealerCash_Restriction]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--EXEC [mig].[sp_Import_DealerCash_Restriction] 
CREATE proc [mig].[sp_Import_DealerCash_Restriction] 
AS
BEGIN
	DELETE FROM [dbo].[DealerCashException]
	INSERT INTO [dbo].[DealerCashException]
           ([ProgramCode]
           ,[Type]
           ,[Data]
           ,[Incl Flag]
           ,[ModelYear1]
           ,[ModelYear2]
           ,[ModelYear3])
   
SELECT [A6PRGM]
      ,[A6TYPE]
      ,[A6DATA]
      ,case when [A6INEX]='I' THEN 1 ELSE 0 END
      ,[A6YRN1]
      ,[A6YRN2]
      ,[A6YRN3]
    
  FROM [AS400].[MKERVP]
  WHERE (A6PAID='Y' OR A6INEX='E')

	
END

GO
/****** Object:  StoredProcedure [mig].[sp_PZEV_Update]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [mig].[sp_PZEV_Update] 
CREATE proc [mig].[sp_PZEV_Update] 
AS
BEGIN
		DELETE FROM [dbo].[PZEV_Packages]
				
		INSERT INTO  [dbo].[PZEV_Packages]
           ([OrgVehicleModelCodeID]
           ,[OrgPackageID]
           ,[PZEVVehicleModelCodeID]
           ,[SearchPackageID]
           ,[Year])
   						SELECT distinct 
				--A.Year as PzevYear,C.Year ReYear,

				C.VehicleModelCodeID as OrgVehicleTrimID,
				C.VehiclePackageID as OrgVehiclePackageID ,
				A.VehicleModelCodeID,A.VehiclePackageID as SearchPackageID
				,A.Year
				FROM [Byo].[VPKGDS] A
				INNER JOIN
				(SELECT distinct case when substring(VehicleModelCodeID,5,1)='3' then VehicleModelCodeID else LEFT(VehicleModelCodeID,4)+'2'+substring(VehicleModelCodeID,6,1)+'4P' end as vehicleModelCodeID 
				 FROM [Byo].[VPKGDS] A
				  WHERE Year>2009
				  AND AccGroupCode<>'NP'
				   AND substring(vehiclemodelcodeID,5,1)<>'3' 
				 ) B
				  ON A.VehicleModelCodeID=B.vehicleModelCodeID
				  INNER JOIN [Byo].[VPKGDS] C
				  ON (LEFT(C.VehicleModelCodeID,4)+'2'+substring(C.VehicleModelCodeID,6,1)+'4P' ) =A.VehicleModelCodeID
			      AND A.CombineDesc=C.CombineDesc
				  AND C.Year=A.Year
				WHERE A.Year>2009
				  AND A.AccGroupCode<>'NP'
				  AND C.AccGroupCode<>'NP'
				 AND SUBSTRING(B.vehicleModelCodeID,5,1)<>'3' 
				 --AND SUBSTRING(C.vehicleModelCodeID,5,1)<>'4' 

END
GO
/****** Object:  StoredProcedure [mig].[sp_Tb_400_VWVM2P_VINMaster_ImportInventory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Nick Nguyen
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- [mig].[sp_Tb_400_VWVM2P_VINMaster_ImportInventory]
-- =============================================

CREATE PROC [mig].[sp_Tb_400_VWVM2P_VINMaster_ImportInventory]
 AS
	BEGIN

    --   ---STEP 1: Delete exisiting records from backup table
      DELETE      FROM [HyundaiApp].[mig].[Tb_400_VWVM2P_VINMaster_BACKUP]
				  WHERE [C2FVIN_FullVIN]  IN
				  (
					  SELECT C2FVIN from dbo.VINMasterFromERP
					  --WHERE C2IVST='DS'
					  --AND C2FOBP>0.00
				  )
	   --AND [C2IVST_InventoryStatus]='DS'


	     ---STEP 2: Delete exisiting records from main table
      DELETE      FROM [HyundaiApp].[mig].[Tb_400_VWVM2P_VINMaster]
				  WHERE [C2FVIN_FullVIN]  IN
				  (
					  SELECT C2FVIN from dbo.VINMasterFromERP (nolock)
					 -- WHERE 
					 --C2IVST='DS'AND 					  
					 -- C2FOBP>0.00
				  )
	  -- AND [C2IVST_InventoryStatus]='DS'



		--STEP 1 INSERT TO Tb_400_VWVM2P_VINMaster
		 INSERT INTO [mig].[Tb_400_VWVM2P_VINMaster]
           ([C2FVIN_FullVIN]
           ,[C2REGN_RegionCode]
           ,[C2WMID_WorldMFGID]
           ,[C2SERI_Series]
           ,[C2TRML_TrimLevelCode]
           ,[C2BDYS_BodyStyle]
           ,[C2REST_Restraint]
           ,[C2ENGS_EngineSize]
           ,[C2CKDG_CheckDigit]
           ,[C2MDLY_ModelYear]
           ,[C2PLTC_PlantCode]
           ,[C2SERN_ShortVinSerNO]
           ,[C2SPEC_HMCSpecCode]
           ,[C2CTNE_YearCentryCode]
           ,[C2YRNE_ShortVINYear]
           ,[C2SER2_ShortVINSeries]
           ,[C2FMLY_ShortVINFamily]
           ,[C2DOOR_ShortVINDoor]
           ,[C2TRIM_ShortVINTrim]
           ,[C2TRAN_ShortVINTrans]
           ,[C2ACCE_AccessoryGroup]
           ,[C2EXCL_ExteriorClrHMA]
           ,[C2INCL_InteriorClrHMA]
           ,[C2CSFG_CalSpecFlag]
           ,[C2ENGN_EngineNumber]
           ,[C2FA01_FactoryInst1]
           ,[C2FA02_FactoryInst2]
           ,[C2FA03_FactoryInst3]
           ,[C2FA04_FactoryInst5]
           ,[C2FA05_FactoryInst6]
           ,[C2FA06_FactoryInst7]
           ,[C2FA07_FactoryInst7]
           ,[C2FA08_FactoryInst8]
           ,[C2FA09_FactoryInst9]
           ,[C2FA10_FactoryInst10]
           ,[C2FA11_FactoryInst11]
           ,[C2FA12_FactoryInst12]
           ,[C2FA13_FactoryInst13]
           ,[C2FA14_FactoryInst14]
           ,[C2FA15_FactoryInst15]
           ,[C2FA16_FactoryInst16]
           ,[C2FA17_FactoryInst17]
           ,[C2FA18_FactoryInst18]
           ,[C2FA19_FactoryInst19]
           ,[C2FA20_FactoryInst20]
           ,[C2PA01_FrtLoadPIO1]
           ,[C2PA02_FrtLoadPIO2]
           ,[C2PA03_FrtLoadPIO3]
           ,[C2PA04_FrtLoadPIO4]
           ,[C2PA05_FrtLoadPIO5]
           ,[C2PA06_FrtLoadPIO6]
           ,[C2PA07_FrtLoadPIO7]
           ,[C2PA08_FrtLoadPIO8]
           ,[C2PA09_FrtLoadPIO9]
           ,[C2PA10_FrtLoadPIO10]
           ,[C2PB01_FrtLoadSts1]
           ,[C2PB02_FrtLoadSts2]
           ,[C2PB03_FrtLoadSts3]
           ,[C2PB04_FrtLoadSts4]
           ,[C2PB05_FrtLoadSts5]
           ,[C2PB06_FrtLoadSts6]
           ,[C2PB07_FrtLoadSts7]
           ,[C2PB08_FrtLoadSts8]
           ,[C2PB09_FrtLoadSts9]
           ,[C2PB10_FrtLoadSts10]
           ,[C2PC01_PortInstlOPT1]
           ,[C2PC02_PortInstlOPT2]
           ,[C2PC03_PortInstlOPT3]
           ,[C2PC04_PortInstlOPT4]
           ,[C2PC05_PortInstlOPT5]
           ,[C2PC06_PortInstlOPT6]
           ,[C2PC07_PortInstlOPT7]
           ,[C2PC08_PortInstlOPT8]
           ,[C2PC09_PortInstlOPT9]
           ,[C2PC10_PortInstlOPT10]
           ,[C2PD01_PIO1Status]
           ,[C2PD02_PIO2Status]
           ,[C2PD03_PIO3Status]
           ,[C2PD04_PIO4Status]
           ,[C2PD05_PIO5Status]
           ,[C2PD06_PIO6Status]
           ,[C2PD07_PIO7Status]
           ,[C2PD08_PIO8Status]
           ,[C2PD09_PIO9Status]
           ,[C2PD10_PIO10Status]
           ,[C2FACP_FactoryPriceCode]
           ,[C2FLTC_FleetCodeCurrent]
           ,[C2RFTC_RegionalFleetCode]
           ,[C2CMPC_CompanyCarCode]
           ,[C2PORT_PortCurrentAll]
           ,[C2DIST_DistrictCode]
           ,[C2DELR_DealerCodeCURRET]
           ,[C2IVST_InventoryStatus]
           ,[C2NHFG_InventoryHoldFGN]
           ,[C2RHFG_InventoryHoldFGR]
           ,[C2WPDT_WhlsalePriceEffDt]
           ,[C2ILDF_InlandTransportFg]
           ,[C2PPRT_PortofEntryPO]
           ,[C2LPRT_LocationPort]
           ,[C2WPRT_WaterPort]
           ,[C2CSTF_CustomsFlag]
           ,[C2PURD_PurifiedDate]
           ,[C2ARDT_ActualArrDate]
           ,[C2SSLF_StopSaleFlag]
           ,[C2SSCD_StopSaleCompletion]
           ,[C2IPRF_InProcessFlag]
           ,[C2INPD_InProcessDate]
           ,[C2INPT_InProcessTime]
           ,[C2SIN1_SpecialInstruction1]
           ,[C2SIN2_SpecialInstruction2]
           ,[C2TNDD_TenderDate]
           ,[C2TNDT_TenderTime]
           ,[C2INTD_InTransitDate]
           ,[C2INTT_InTransitTime]
           ,[C2INTF_InTransitTimeAMP]
           ,[C2STDL_ShipToDealer]
           ,[C2STD1_DropshipAddr1]
           ,[C2STD2_DropshipAddr2]
           ,[C2STD3_DropshipAddr3]
           ,[C2STDC_City]
           ,[C2STDS_State]
           ,[C2DPVF_DiplomatVehFlag]
           ,[C2RRFG_RegReserve]
           ,[C2ARRF_RegResAlloFlag]
           ,[C2AIPF_AlloInProcess]
           ,[C2ALRN_AlloRunNum]
           ,[C2ALRG_AlloRegion]
           ,[C2ALCC_AlloConfirmFg]
           ,[C2COMD_CommitDate]
           ,[C2FOBP_BasePriceDCost]
           ,[C2MSRP_BasePriceMSRP]
           ,[C2ACST_TotFacAccDCost]
           ,[C2FACM_TotFacAccMSRP]
           ,[C2PIOD_TorPIODealer]
           ,[C2PIOM_TotPIOMSRP]
           ,[C2FRTC_FreightCharge]
           ,[C2COST_AdvertsingCost]
           ,[C2OCHG_OtherCharge]
           ,[C2CSHD_CashDraftFlag]
           ,[C2CDDL_CashDraftDealer]
           ,[C2CDDT_CashDraftDate]
           ,[C2WHSF_WholesaleFlag]
           ,[C2WSDT_WholesaleDate]
           ,[C2WRTN_WholesaleReturnFlg]
           ,[C2RDLR_ReturnedDealer]
           ,[C2RTND_WholesaleReturnDte]
           ,[C2DEMO_DemoType]
           ,[C2DMDT_DemoDate]
           ,[C2DSLD_DateSold]
           ,[C2RETL_RetailFlag]
           ,[C2RNRD_RetailDate]
           ,[C2CDAT_CreateDate]
           ,[C2CUSR_CreateUserID]
           ,[C2CPGM_CreateProgram]
           ,[C2UDAT_UpdateDate]
           ,[C2UUSR_UpdateUserID]
           ,[C2UPGM_UpdateProgram]
           ,[C2USEQ_SequenceNumber]
           ,[C2DFLG_DownloadFlag]
           ,[C2DTMS_DownloadTimestamp]
           ,[Drivetrain]
           ,[EngineType]
           ,[Emission]
			,[C2EXCD] -- exterior color dealer price
			,[C2EXCM] -- exterior color msrp
			,[C2INCD] -- interior color dealer price
			,[C2INCM] -- interior color msrp 

           )

			 SELECT [C2FVIN]
				  ,[C2REGN]
				  ,[C2WMID]
				  ,[C2SERI]
				  ,[C2TRML]
				  ,[C2BDYS]
				  ,[C2REST]
				  ,[C2ENGS]
				  ,[C2CKDG]
				  ,[C2MDLY]
				  ,[C2PLTC]
				  ,[C2SERN]
				  ,[C2SPEC]
				  ,[C2CTNE]
				  ,[C2YRNE]
				  ,[C2SER2]
				  ,[C2FMLY]
				  ,[C2DOOR]
				  ,[C2TRIM]
				  ,[C2TRAN]
				  ,[C2ACCE]
				  ,[C2EXCL]
				  ,[C2INCL]
				  ,[C2CSFG]
				  ,[C2ENGN]
				  ,[C2FA01]
				  ,[C2FA02]
				  ,[C2FA03]
				  ,[C2FA04]
				  ,[C2FA05]
				  ,[C2FA06]
				  ,[C2FA07]
				  ,[C2FA08]
				  ,[C2FA09]
				  ,[C2FA10]
				  ,[C2FA11]
				  ,[C2FA12]
				  ,[C2FA13]
				  ,[C2FA14]
				  ,[C2FA15]
				  ,[C2FA16]
				  ,[C2FA17]
				  ,[C2FA18]
				  ,[C2FA19]
				  ,[C2FA20]
				  ,[C2PA01]
				  ,[C2PA02]
				  ,[C2PA03]
				  ,[C2PA04]
				  ,[C2PA05]
				  ,[C2PA06]
				  ,[C2PA07]
				  ,[C2PA08]
				  ,[C2PA09]
				  ,[C2PA10]
				  ,[C2PB01]
				  ,[C2PB02]
				  ,[C2PB03]
				  ,[C2PB04]
				  ,[C2PB05]
				  ,[C2PB06]
				  ,[C2PB07]
				  ,[C2PB08]
				  ,[C2PB09]
				  ,[C2PB10]
				  ,[C2PC01]
				  ,[C2PC02]
				  ,[C2PC03]
				  ,[C2PC04]
				  ,[C2PC05]
				  ,[C2PC06]
				  ,[C2PC07]
				  ,[C2PC08]
				  ,[C2PC09]
				  ,[C2PC10]
				  ,[C2PD01]
				  ,[C2PD02]
				  ,[C2PD03]
				  ,[C2PD04]
				  ,[C2PD05]
				  ,[C2PD06]
				  ,[C2PD07]
				  ,[C2PD08]
				  ,[C2PD09]
				  ,[C2PD10]
				  ,[C2FACP]
				  ,[C2FLTC]
				  ,[C2RFTC]
				  ,[C2CMPC]
				  ,[C2PORT]
				  ,[C2DIST]
				  ,[C2DELR]
				  ,[C2IVST]
				  ,[C2NHFG]
				  ,[C2RHFG]
				  ,[C2WPDT]
				  ,[C2ILDF]
				  ,[C2PPRT]
				  ,[C2LPRT]
				  ,[C2WPRT]
				  ,[C2CSTF]
				  ,[C2PURD]
				  ,[C2ARDT]
				  ,[C2SSLF]
				  ,[C2SSCD]
				  ,[C2IPRF]
				  ,[C2INPD]
				  ,[C2INPT]
				  ,[C2SIN1]
				  ,[C2SIN2]
				  ,[C2TNDD]
				  ,[C2TNDT]
				  ,[C2INTD]
				  ,[C2INTT]
				  ,[C2INTF]
				  ,[C2STDL]
				  ,[C2STD1]
				  ,[C2STD2]
				  ,[C2STD3]
				  ,[C2STDC]
				  ,[C2STDS]
				  ,[C2DPVF]
				  ,[C2RRFG]
				  ,[C2ARRF]
				  ,[C2AIPF]
				  ,[C2ALRN]
				  ,[C2ALRG]
				  ,[C2ALCC]
				  ,[C2COMD]
				  ,[C2FOBP]
				  ,[C2MSRP]
				  ,[C2ACST]
				  ,[C2FACM]
				  ,[C2PIOD]
				  ,[C2PIOM]
				  ,[C2FRTC]
				  ,[C2COST]
				  ,[C2OCHG]
				  ,[C2CSHD]
				  ,[C2CDDL]
				  ,[C2CDDT]
				  ,[C2WHSF]
				  ,[C2WSDT]
				  ,[C2WRTN]
				  ,[C2RDLR]
				  ,[C2RTND]
				  ,[C2DEMO]
				  ,[C2DMDT]
				  ,[C2DSLD]
				  ,[C2RETL]
				  ,[C2RNRD]
				  ,[C2CDAT]
				  ,[C2CUSR]
				  ,[C2CPGM]
				  ,[C2UDAT]
				  ,[C2UUSR]
				  ,[C2UPGM]
				  ,[C2USEQ]
				  ,[C2DFLG]
				  ,[C2DTMS]
				  ,[Drivetrain]
				  ,[EngineType]
				  ,[Emission]			
				  ,[C2EXCD] -- exterior color dealer price
				  ,[C2EXCM] -- exterior color msrp
				  ,[C2INCD] -- interior color dealer price
				  ,[C2INCM] -- interior color msrp 
			  FROM [HyundaiApp].[dbo].[VINMasterFromERP] A
			  INNER JOIN HyundaiUSA.dealer.DealerInfo B
			  ON A.C2DELR=B.dealerCode

			  where 
			  --[C2IVST]='DS'   AND 
			    C2FOBP>0.00 AND C2REGN NOT IN ('CS', 'NL') -- Company Fleet.

        --STEP 2 INSERT TO Tb_400_VWVM2P_VINMaster_BackUp
		 INSERT INTO [mig].[Tb_400_VWVM2P_VINMaster_Backup]
           ([C2FVIN_FullVIN]
           ,[C2REGN_RegionCode]
           ,[C2WMID_WorldMFGID]
           ,[C2SERI_Series]
           ,[C2TRML_TrimLevelCode]
           ,[C2BDYS_BodyStyle]
           ,[C2REST_Restraint]
           ,[C2ENGS_EngineSize]
           ,[C2CKDG_CheckDigit]
           ,[C2MDLY_ModelYear]
           ,[C2PLTC_PlantCode]
           ,[C2SERN_ShortVinSerNO]
           ,[C2SPEC_HMCSpecCode]
           ,[C2CTNE_YearCentryCode]
           ,[C2YRNE_ShortVINYear]
           ,[C2SER2_ShortVINSeries]
           ,[C2FMLY_ShortVINFamily]
           ,[C2DOOR_ShortVINDoor]
           ,[C2TRIM_ShortVINTrim]
           ,[C2TRAN_ShortVINTrans]
           ,[C2ACCE_AccessoryGroup]
           ,[C2EXCL_ExteriorClrHMA]
           ,[C2INCL_InteriorClrHMA]
           ,[C2CSFG_CalSpecFlag]
           ,[C2ENGN_EngineNumber]
           ,[C2FA01_FactoryInst1]
           ,[C2FA02_FactoryInst2]
           ,[C2FA03_FactoryInst3]
           ,[C2FA04_FactoryInst5]
           ,[C2FA05_FactoryInst6]
           ,[C2FA06_FactoryInst7]
           ,[C2FA07_FactoryInst7]
           ,[C2FA08_FactoryInst8]
           ,[C2FA09_FactoryInst9]
           ,[C2FA10_FactoryInst10]
           ,[C2FA11_FactoryInst11]
           ,[C2FA12_FactoryInst12]
           ,[C2FA13_FactoryInst13]
           ,[C2FA14_FactoryInst14]
           ,[C2FA15_FactoryInst15]
           ,[C2FA16_FactoryInst16]
           ,[C2FA17_FactoryInst17]
           ,[C2FA18_FactoryInst18]
           ,[C2FA19_FactoryInst19]
           ,[C2FA20_FactoryInst20]
           ,[C2PA01_FrtLoadPIO1]
           ,[C2PA02_FrtLoadPIO2]
           ,[C2PA03_FrtLoadPIO3]
           ,[C2PA04_FrtLoadPIO4]
           ,[C2PA05_FrtLoadPIO5]
           ,[C2PA06_FrtLoadPIO6]
           ,[C2PA07_FrtLoadPIO7]
           ,[C2PA08_FrtLoadPIO8]
           ,[C2PA09_FrtLoadPIO9]
           ,[C2PA10_FrtLoadPIO10]
           ,[C2PB01_FrtLoadSts1]
           ,[C2PB02_FrtLoadSts2]
           ,[C2PB03_FrtLoadSts3]
           ,[C2PB04_FrtLoadSts4]
           ,[C2PB05_FrtLoadSts5]
           ,[C2PB06_FrtLoadSts6]
           ,[C2PB07_FrtLoadSts7]
           ,[C2PB08_FrtLoadSts8]
           ,[C2PB09_FrtLoadSts9]
           ,[C2PB10_FrtLoadSts10]
           ,[C2PC01_PortInstlOPT1]
           ,[C2PC02_PortInstlOPT2]
           ,[C2PC03_PortInstlOPT3]
           ,[C2PC04_PortInstlOPT4]
           ,[C2PC05_PortInstlOPT5]
           ,[C2PC06_PortInstlOPT6]
           ,[C2PC07_PortInstlOPT7]
           ,[C2PC08_PortInstlOPT8]
           ,[C2PC09_PortInstlOPT9]
           ,[C2PC10_PortInstlOPT10]
           ,[C2PD01_PIO1Status]
           ,[C2PD02_PIO2Status]
           ,[C2PD03_PIO3Status]
           ,[C2PD04_PIO4Status]
           ,[C2PD05_PIO5Status]
           ,[C2PD06_PIO6Status]
           ,[C2PD07_PIO7Status]
           ,[C2PD08_PIO8Status]
           ,[C2PD09_PIO9Status]
           ,[C2PD10_PIO10Status]
           ,[C2FACP_FactoryPriceCode]
           ,[C2FLTC_FleetCodeCurrent]
           ,[C2RFTC_RegionalFleetCode]
           ,[C2CMPC_CompanyCarCode]
           ,[C2PORT_PortCurrentAll]
           ,[C2DIST_DistrictCode]
           ,[C2DELR_DealerCodeCURRET]
           ,[C2IVST_InventoryStatus]
           ,[C2NHFG_InventoryHoldFGN]
           ,[C2RHFG_InventoryHoldFGR]
           ,[C2WPDT_WhlsalePriceEffDt]
           ,[C2ILDF_InlandTransportFg]
           ,[C2PPRT_PortofEntryPO]
           ,[C2LPRT_LocationPort]
           ,[C2WPRT_WaterPort]
           ,[C2CSTF_CustomsFlag]
           ,[C2PURD_PurifiedDate]
           ,[C2ARDT_ActualArrDate]
           ,[C2SSLF_StopSaleFlag]
           ,[C2SSCD_StopSaleCompletion]
           ,[C2IPRF_InProcessFlag]
           ,[C2INPD_InProcessDate]
           ,[C2INPT_InProcessTime]
           ,[C2SIN1_SpecialInstruction1]
           ,[C2SIN2_SpecialInstruction2]
           ,[C2TNDD_TenderDate]
           ,[C2TNDT_TenderTime]
           ,[C2INTD_InTransitDate]
           ,[C2INTT_InTransitTime]
           ,[C2INTF_InTransitTimeAMP]
           ,[C2STDL_ShipToDealer]
           ,[C2STD1_DropshipAddr1]
           ,[C2STD2_DropshipAddr2]
           ,[C2STD3_DropshipAddr3]
           ,[C2STDC_City]
           ,[C2STDS_State]
           ,[C2DPVF_DiplomatVehFlag]
           ,[C2RRFG_RegReserve]
           ,[C2ARRF_RegResAlloFlag]
           ,[C2AIPF_AlloInProcess]
           ,[C2ALRN_AlloRunNum]
           ,[C2ALRG_AlloRegion]
           ,[C2ALCC_AlloConfirmFg]
           ,[C2COMD_CommitDate]
           ,[C2FOBP_BasePriceDCost]
           ,[C2MSRP_BasePriceMSRP]
           ,[C2ACST_TotFacAccDCost]
           ,[C2FACM_TotFacAccMSRP]
           ,[C2PIOD_TorPIODealer]
           ,[C2PIOM_TotPIOMSRP]
           ,[C2FRTC_FreightCharge]
           ,[C2COST_AdvertsingCost]
           ,[C2OCHG_OtherCharge]
           ,[C2CSHD_CashDraftFlag]
           ,[C2CDDL_CashDraftDealer]
           ,[C2CDDT_CashDraftDate]
           ,[C2WHSF_WholesaleFlag]
           ,[C2WSDT_WholesaleDate]
           ,[C2WRTN_WholesaleReturnFlg]
           ,[C2RDLR_ReturnedDealer]
           ,[C2RTND_WholesaleReturnDte]
           ,[C2DEMO_DemoType]
           ,[C2DMDT_DemoDate]
           ,[C2DSLD_DateSold]
           ,[C2RETL_RetailFlag]
           ,[C2RNRD_RetailDate]
           ,[C2CDAT_CreateDate]
           ,[C2CUSR_CreateUserID]
           ,[C2CPGM_CreateProgram]
           ,[C2UDAT_UpdateDate]
           ,[C2UUSR_UpdateUserID]
           ,[C2UPGM_UpdateProgram]
           ,[C2USEQ_SequenceNumber]
           ,[C2DFLG_DownloadFlag]
           ,[C2DTMS_DownloadTimestamp]
           ,[Drivetrain]
           ,[EngineType]
           ,[Emission]
			,[C2EXCD] -- exterior color dealer price
			,[C2EXCM] -- exterior color msrp
			,[C2INCD] -- interior color dealer price
			,[C2INCM] -- interior color msrp 

           )

			 SELECT [C2FVIN]
				  ,[C2REGN]
				  ,[C2WMID]
				  ,[C2SERI]
				  ,[C2TRML]
				  ,[C2BDYS]
				  ,[C2REST]
				  ,[C2ENGS]
				  ,[C2CKDG]
				  ,[C2MDLY]
				  ,[C2PLTC]
				  ,[C2SERN]
				  ,[C2SPEC]
				  ,[C2CTNE]
				  ,[C2YRNE]
				  ,[C2SER2]
				  ,[C2FMLY]
				  ,[C2DOOR]
				  ,[C2TRIM]
				  ,[C2TRAN]
				  ,[C2ACCE]
				  ,[C2EXCL]
				  ,[C2INCL]
				  ,[C2CSFG]
				  ,[C2ENGN]
				  ,[C2FA01]
				  ,[C2FA02]
				  ,[C2FA03]
				  ,[C2FA04]
				  ,[C2FA05]
				  ,[C2FA06]
				  ,[C2FA07]
				  ,[C2FA08]
				  ,[C2FA09]
				  ,[C2FA10]
				  ,[C2FA11]
				  ,[C2FA12]
				  ,[C2FA13]
				  ,[C2FA14]
				  ,[C2FA15]
				  ,[C2FA16]
				  ,[C2FA17]
				  ,[C2FA18]
				  ,[C2FA19]
				  ,[C2FA20]
				  ,[C2PA01]
				  ,[C2PA02]
				  ,[C2PA03]
				  ,[C2PA04]
				  ,[C2PA05]
				  ,[C2PA06]
				  ,[C2PA07]
				  ,[C2PA08]
				  ,[C2PA09]
				  ,[C2PA10]
				  ,[C2PB01]
				  ,[C2PB02]
				  ,[C2PB03]
				  ,[C2PB04]
				  ,[C2PB05]
				  ,[C2PB06]
				  ,[C2PB07]
				  ,[C2PB08]
				  ,[C2PB09]
				  ,[C2PB10]
				  ,[C2PC01]
				  ,[C2PC02]
				  ,[C2PC03]
				  ,[C2PC04]
				  ,[C2PC05]
				  ,[C2PC06]
				  ,[C2PC07]
				  ,[C2PC08]
				  ,[C2PC09]
				  ,[C2PC10]
				  ,[C2PD01]
				  ,[C2PD02]
				  ,[C2PD03]
				  ,[C2PD04]
				  ,[C2PD05]
				  ,[C2PD06]
				  ,[C2PD07]
				  ,[C2PD08]
				  ,[C2PD09]
				  ,[C2PD10]
				  ,[C2FACP]
				  ,[C2FLTC]
				  ,[C2RFTC]
				  ,[C2CMPC]
				  ,[C2PORT]
				  ,[C2DIST]
				  ,[C2DELR]
				  ,[C2IVST]
				  ,[C2NHFG]
				  ,[C2RHFG]
				  ,[C2WPDT]
				  ,[C2ILDF]
				  ,[C2PPRT]
				  ,[C2LPRT]
				  ,[C2WPRT]
				  ,[C2CSTF]
				  ,[C2PURD]
				  ,[C2ARDT]
				  ,[C2SSLF]
				  ,[C2SSCD]
				  ,[C2IPRF]
				  ,[C2INPD]
				  ,[C2INPT]
				  ,[C2SIN1]
				  ,[C2SIN2]
				  ,[C2TNDD]
				  ,[C2TNDT]
				  ,[C2INTD]
				  ,[C2INTT]
				  ,[C2INTF]
				  ,[C2STDL]
				  ,[C2STD1]
				  ,[C2STD2]
				  ,[C2STD3]
				  ,[C2STDC]
				  ,[C2STDS]
				  ,[C2DPVF]
				  ,[C2RRFG]
				  ,[C2ARRF]
				  ,[C2AIPF]
				  ,[C2ALRN]
				  ,[C2ALRG]
				  ,[C2ALCC]
				  ,[C2COMD]
				  ,[C2FOBP]
				  ,[C2MSRP]
				  ,[C2ACST]
				  ,[C2FACM]
				  ,[C2PIOD]
				  ,[C2PIOM]
				  ,[C2FRTC]
				  ,[C2COST]
				  ,[C2OCHG]
				  ,[C2CSHD]
				  ,[C2CDDL]
				  ,[C2CDDT]
				  ,[C2WHSF]
				  ,[C2WSDT]
				  ,[C2WRTN]
				  ,[C2RDLR]
				  ,[C2RTND]
				  ,[C2DEMO]
				  ,[C2DMDT]
				  ,[C2DSLD]
				  ,[C2RETL]
				  ,[C2RNRD]
				  ,[C2CDAT]
				  ,[C2CUSR]
				  ,[C2CPGM]
				  ,[C2UDAT]
				  ,[C2UUSR]
				  ,[C2UPGM]
				  ,[C2USEQ]
				  ,[C2DFLG]
				  ,[C2DTMS]
				  ,[Drivetrain]
				  ,[EngineType]
				  ,[Emission]
				  ,[C2EXCD] -- exterior color dealer price
				  ,[C2EXCM] -- exterior color msrp
				  ,[C2INCD] -- interior color dealer price
				  ,[C2INCM] -- interior color msrp 
			  FROM [HyundaiApp].[dbo].[VINMasterFromERP] A (nolock)

			  --where 
			  --[C2IVST]='DS'    AND
			   --C2FOBP>0.00

	     ---- STEP 3 UPDATE  Tb_400_VWVM2P_VINMaster_BackUp
	     --UPDATE A
	     --SET C2IVST_InventoryStatus='HI'
	     --FROM [mig].[Tb_400_VWVM2P_VINMaster_BACKUP] A
	     --     INNER JOIN dbo.VINMasterFromERP B
	     --     ON A.C2FVIN_FullVIN=B.C2FVIN
	     --WHERE C2IVST='HI'

      --    --STEP 4 DELETE  Tb_400_VWVM2P_VINMaster
	     --DELETE A
	     --FROM [mig].[Tb_400_VWVM2P_VINMaster] A
	     --     INNER JOIN dbo.VINMasterFromERP B
	     --     ON A.C2FVIN_FullVIN=B.C2FVIN
	     --WHERE C2IVST='HI'
	END 






GO
/****** Object:  StoredProcedure [mig].[sp_Tb_400_VWVM2P_VINMaster_MainImport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Nick Nguyen
-- Create date: 4/7/2011
-- Description:	Main SP to insert,update,archive inventory, run one per day
-- [mig].[sp_Tb_400_VWVM2P_VINMaster_MainImport]
-- =============================================

CREATE PROC [mig].[sp_Tb_400_VWVM2P_VINMaster_MainImport]
 AS
	BEGIN
		--INSERT DATA
		DECLARE @ErrorMsg varchar(200)
		BEGIN TRY
				BEGIN
					 EXEC [mig].[sp_Tb_400_VWVM2P_VINMaster_ImportInventory]
					-- Update vehicleID,Package,Color
					 EXEC [mig].[sp_Tb_400_VWVM2P_VINMaster_Update]
					
			   END
		END TRY

		BEGIN CATCH
		  SET @ErrorMsg =ERROR_PROCEDURE()
          SELECT 
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

		IF @ErrorMsg is not null
		BEGIN
			print 'go to rollback'
			INSERT INTO dbo.Logs_ImportInventory(ErrorMessage)
			SELECT @ErrorMsg 			        
        END

END CATCH
	IF @ErrorMsg is null 
		BEGIN
		--Truncate dbo.VINMasterFromERP
		DELETE FROM dbo.VINMasterFromERP
		print 'success'
		END
	END
GO
/****** Object:  StoredProcedure [mig].[sp_Tb_400_VWVM2P_VINMaster_Search_Import]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Nick Nguyen
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--EXEC [mig].[sp_Tb_400_VWVM2P_VINMaster_Search_Import]
-- =============================================
 
CREATE PROC [mig].[sp_Tb_400_VWVM2P_VINMaster_Search_Import]
 AS
 BEGIN
 
		TRUNCATE TABLE [HyundaiApp].[mig].[Tb_400_VWVM2P_VINMaster_Search]
 	
		INSERT INTO [HyundaiApp].[mig].[Tb_400_VWVM2P_VINMaster_Search]
           ([C2PIOM_TotPIOMSRP]
           ,[C2COST_AdvertsingCost]
           ,[C2EXCL_ExteriorClrHMA]
           ,[C2ACCE_AccessoryGroup]
           ,[C2TRAN_ShortVINTrans]
           ,[C2TRIM_ShortVINTrim]
           ,[C2SER2_ShortVINSeries]
           ,[C2DELR_DealerCodeCURRET]
           ,[C2DOOR_ShortVINDoor]
           ,[C2FOBP_BasePriceDCost]
           ,[C2PIOD_TorPIODealer]
           ,[C2FRTC_FreightCharge]
           ,[C2CTNE_YearCentryCode]
           ,[C2YRNE_ShortVINYear]
           ,[C2MSRP_BasePriceMSRP]
           ,[C2FVIN_FullVIN]
           ,[C2FACM_TotFacAccMSRP]
           ,[ColorDesc]
           ,[MapColorPID]
           ,[ModelYear]
           ,[PackageDesc]
           ,[MapPackagePID]
           ,[TransmissionDesc]
           ,[TrimDesc]
           ,[MapTrimPID]
           ,[MapVehiclePID]
           ,[VehicleName])

		SELECT  DISTINCT  C2PIOM_TotPIOMSRP,
					C2COST_AdvertsingCost,
					C2EXCL_ExteriorClrHMA,
					C2ACCE_AccessoryGroup,
					C2TRAN_ShortVINTrans,
					C2TRIM_ShortVINTrim,
					C2SER2_ShortVINSeries,
					C2DELR_DealerCodeCURRET,
					C2DOOR_ShortVINDoor,
					C2FOBP_BasePriceDCost,
					C2PIOD_TorPIODealer,
					C2FRTC_FreightCharge,
					C2CTNE_YearCentryCode,
					C2YRNE_ShortVINYear,
					C2MSRP_BasePriceMSRP,                
					C2FVIN_FullVIN,
					C2FACM_TotFacAccMSRP,                
					HUSA.ColorDesc,
					HUSA.MapColorPID,
					HUSA.ModelYear,
					HUSA.PackageDesc,
					HUSA.MapPackagePID,
					HUSA.TransmissionDesc,
					HUSA.TrimDesc,
					HUSA.MapTrimPID,
					HUSA.MapVehiclePID,
					HUSA.VehicleName
		  FROM Byo.As400Map_flat_tb HUSA 
			JOIN [mig].[Tb_400_VWVM2P_VINMaster] AS400  ON HUSA.DCSSeriesCode = AS400.C2SER2_ShortVINSeries
					AND C2CTNE_YearCentryCode = HUSA.CenCode
					AND C2YRNE_ShortVINYear = HUSA.YearCode
					AND C2SER2_ShortVINSeries = HUSA.DCSSeriesCode
					AND C2TRIM_ShortVINTrim = HUSA.DCSTrimCode
					--AND ISNULL(C2IVST_InventoryStatus, 0) = 'DS' 					
					AND C2TRAN_ShortVINTrans = HUSA.DCSTransCode
					AND C2ACCE_AccessoryGroup= HUSA.DCSPackageCode
					AND C2EXCL_ExteriorClrHMA = HUSA.DCSColorCode
					AND C2DOOR_ShortVINDoor=HUSA.DCSDoorCode
					
END
GO
/****** Object:  StoredProcedure [mig].[sp_Tb_400_VWVM2P_VINMaster_Update]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Nick Nguyen
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--EXEC [mig].[sp_Tb_400_VWVM2P_VINMaster_Update]
-- Modified by Nick Nguyen 10/27/2014: add logic to compare internal color also( InteriorColorCode=HUSA.VehicleInteriorColorID)
-- Modified by Erik Mildner 2/14/2019: added new parameter to [udf_Package_SortPackageIDs] to account for longer VehiclePackageID
-- =============================================

CREATE PROC [mig].[sp_Tb_400_VWVM2P_VINMaster_Update]
 AS
 BEGIN

		UPDATE [mig].[Tb_400_VWVM2P_VINMaster]
		SET VehicleID=C2SER2_ShortVINSeries,
			VehicleModelCodeID=C2SER2_ShortVINSeries
			+C2FMLY_ShortVINFamily
			+C2DOOR_ShortVINDoor 
			+ C2TRIM_ShortVINTrim
			+C2TRAN_ShortVINTrans
			+Drivetrain
			+EngineType
			+Emission
			+ Case when C2ACCE_AccessoryGroup= '01' and C2SER2_ShortVINSeries='E' 
					   AND C2CTNE_YearCentryCode = '20' AND CAST(C2YRNE_ShortVINYear AS INT) < '17' then '_01'
				   when C2ACCE_AccessoryGroup= '02' and C2SER2_ShortVINSeries='E'  
				        AND C2CTNE_YearCentryCode = '20' AND CAST(C2YRNE_ShortVINYear AS INT) < '17' then '_02'
				   ELSE ''
			END,
			VehiclePackageID=CASE WHEN C2ACCE_AccessoryGroup in ('AA','01') THEN C2ACCE_AccessoryGroup
							      WHEN C2ACCE_AccessoryGroup in ('11') THEN '01'
						          WHEN C2FA01_FactoryInst1 like '%P%'  AND C2FA02_FactoryInst2 <> '' AND C2ACCE_AccessoryGroup not in ('AA','01','11') THEN C2ACCE_AccessoryGroup+[dbo].[udf_Package_SortPackageIDs](C2FA01_FactoryInst1,C2FA02_FactoryInst2,C2FA03_FactoryInst3,C2FA04_FactoryInst5)
							      WHEN C2FA01_FactoryInst1 like '%P%' AND C2FA02_FactoryInst2 = '' AND C2ACCE_AccessoryGroup not in ('AA','01','11') THEN C2ACCE_AccessoryGroup+[dbo].[udf_Package_SortPackageIDs](C2FA01_FactoryInst1,C2FA03_FactoryInst3,C2FA04_FactoryInst5, '')
								  WHEN C2FA01_FactoryInst1 like 'T%' AND C2ACCE_AccessoryGroup not in ('AA','01','11') THEN C2ACCE_AccessoryGroup+[dbo].[udf_Package_SortPackageIDs](C2FA01_FactoryInst1,C2FA02_FactoryInst2,C2FA03_FactoryInst3, '')
								   ELSE  C2ACCE_AccessoryGroup	+[dbo].[udf_Package_SortPackageIDs](C2FA02_FactoryInst2,C2FA03_FactoryInst3,C2FA04_FactoryInst5, '')
							END	,																		
			VehicleColorID=C2EXCL_ExteriorClrHMA 
			,VehicleInteriorColorID=C2INCL_InteriorClrHMA
			--WHERE  
			--VehicleModelCodeID is null-- ='62422A65'
			--or C2ACCE_AccessoryGroup in ('11')
		   -- AND Emission is not null

		    ---------------------------------------------------------------------------
		   -- Update the modification price with the value from the dbo.MSRPModification table
		   --step 1: reset all the value
		  UPDATE [mig].[Tb_400_VWVM2P_VINMaster]
		  SET   PriceModification=0
		   --Step 2: update the price
		  UPDATE A
		  SET A.PriceModification=Amount
		  FROM [mig].[Tb_400_VWVM2P_VINMaster] A INNER JOIN
		   dbo.MSRPModification B
		   ON A.VehicleModelCodeID=B.ModelCodeID
		     AND A.VehicleColorID=B.ColorID
		     AND A.[Year]=B.ModelYear	   


		   ---------------------------------------------------------------------------
		   --Update Package to replace duplicated packageid with correct id from EquivalentPackage
	 	UPDATE V
	 	SET V.VehiclePackageID=P.CorrectVehiclePackageID
	 	FROM
	 	[mig].[Tb_400_VWVM2P_VINMaster] V
	 		INNER JOIN dbo.EquivalentPackage P
	 		ON  V.VehiclePackageID=P.OrgVehiclePackageID
	 		AND V.[Year]=P.[Year]
	 		AND V.VehicleModelCodeID=P.ModelCode

	----------------------------------------------------------------------
	  UPDATE  HUSA
	  SET VehicleSeatColorID=D.SeatColorDesc
	  FROM [HyundaiApp].[mig].[Tb_400_VWVM2P_VINMaster] HUSA
	  INNER JOIN HyundaiUSA.dwh.ModelColorDesc D
		ON charindex(D.ModelCode,HUSA.VehicleModelCodeID)>0
		AND HUSA.Year=D.ModelYear
		AND ExteriorColorCode=HUSA.VehicleColorID
	   AND InteriorColorCode=HUSA.VehicleInteriorColorID
	WHERE D.[IsDeleted]=0

  -- --------------------------------------------------------------------------
  -- --Temp delete (NN:10/28/2014)
  --delete from [HyundaiApp].[Byo].[VPKGDS] 
  --where vehiclemodelcodeid in ('28402F4P', '28402F45') and vehiclepackageid in ('02-P2', '11-T2')
  -- --------------------------------------------------------------------------

END


GO
/****** Object:  StoredProcedure [mig].[sp_UsersImport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nick Nguyen
-- Create date: 6/16/2014
-- Description:	Import data from tempImport table to T_Profile and T_User
-- =============================================
CREATE  PROCEDURE  [mig].[sp_UsersImport]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

	--RETURN; 

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE  @ErrProcedure int
    DECLARE  @ErrMsg varchar(1000)
	DECLARE @TempOutput as table
	(			
	            UserPID int
	           ,[UserID] varchar(50)
	          ,[GlobalID] uniqueidentifier
			  ,[FirstName] varchar(50)
			  ,[MiddleName] varchar(20)
			  ,[LastName] varchar(50)
			  ,[Email] varchar(50)
			  ,Phone1  varchar(20)
	)
	DECLARE @DefaultPassword AS VARCHAR(46)='XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg='
	
	BEGIN TRY
		BEGIN TRANSACTION
		
		UPDATE [profile].[T_User]
		SET IsActive=0
		     ,Enabled=0
		WHERE companyPID=11 
			AND [IsActive]=1
			AND UserID like 'HMM%' and userid not in ('HMM10MI007','HMM10MI017','HMM10MI027','HMM10MI040',
				'HMM10MI042','HMM10MI048','HMM10MI049','HMM10MI054','HMM10MI039','HMM100000', 'HMM999901')
	
		MERGE INTO [profile].[T_User] AS T
		USING 
			(
			SELECT 
				  [UserID]      
				  ,[FirstName]
				  ,[MiddleName]
				  ,[LastName]
				  ,[Email]
				  ,Phone1 
			FROM [mig].[UsersTempImport]		
			) AS S
		ON S.UserID=T.UserID
		WHEN NOT MATCHED BY TARGET THEN
		INSERT ([companyPID]
			   ,[UserID]
			   ,[Password]
			   ,[Enabled]
			   ,[lLockedOut]
			   ,[nBadLoginCount]
			   ,[lockoutExpires]
			   ,[MustChangePassword]
			   ,[IsActive]
			   ,[NeedsApproval])
		 VALUES
			   (11
			   ,S.userID
			   ,@DefaultPassword
			   ,1
			   ,0
			   ,0
			   ,getdate()
			   ,0
			   ,1
			   ,0)
		 WHEN  MATCHED THEN
		 UPDATE 
		 SET IsActive=1
		     ,Enabled=1
		 ------------------------------------------------------------
		 OUTPUT
			   inserted.UserPID
			   ,inserted.[UserID]
			  ,inserted.[GlobalID]
			  ,S.[FirstName]
			  ,S.[MiddleName]
			  ,S.[LastName]
			  ,S.[Email]
			  ,S.Phone1 
		 INTO @TempOutput;
			  
		 ------------------------------------------------------------
		 MERGE INTO [profile].[T_Profile] T
		 USING
				(
					SELECT [GlobalID]
				   ,[FirstName]
				   ,[MiddleName]
				   ,[LastName]
				   ,[Email] 
				   ,Phone1
				   ,T.isActive
				   ,17 as RelationshipPID   
				   ,getdate() as ModifyDate
				   ,'SSIS' as CreatedBy
				 FROM  [HyundaiApp].profile.T_User T
				 INNER JOIN mig.UsersTempImport I
				 ON T.UserID=I.UserID				
				) AS S
				ON T.GlobalRefID=S.[GlobalID]
		
		WHEN NOT MATCHED BY TARGET THEN 	 
		 
		INSERT  ([GlobalRefID]
			   ,[FirstName]
			   ,[MiddleInitial]
			   ,[LastName]
				,[Email]
			   ,[Phone1] 
			   ,isActive 
				,RelationshipPID       
			   ,[ModifyDate]
			   ,[Createdby])
		 VALUES ([GlobalID]
			   ,[FirstName]
			   ,[MiddleName]
			   ,[LastName]
			   ,[Email] 
			   ,Phone1
			   ,isActive 
				,RelationshipPID       
			   ,[ModifyDate]
			   ,[Createdby]
			   )
		WHEN MATCHED THEN 	
		
		UPDATE 
			SET isActive=S.isActive
			,FirstName=S.Firstname
			,[MiddleInitial]=S.MiddleName
			,[LastName]=S.LastName
			,[Email]= CASE WHEN LEN(COALESCE(S.Email,''))>0 THEN  S.Email ELSE T.[Email] END
			,Phone1=S.Phone1
		   ,RelationshipPID =S.RelationshipPID      
			,[ModifyDate]=S.ModifyDate
			,[Createdby]=S.CreatedBy
			;
			  
     ------------------------------------------------
     INSERT INTO profile.Role_User(Role_PID,UserPID,IsActive)
     SELECT 1,[UserPID],1 FROM @TempOutput
     WHERE UserPID NOT IN
     (SELECT UserPID FROM profile.Role_User)
     ------------------------------------------------
     --DELETE FROM [mig].[UsersTempImport]
     COMMIT TRANSACTION; 
     PRINT 'SUCCESS'
     

     END TRY

	BEGIN CATCH
		ROLLBACK;
		SELECT  @ErrMsg =  ERROR_MESSAGE() ,@ErrProcedure = ERROR_SEVERITY();   
		RAISERROR(@ErrMsg,@ErrProcedure,1)
		PRINT  @ErrMsg   
	END CATCH


	
		
END
RAISERROR('111',1,1)
GO
/****** Object:  StoredProcedure [PIN].[pop_AddPinStatusCodes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 12/01/2009
-- Description:	Adds Pin Status codes to the database.
-- =============================================
CREATE PROCEDURE [PIN].[pop_AddPinStatusCodes] 
	@PinStatusPID int,
	@PinStatus varchar(16),
	@Description varchar(1024)
AS
BEGIN
	IF EXISTS (select PinStatusPID FROM Pin.PinStatus WHERE PinStatusPID = @PinStatusPID)
	BEGIN
		-- Exists. Update the status
		UPDATE	Pin.PinStatus
			SET	PinStatus = @PinStatus,
				[Description] = @Description
		WHERE	PinStatusPID = @PinStatusPID
	END
	ELSE
	BEGIN
		-- Does not exist. Create a new one
		INSERT INTO	Pin.PinStatus
					(	PinStatusPID,
						PinStatus,
						[Description]	)
			VALUES	(	@PinStatusPID,
						@PinStatus,
						@Description	)
	END
END
GO
/****** Object:  StoredProcedure [PIN].[sp_GetSalesClosingDate]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [PIN].[sp_GetSalesClosingDate]
CREATE PROCEDURE [PIN].[sp_GetSalesClosingDate]
AS 
    BEGIN
        declare @ClosingDate datetime

	SELECT top 1 @ClosingDate = CALENDAR_DATE
        FROM   [HyundaiUSA].[dwh].[HMA_SalesClosingCalender]
        where  SALES_MONTH = MONTH(GETDATE()) and  Sales_YEAR = YEAR(getdate())
	    order by  MONTH(GETDATE()) desc

        --SELECT  @ClosingDate = CALENDAR_DATE
        --FROM    [HyundaiUSA].[dwh].[HMA_SalesClosingCalender]
        --where   SALES_YEAR = YEAR(getdate())
        ----where   CALENDAR_YEAR = YEAR(getdate())
        --        and SALES_MONTH = CONVERT(varchar(2), month(getdate()))
        --        and CONVERT(datetime, CONVERT(varchar(10), GETDATE(), 111), 111) <= CALENDAR_DATE

	  --if day(getdate())=day('2016-01-05 00:00:00.000') 
	  --begin
	  -- set @ClosingDate='2016-01-05 00:00:00.000'
	  --end

	  


       if ( @ClosingDate is not null ) 
            begin
                set @ClosingDate= DATEADD(hour,23,@ClosingDate)
                set @ClosingDate= DATEADD(MINUTE,59,@ClosingDate)
                set @ClosingDate= DATEADD(SECOND,59,@ClosingDate)
                select @ClosingDate
            end 
        else 
            begin
                --SELECT  @ClosingDate = CALENDAR_DATE
                --FROM    [HyundaiUSA].[dwh].[HMA_SalesClosingCalender]
                --where   SALES_YEAR = YEAR(getdate())
                --        and SALES_MONTH = CONVERT(varchar(2), month(getdate()))
                --        and CONVERT(datetime, CONVERT(varchar(10), GETDATE(), 111), 111) <= CALENDAR_DATE
                set @ClosingDate=GETDATE()
                set @ClosingDate= DATEADD(hour,23,@ClosingDate)
                set @ClosingDate= DATEADD(MINUTE,59,@ClosingDate)
                set @ClosingDate= DATEADD(SECOND,59,@ClosingDate)
                select  @ClosingDate
            end 

   end

GO
/****** Object:  StoredProcedure [PIN].[sp_PINExceptionNotes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [PIN].[sp_PINExceptionNotes](@Month varchar(10), @Year varchar(10))
as
begin
declare @sql varchar(8000)

set @sql='SELECT     PIN.PinDetail.PinCode, PIN.PINSale.VIN, PIN.PINSale.SaleDate, PIN.PINSale.RDRDate, profile.T_Profile.FirstName, profile.T_Profile.LastName, 
                      PIN.PINSale.BuyerFirstName, PIN.PINSale.BuyerLastName, PIN.PINSale.Notes
FROM         PIN.PinDetail INNER JOIN
                      PIN.PINSale ON PIN.PinDetail.PinPID = PIN.PINSale.PinPID INNER JOIN
                      profile.T_Profile ON PIN.PinDetail.BuyerRef = profile.T_Profile.GlobalRefID INNER JOIN
                      PIN.PinStatus ON PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID AND PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID
                      where  PIN.PinStatus.PinStatus = ''Used'' and
                      (profile.T_Profile.FirstName !=  PIN.PinSale.BuyerFirstName OR profile.T_Profile.LastName != PIN.PinSale.BuyerLastName)'
                      if (@Month is not null)
                      set @sql = @sql + ' and MONTH(PIN.PinDetail.IssueDate) = '''+  @Month+''' and 
                      year(PIN.PinDetail.IssueDate) = '''+@Year+''''
                      
                      exec(@sql)
end

GO
/****** Object:  StoredProcedure [PIN].[sp_PinIssuedVsUsage]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [PIN].[sp_PinIssuedVsUsage](@PlanTypePID int, @RelationPID int, @DateFrom datetime, @DateTo datetime)
as
begin

declare @SQL varchar(8000)
declare @SQL2 varchar(8000)
set @SQL = 'SELECT view_get.RelationID, view_get.PINIssued, view_get.PlanType, view_GetPinUsed.PINUsed 
as PINUSED FROM  
(SELECT profile.CompanyRelation.RelationID, COUNT(vIssue.PinPID) AS PINIssued, vIssue.PlanType
FROM dbo.view_GetPinIssued AS vIssue INNER JOIN profile.T_User ON 
vIssue.SponsorPID = profile.T_User.UserPID INNER JOIN
    profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID INNER JOIN
    profile.CompanyRelation ON profile.T_Company.companyRelation = profile.CompanyRelation.RelationPID
    where 1=1'
    if (@PlanTypePID !=0)
                      begin
    set
@SQL = @SQL + ' and vIssue.PlanTypePID ='+CAST(@PlanTypePID as varchar(10))+''
                      end 
                      if (@RelationPID !=0)
                      begin
    set
@SQL = @SQL + ' and  CompanyRelation.RelationPID='+CAST(@RelationPID as varchar(10))+''
                      end 
                      if (CAST(@DateFrom as varchar(20)) is not null)
                      begin

SET @SQL = @SQL + ' and vIssue.IssueDate between '''+CAST(@DateFrom-1 as varchar(20))+''' and '''+CAST(@DateTo+1 as varchar(20))+''''
                      end
SET @SQL = @SQL + ' GROUP BY profile.CompanyRelation.RelationID, vIssue.PlanType) 
as view_get LEFT OUTER JOIN
(SELECT     COUNT(profile.[Plan].PlanTypePID) AS PINUsed, 
profile.CompanyRelation.RelationID, profile.PlanTypes.PlanType, 
profile.PlanTypes.PlanTypePID, profile.CompanyRelation.RelationPID
FROM PIN.PinDetail INNER JOIN
        PIN.PinStatus ON PIN.PinDetail.PinStatusPID = PIN.PinStatus.PinStatusPID INNER JOIN
        profile.[Plan] ON PIN.PinDetail.PlanPID = profile.[Plan].PlanPID INNER JOIN
        profile.PlanTypes ON profile.[Plan].PlanTypePID = profile.PlanTypes.PlanTypePID AND profile.[Plan].PlanTypePID = profile.PlanTypes.PlanTypePID INNER JOIN
        profile.T_User ON PIN.PinDetail.SponsorPID = profile.T_User.UserPID INNER JOIN
        profile.T_Company ON profile.T_User.companyPID = profile.T_Company.companyPID AND profile.T_User.companyPID = profile.T_Company.companyPID AND 
        profile.T_User.companyPID = profile.T_Company.companyPID INNER JOIN
        profile.CompanyRelation ON profile.T_Company.companyRelation = profile.CompanyRelation.RelationPID AND 
        profile.T_Company.companyRelation = profile.CompanyRelation.RelationPID AND profile.T_Company.companyRelation = profile.CompanyRelation.RelationPID
WHERE (PIN.PinStatus.PinStatus = ''Used'')'
if (@PlanTypePID !=0)
                      begin
    set
@SQL = @SQL + ' and profile.PlanTypes.PlanTypePID ='+CAST(@PlanTypePID as varchar(10))+''
                      end 
                      if (@RelationPID !=0)
                      begin
    set
@SQL = @SQL + ' and  CompanyRelation.RelationPID='+CAST(@RelationPID as varchar(10))+''
                      end 
                      if (CAST(@DateFrom as varchar(20)) is not null)
                      begin

SET @SQL = @SQL + ' and PIN.PinDetail.IssueDate between '''+CAST(@DateFrom-1 as varchar(20))+''' and '''+CAST(@DateTo+1 as varchar(20))+''''
                      end 
SET @SQL = @SQL + ' GROUP BY profile.CompanyRelation.RelationID, profile.PlanTypes.PlanType, 
profile.PlanTypes.PlanTypePID, profile.CompanyRelation.RelationPID) 
as  view_GetPinUsed 
ON view_get.PlanType = view_GetPinUsed.PlanType AND 
view_get.RelationID = view_GetPinUsed.RelationID' 
					
					 print (@SQL)                     
                     
                      exec(@SQL)
end
GO
/****** Object:  StoredProcedure [PIN].[sp_PinManagement]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [PIN].[sp_PinManagement](@PlanTypePID int, @PinStatus varchar(10), @DateFrom datetime, @DateTo datetime)
as
begin

declare @sql varchar(8000)

	set @sql='SELECT PIN.PinManagement.* FROM PIN.PinManagement where 1=1'
	if(@PlanTypePID is not null)
	begin
		set @sql = @sql+' and PlanTypePID='+CAST(@PlanTypePID as varchar(4))+''
	end
	if(@PinStatus is not null)
	begin
		set @sql = @sql+' and PinStatus='''+@PinStatus +''''
	end
	if(@DateFrom is not null)
	begin
		set @sql = @sql+' and IssueDate between '''+CAST(@DateFrom as varchar(20))+''' and '''+CAST(@DateTo as varchar(20))+''''
	end
exec(@sql)
end

GO
/****** Object:  StoredProcedure [PIN].[sp_RDRAnalysisReport]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [PIN].[sp_RDRAnalysisReport](@Dealer char(5), @Region char(2), @PlanType varchar(24), @Month int, @Year int)
as
begin

declare @sql varchar(8000)
	
set @sql ='SELECT * FROM PIN.RDRAnalysisData where 1=1'
	if (@Dealer is not null)
	begin
		set @sql = @sql + ' and DealerCode='''+@Dealer+''''
	end
	if (@Region is not null)
	begin
		set @sql = @sql + ' and Region='''+@Region+''''
	end
	if (@PlanType is not null)
	begin
		set @sql = @sql + ' and SaleType='''+@PlanType+''''
	end
	if (@Month is not null)
	begin
		set @sql = @sql + ' and MONTH(IssueDate)='+cast(@Month as varchar(3))+''
	end
	if (@Year is not null)
	begin
		set @sql = @sql + ' and YEAR(IssueDate)='+ CAST(@Year as varchar(4))+''
	end
	
	exec(@sql)
end
GO
/****** Object:  StoredProcedure [PIN].[spHCircle_Delete_SpecialCoupons]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [PIN].[spHCircle_Delete_SpecialCoupons]
    @CouponPID int

AS 
                    begin
                        update PIN.SpecialCoupon set isactive=0
						where CouponPID=@CouponPID
					end
    RETURN

GO
/****** Object:  StoredProcedure [PIN].[spHCircle_DeletePinSale]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PIN].[spHCircle_DeletePinSale] 
@PIN NVARCHAR(100)
AS 
    BEGIN
	
        DECLARE @PinPID INT
	
        SELECT  @PinPID = pinpid
        FROM    pin.PinDetail
        WHERE   PinCode = @PIN
	
        DELETE  FROM PIN.PINSale
        WHERE   PinPID = @PinPID
	
    END
GO
/****** Object:  StoredProcedure [PIN].[spHCircle_Insert_SpecialCoupons]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PIN].[spHCircle_Insert_SpecialCoupons]
    @modelYear int,
    @modelName nvarchar(50),
    @TrimName nvarchar(50),
    @PackageName nvarchar(150),
    @PlanTypePID INT,
    @EffectiveDate datetime,
	@ExpirationDate datetime,
	@IncentiveCashAmt numeric(15,2),
	@SpecialText nvarchar(500),
	@IncludePicture bit,
	@isActive bit

AS 
    Declare @VehicleModelCodeId varchar(3),
        @VehiclePackageId varchar(3)
    Select  @VehicleModelCodeId = 'All',
            @VehiclePackageId = 'All'

if  exists(select * from PIN.SpecialCoupon where ModelYear=@modelYear and PlanTypePID=@PlanTypePID 
 and VehicleID=@modelName and isactive= 1)
 begin
	if(@TrimName='All')
	begin
	return
	end
 end
if not exists(select * from PIN.SpecialCoupon where ModelYear=@modelYear and PlanTypePID=@PlanTypePID 
 and VehicleID=@modelName and isactive= 1 and (VehicleModelCodeId=@TrimName or VehicleModelCodeId='All') )
 begin
    if @modelName = 'All' 
        begin
            insert  into PIN.SpecialCoupon
                    (
                      ExclusionTypePID,
                      VehicleId,
                      VehicleModelCodeId,
                      VehiclePackageId,
                      isActive,
                      modelYear,
                      PlanTypePID,
                      EffectiveDate,
					  ExpirationDate,
					  IncentiveCashAmt,
					  SpecialText,
					  IncludePicture
                   )
            VALUES  (
                      4,
                      @modelName,
                      @TrimName,
                      @PackageName,
                      'true',
                      @modelYear,
                      @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture

                    )
        END
    ELSE 
        if @PackageName = 'All'
            and @TrimName = 'All' 
            begin
                insert  into PIN.SpecialCoupon
                        (
                          ExclusionTypePID,
                          VehicleId,
                          VehicleModelCodeId,
                          VehiclePackageId,
                          isActive,
                          modelYear,
                          PlanTypePID,
						  EffectiveDate,
						  ExpirationDate,
						  IncentiveCashAmt,
						  SpecialText,
						  IncludePicture
                       )
                VALUES  (
                          1,
                          @modelName,
                          @TrimName,
                          @PackageName,
                          'true',
                          @modelYear,
                          @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
                        )
            end
        ELSE 
            if @TrimName = 'All' 
                begin
                    insert  into PIN.SpecialCoupon
                            (
                              ExclusionTypePID,
                              VehicleId,
                              VehicleModelCodeId,
                              VehiclePackageId,
                              isActive,
                              modelYear,
                              PlanTypePID,
								EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                           )
                    VALUES  (
                              1,
                              @modelName,
                              @TrimName,
                              @PackageName,
                              'true',
                              @modelYear,
                              @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
                            )
                end
            ELSE 
                if @PackageName = 'All' 
                    begin
                        insert  into PIN.SpecialCoupon
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
								 EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                               )
                        VALUES  (
                                  2,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
					  )
                    end
                else 
                    begin
                        insert  into PIN.SpecialCoupon
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
								 EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                                )
                        VALUES  (
                                  3,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
								@EffectiveDate,
								@ExpirationDate,
								@IncentiveCashAmt,
								@SpecialText,
								@IncludePicture
                               )
                    end
					end

    RETURN

GO
/****** Object:  StoredProcedure [PIN].[spHCircle_Insert_SpecialCoupons_test]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [PIN].[spHCircle_Insert_SpecialCoupons_test]
    @modelYear int,
    @modelName nvarchar(50),
    @TrimName nvarchar(50),
    @PackageName nvarchar(150),
    @PlanTypePID INT,
    @EffectiveDate datetime,
	@ExpirationDate datetime,
	@IncentiveCashAmt numeric(15,2),
	@SpecialText nvarchar(500),
	@IncludePicture bit,
	@isActive bit

AS 
    Declare @VehicleModelCodeId varchar(3),
        @VehiclePackageId varchar(3)
    Select  @VehicleModelCodeId = 'All',
            @VehiclePackageId = 'All'

if not exists(select * from PIN.SpecialCoupon where ModelYear=@modelYear and PlanTypePID=@PlanTypePID 
 and VehicleID=@modelName and isactive= 1 and (VehicleModelCodeId=@TrimName or VehicleModelCodeId='All') )
 begin
    if @modelName = 'All' 
        begin
            insert  into PIN.SpecialCoupon
                    (
                      ExclusionTypePID,
                      VehicleId,
                      VehicleModelCodeId,
                      VehiclePackageId,
                      isActive,
                      modelYear,
                      PlanTypePID,
                      EffectiveDate,
					  ExpirationDate,
					  IncentiveCashAmt,
					  SpecialText,
					  IncludePicture
                   )
            VALUES  (
                      4,
                      @modelName,
                      @TrimName,
                      @PackageName,
                      'true',
                      @modelYear,
                      @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture

                    )
        END
    ELSE 
        if @PackageName = 'All'
            and @TrimName = 'All' 
            begin
                insert  into PIN.SpecialCoupon
                        (
                          ExclusionTypePID,
                          VehicleId,
                          VehicleModelCodeId,
                          VehiclePackageId,
                          isActive,
                          modelYear,
                          PlanTypePID,
						  EffectiveDate,
						  ExpirationDate,
						  IncentiveCashAmt,
						  SpecialText,
						  IncludePicture
                       )
                VALUES  (
                          1,
                          @modelName,
                          @TrimName,
                          @PackageName,
                          'true',
                          @modelYear,
                          @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
                        )
            end
        ELSE 
            if @TrimName = 'All' 
                begin
                    insert  into PIN.SpecialCoupon
                            (
                              ExclusionTypePID,
                              VehicleId,
                              VehicleModelCodeId,
                              VehiclePackageId,
                              isActive,
                              modelYear,
                              PlanTypePID,
								EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                           )
                    VALUES  (
                              1,
                              @modelName,
                              @TrimName,
                              @PackageName,
                              'true',
                              @modelYear,
                              @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
                            )
                end
            ELSE 
                if @PackageName = 'All' 
                    begin
                        insert  into PIN.SpecialCoupon
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
								 EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                               )
                        VALUES  (
                                  2,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
                      @EffectiveDate,
					  @ExpirationDate,
					  @IncentiveCashAmt,
					  @SpecialText,
					  @IncludePicture
					  )
                    end
                else 
                    begin
                        insert  into PIN.SpecialCoupon
                                (
                                  ExclusionTypePID,
                                  VehicleId,
                                  VehicleModelCodeId,
                                  VehiclePackageId,
                                  isActive,
                                  modelYear,
                                  PlanTypePID,
								 EffectiveDate,
								ExpirationDate,
								IncentiveCashAmt,
								SpecialText,
								IncludePicture
                                )
                        VALUES  (
                                  3,
                                  @modelName,
                                  @TrimName,
                                  @PackageName,
                                  'true',
                                  @modelYear,
                                  @PlanTypePID,
								@EffectiveDate,
								@ExpirationDate,
								@IncentiveCashAmt,
								@SpecialText,
								@IncludePicture
                               )
                    end
					end

    RETURN

GO
/****** Object:  StoredProcedure [PIN].[spHCircle_InsertPinSale]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PIN].[spHCircle_InsertPinSale]
	  @PIN NVARCHAR(24),
      @VIN VARCHAR(24) = null,
      @DealerCode CHAR(5),
      @RDRDate DATETIME,
      @SaleDate DATETIME,
      @PlanType INT = NULL,
      @ModelYear INT = null,
      @ModelCode VARCHAR(20) = null,
      @Packagecode VARCHAR(20) = null,
      @InvoiceAmt DECIMAL = null,
      @BuyerFirstName VARCHAR(30) = null,
      @BuyerLastName VARCHAR(30) = null,
      @Notes VARCHAR(max) = NULL
AS 
    BEGIN
	
        DECLARE @PinPID INT
	
        SELECT  @PinPID = pinpid
        FROM    pin.PinDetail
        WHERE   PinCode = @PIN
	
        INSERT  INTO PIN.PINSale
                (
                  [PinPID],
                  [DealerCode],
                  [RDRDate],
                  [SaleDate],
                  [PlanType],
                  [VIN],
                  [ModelYear],
                  [ModelCode],
                  [Packagecode],
                  [InvoiceAmt],
                  [BuyerFirstName],
                  [BuyerLastName],
                  [Notes]
                )
        VALUES  (
                  @PinPID,
                  @DealerCode,
                  @RDRDate,
                  @SaleDate,
                  @PlanType,
                  @VIN,
                  @ModelYear,
                  @ModelCode,
                  @Packagecode,
                  @InvoiceAmt,
                  @BuyerFirstName,
                  @BuyerLastName,
                  @Notes
                )
	
    END
GO
/****** Object:  StoredProcedure [PIN].[spHCirlce_GetModelByVIN]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [PIN].[SPHCirlce_GetModelByVIN] 'KMHDB8AE3BU111055'

CREATE procedure [PIN].[spHCirlce_GetModelByVIN]
(
@VIN varchar(24)
)
as
begin

declare @modelYear int
declare @modelName varchar(20)

        SELECT distinct
                    @modelYear=M.Year,@modelName=M.Name
          FROM      ( SELECT  SUBSTRING(@VIN, 4, 1) + SUBSTRING(@VIN, 6, 1)
                                + SUBSTRING(@VIN, 5, 1) + SUBSTRING(@VIN, 8, 1)
                                + SUBSTRING(@VIN, 10, 1) as ModelID
                    ) A
                    INNER JOIN HMA_OS_APP.dbo.Modl_Model M ON A.ModelID = M.Modl_Model_Number
        select * from dbo.fnHCirlce_GetModelByYear (@modelYear) where VehicleName=@modelName
end

GO
/****** Object:  StoredProcedure [profile].[pop_AddCompany]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/09/2009
-- Description:	Adds a company to the database. If the company exists, updates it.
-- =============================================
CREATE PROCEDURE [profile].[pop_AddCompany] 
	@CompanyRelationID varchar(24),
	@companyID varchar(24),
	@companyName varchar(256),
	@IsActive bit
AS
BEGIN
	-- Get the PID's
	DECLARE	@companyPID int, @RelationPID int
	
	SELECT		@RelationPID = Rel.RelationPID, @companyPID = Cmp.companyPID
	FROM		profile.CompanyRelation Rel
	LEFT JOIN	profile.T_Company Cmp ON Cmp.companyID = @companyID
	WHERE		RelationID = @CompanyRelationID

	IF @RelationPID is null
	BEGIN
		-- Relation not found
		RAISERROR( 'The Relationship was not found in the database', 15,1)
		RETURN
	END
	IF	@companyPID is not null
	BEGIN
		-- Company exists, update it.
		UPDATE	profile.T_Company
			SET	companyRelation = @RelationPID,
				companyName = @companyName,
				IsActive = @IsActive
		WHERE	companyPID = @companyPID
	END
	ELSE
	BEGIN
		-- Company does not exist, so create it
		INSERT INTO	profile.T_Company
					(	companyRelation,
						companyID,
						companyName,
						IsActive	)
			VALUES	(	@RelationPID,
						@companyID,
						@companyName,
						@IsActive	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_AddCompanyRelation]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/09/2009
-- Description:	Populates the Company Relations
-- =============================================
CREATE PROCEDURE [profile].[pop_AddCompanyRelation]
	@RelationID varchar(24),
	@RelationDesc varchar(1024),
	@DefaultRoleName varchar(16),
	@SignUpAllowed bit,
	@isActive bit
AS
BEGIN
	-- Get the Relation and Role PID's
	DECLARE @RelationPID int, @Role_PID int

	SELECT		@Role_PID =	Rol.Role_PID, @RelationPID = Rel.RelationPID
	FROM         profile.Roles AS Rol
	LEFT OUTER JOIN profile.CompanyRelation AS Rel ON RelationID = @RelationID
	WHERE     (Rol.Role = @DefaultRoleName)

	IF @Role_PID is null
	BEGIN
		-- Role is not in the database
		Raiserror('Specified Role was not found', 15,1)
		return
	END

	IF @RelationPID is not null
	BEGIN
		-- Relation exists, so update it
		UPDATE	profile.CompanyRelation
			SET	RelationDesc = @RelationDesc,
				DefaultRole = @Role_PID,
				SignUpAllowed = @SignUpAllowed,
				isActive = @isActive
		WHERE	RelationPID = @RelationPID
	END
	BEGIN
		-- Relation does not exist, so add it
		INSERT INTO	profile.CompanyRelation
					(	RelationID,
						RelationDesc,
						DefaultRole,
						SignUpAllowed,
						isActive	)
			VALUES	(	@RelationID,
						@RelationDesc,
						@Role_PID,
						@SignUpAllowed,
						@isActive	)
	END
	
END
GO
/****** Object:  StoredProcedure [profile].[pop_AddNullDisclaimer]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/20/2009
-- Description:	Populates the blank disclaimers into the database
-- =============================================
CREATE PROCEDURE [profile].[pop_AddNullDisclaimer] 
	@DisclaimerID varchar(24),
	@DisclaimerDesc varchar(50)
AS
BEGIN
	DECLARE @DisclaimerPID int
	
	-- Get the PID
	SELECT	@DisclaimerPID = DisclaimerPID
	FROM	profile.Disclaimers
	WHERE	DisclaimerID = @DisclaimerID
	
	IF @DisclaimerPID is not null
	BEGIN
		-- Disclaimer already exists, so update it.
		UPDATE	profile.Disclaimers
			SET	DisclaimerID = @DisclaimerID,
				DisclaimerDesc = @DisclaimerDesc
		WHERE	DisclaimerPID = @DisclaimerPID
	END
	ELSE
	BEGIN
		-- Disclaimer does not exist, create it.
		INSERT INTO	profile.Disclaimers
					(	DisclaimerID,
						DisclaimerDesc	)
			VALUES	(	@DisclaimerID,
						@DisclaimerDesc	)
	END
	
END
GO
/****** Object:  StoredProcedure [profile].[pop_AddPlanStatusCodes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/20/2009
-- Description:	Populates the plan status codes into the database
-- =============================================
CREATE PROCEDURE [profile].[pop_AddPlanStatusCodes]
	@StatusPID int,
	@StatusCode varchar(24)
AS
BEGIN
	IF Exists (select StatusPID from profile.PlanStatusCodes where StatusPID = @StatusPID)
	BEGIN
		-- Status Code Exists, update the name
		UPDATE	profile.PlanStatusCodes
			SET	StatusCode = @StatusCode
		WHERE	StatusPID = @StatusPID
	END
	ELSE
	BEGIN
		-- Status code does not exist, Insert a new one
		INSERT INTO	profile.PlanStatusCodes
					(	StatusPID,
						StatusCode	)
			VALUES	(	@StatusPID,
						@StatusCode	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_AddPlanType]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/20/2009
-- Description:	Adds the Plan Types to the database
-- =============================================
CREATE PROCEDURE [profile].[pop_AddPlanType] 
	@PlanTypePID int,
	@PlanType varchar(24),
	@PlanTypeDesc varchar(1024),
	@PinCodePrefix varchar(4),
	@PinCodeMinNbr int
AS
BEGIN
	IF EXISTS (select PlanTypePID FROM profile.PlanTypes WHERE PlanTypePID = @PlanTypePID)
	BEGIN
		-- Plan type exists, update it
		UPDATE	profile.PlanTypes
			SET	PlanType = @PlanType,
				PlanTypeDesc = @PlanTypeDesc,
				PinCodePrefix = @PinCodePrefix,
				PinCodeMinNbr = @PinCodeMinNbr
		WHERE	PlanTypePID = @PlanTypePID
	END
	ELSE
	BEGIN
		-- Plan type does not exist, insert it.
		INSERT INTO profile.PlanTypes
					(	PlanTypePID,
						PlanType,
						PlanTypeDesc,
						PinCodePrefix,
						PinCodeMinNbr	)
			VALUES	(	@PlanTypePID,
						@PlanType,
						@PlanTypeDesc,
						@PinCodePrefix,
						@PinCodeMinNbr	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_AddRole]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/09/2009
-- Description:	Populates an initial Role into the roles Table
-- =============================================
CREATE PROCEDURE [profile].[pop_AddRole]
	@Role varchar(16),
	@Description varchar(1024),
	@IsActive bit
AS
BEGIN
	-- Get the PID to see if the role exists
	DECLARE @Role_PID int
	
	SELECT	@Role_PID = Role_PID
	FROM	profile.Roles
	WHERE	[Role] = @Role

	IF @Role_PID is not null
	BEGIN
		-- The role exists. Update it
		UPDATE	profile.Roles
			SET	[Description] = @Description,
				IsActive = @IsActive
		WHERE	Role_PID = @Role_PID
	END
	ELSE
	BEGIN
		-- The role does not exist so Add it.
		INSERT INTO profile.Roles
					(	[Role],
						[Description],
						IsActive	)
			VALUES	(	@Role,
						@Description,
						@IsActive	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_RDRSaleType]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/23/2009
-- Description:	Populates the initial RDR Sales Types into the database
-- =============================================
CREATE PROCEDURE [profile].[pop_RDRSaleType]
	@RDRSaleCode varchar(16),
	@Description varchar(1024),
	@IsActive bit
AS
BEGIN
	DECLARE @RDRSalePID int
	
	-- Get the Sale Type PID
	SELECT	@RDRSalePID = RDRSalePID
	FROM	profile.RDRSaleType
	WHERE	RDRSaleCode = @RDRSaleCode
	
	IF @RDRSalePID is not null
	BEGIN
		-- Sale type is found, update it
		UPDATE	profile.RDRSaleType
			SET	[Description] = @Description,
				IsActive = @IsActive
	END
	ELSE
	BEGIN
		-- Sale type not found, Create one
		INSERT INTO profile.RDRSaleType
					(	RDRSaleCode,
						[Description],
						IsActive	)
			VALUES	(	@RDRSaleCode,
						@Description,
						@IsActive	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_RelateUserIDPattern]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/09/2009
-- Description:	Relates internal user id patterns to a company
-- =============================================
CREATE PROCEDURE [profile].[pop_RelateUserIDPattern]
	@IDPrefix varchar(16),
	@DefaultCompanyID varchar(24)
AS
BEGIN
	-- Get the necessary PID's
	DECLARE		@companyPID int, @PatternPID int

	SELECT		@companyPID = Cmp.companyPID,
				@PatternPID = Pat.PatternPID
	FROM		profile.T_Company Cmp
	LEFT JOIN	profile.UserIdPatterns Pat ON Pat.IDPrefix = @IDPrefix
	WHERE		Cmp.companyID = @DefaultCompanyID

	IF @companyPID is null
	BEGIN
		-- Error. Company not found
		RAISERROR('Can''t attach the pattern because the company was not found', 15, 1)
		RETURN
	END
	
	IF @PatternPID is not null
	BEGIN
		-- Pattern exists, so update it
		UPDATE	profile.UserIdPatterns
			SET	DefaultCompany = @companyPID
		WHERE	PatternPID = @PatternPID
	END
	ELSE
	BEGIN
		-- Pattern does not exist, so Create it.
		INSERT INTO	profile.UserIdPatterns
					(	IDPrefix,
						DefaultCompany	)
			VALUES	(	@IDPrefix,
						@companyPID	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[pop_VechicleExclusionTypes]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/20/2009
-- Description:	Populates the vehicle exclusion types in the database
-- =============================================
CREATE PROCEDURE [profile].[pop_VechicleExclusionTypes]
	@ExclusionTypePID int,
	@ExclusionType varchar(24)
AS
BEGIN
	IF EXISTS ( select ExclusionTypePID from Byo.ExclusionType where ExclusionTypePID = @ExclusionTypePID)
	BEGIN
		-- Exclusion type exists. Update the existing one
		UPDATE	Byo.ExclusionType
			SET	ExclusionType = @ExclusionType
		WHERE	ExclusionTypePID = @ExclusionTypePID
	END
	ELSE
	BEGIN
		-- Exclusion Type does not exist, create a new one
		INSERT INTO	Byo.ExclusionType
					(	ExclusionTypePID,
						ExclusionType	)
			VALUES	(	@ExclusionTypePID,
						@ExclusionType	)
	END
END
GO
/****** Object:  StoredProcedure [profile].[sp_GetPlanModificationHistory]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [profile].[sp_GetPlanModificationHistory](@PlanTypePID int, @DateFrom datetime, @DateTo datetime)
as
begin

declare @sql varchar(8000)


set @sql='	SELECT     profile.SponsorModificationHistory.SponsorType, profile.SponsorModificationHistory.PinLimit, profile.PlanModificationHistory.*
FROM         profile.PlanModificationHistory INNER JOIN
                      profile.SponsorModificationHistory ON profile.PlanModificationHistory.PlanPID = profile.SponsorModificationHistory.PlanPID AND 
                      profile.PlanModificationHistory.PlanArchivePID = profile.SponsorModificationHistory.PlanArchivePID where 1=1'

	if (@PlanTypePID is not null)
	begin
		set @sql = @sql +' and PlanTypePID='+ CAST(@PlanTypePID as varchar(5))+''
	end	
	if(CAST(@DateFrom as varchar(20)) is not null)
	begin
		set @sql = @sql + ' and ModificationDate between '''+CAST(@DateFrom as varchar(20))+''' and '''+CAST(@DateTo as varchar(20))+''''
	end
	print(@sql)
	exec(@sql)
end

GO
/****** Object:  StoredProcedure [profile].[sp_PlanFilter]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Rohit 
-- Create date: 11/24/2020 
-- Description: Filtering plans based on different Conditions
-- Example: EXEC [profile].[sp_PlanFilter] @UserId = 'HMM91512', @Role = 'PlanAdmin', @CompanyID = null, @GlobalID = null
-- History:  
-- Created by Rohit for HC-317 on 11/24/2020 
-- Modified by Bhagyashree Rajput for HC-762 on 11/14/2024
-- =============================================

CREATE PROC [profile].[sp_PlanFilter]
 @UserId varchar(128),
 @Role varchar(16),
 @CompanyID varchar(24),
 @GlobalID varchar(50)
 
 
AS
BEGIN
--UserId - HMM101547
--Role - PlanAdmin
--GlobalId - DECF695D-F38F-4900-8E4D-4C416C674E2F
--CompanyId - IL002
--For Employee
--EXEC [profile].[sp_PlanFilter] 'HMM101547','PlanAdmin',NULL,NULL
--EXEC [profile].[sp_PlanFilter] 'IWA*01547','PlanAdmin',NULL,NULL
--For NON-Employee ( Vendor/Supplier ) 
--EXEC [profile].[sp_PlanFilter] NULL,NULL,'IL002','DECF695D-F38F-4900-8E4D-4C416C674E2F'


-- Store the Active Plan in Temp Table 
SELECT * INTO #PLANLIST FROM PROFILE.[PLAN] WHERE PlanStatus = 2 

  Declare @SplitOn char(1)=',';

  -- Split the TBL 'PlanFilterCondition' value by (',') based on their [KEY] and store them into Temp Table.
  Declare @ExcludeEmployeeFromPlanEList varchar(5000)  
  Declare @ExcludeEmployeeFromPlanE table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @ExcludeEmployeeFromPlanEList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'ExcludeEmployeeFromPlanE')
  
  While (Charindex(@SplitOn,@ExcludeEmployeeFromPlanEList)>0)
		Begin 
			Insert Into @ExcludeEmployeeFromPlanE (value)
			Select 
			Value = ltrim(rtrim(Substring(@ExcludeEmployeeFromPlanEList,1,Charindex(@SplitOn,@ExcludeEmployeeFromPlanEList)-1))) 
			Set @ExcludeEmployeeFromPlanEList = Substring(@ExcludeEmployeeFromPlanEList,Charindex(@SplitOn,@ExcludeEmployeeFromPlanEList)+len(@SplitOn),len(@ExcludeEmployeeFromPlanEList))
		End 
		Insert Into @ExcludeEmployeeFromPlanE (Value)
			Select Value = ltrim(rtrim(@ExcludeEmployeeFromPlanEList))   
 
 
  Declare @IPlanUserList varchar(5000)  
  Declare @IPlanUser table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @IPlanUserList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'IPlanUser')
  
  While (Charindex(@SplitOn,@IPlanUserList)>0)
		Begin 
			Insert Into @IPlanUser (value)
			Select 
			Value = ltrim(rtrim(Substring(@IPlanUserList,1,Charindex(@SplitOn,@IPlanUserList)-1))) 
			Set @IPlanUserList = Substring(@IPlanUserList,Charindex(@SplitOn,@IPlanUserList)+len(@SplitOn),len(@IPlanUserList))
		End 
		Insert Into @IPlanUser (Value)
			Select Value = ltrim(rtrim(@IPlanUserList)) 

  
  Declare @MplanDealersList varchar(5000)  
  Declare @MplanDealers table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @MplanDealersList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'MplanDealers')
  
  While (Charindex(@SplitOn,@MplanDealersList)>0)
		Begin 
			Insert Into @MplanDealers (value)
			Select 
			Value = ltrim(rtrim(Substring(@MplanDealersList,1,Charindex(@SplitOn,@MplanDealersList)-1))) 
			Set @MplanDealersList = Substring(@MplanDealersList,Charindex(@SplitOn,@MplanDealersList)+len(@SplitOn),len(@MplanDealersList))
		End 
		Insert Into @MplanDealers (Value)
			Select Value = ltrim(rtrim(@MplanDealersList))  

  Declare @MRegionplanDealersList varchar(5000)  
  Declare @MRegionplanDealers table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @MRegionplanDealersList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'MRegionplanDealers')
  
  While (Charindex(@SplitOn,@MRegionplanDealersList)>0)
		Begin 
			Insert Into @MRegionplanDealers (value)
			Select 
			Value = ltrim(rtrim(Substring(@MRegionplanDealersList,1,Charindex(@SplitOn,@MRegionplanDealersList)-1))) 
			Set @MRegionplanDealersList = Substring(@MRegionplanDealersList,Charindex(@SplitOn,@MRegionplanDealersList)+len(@SplitOn),len(@MRegionplanDealersList))
		End 
		Insert Into @MRegionplanDealers (Value)
			Select Value = ltrim(rtrim(@MRegionplanDealersList))
			

  Declare @PlanWServiceMangersList varchar(5000)  
  Declare @PlanWServiceMangers table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @PlanWServiceMangersList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'PlanWServiceMangers')
  
  While (Charindex(@SplitOn,@PlanWServiceMangersList)>0)
		Begin 
			Insert Into @PlanWServiceMangers (value)
			Select 
			Value = ltrim(rtrim(Substring(@PlanWServiceMangersList,1,Charindex(@SplitOn,@PlanWServiceMangersList)-1))) 
			Set @PlanWServiceMangersList = Substring(@PlanWServiceMangersList,Charindex(@SplitOn,@PlanWServiceMangersList)+len(@SplitOn),len(@PlanWServiceMangersList))
		End 
		Insert Into @PlanWServiceMangers (Value)
			Select Value = ltrim(rtrim(@PlanWServiceMangersList))


  Declare @SuperAdminList varchar(5000)  
  Declare @SuperAdmin table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @SuperAdminList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'SuperAdmin')
  
  While (Charindex(@SplitOn,@SuperAdminList)>0)
		Begin 
			Insert Into @SuperAdmin (value)
			Select 
			Value = ltrim(rtrim(Substring(@SuperAdminList,1,Charindex(@SplitOn,@SuperAdminList)-1))) 
			Set @SuperAdminList = Substring(@SuperAdminList,Charindex(@SplitOn,@SuperAdminList)+len(@SplitOn),len(@SuperAdminList))
		End 
		Insert Into @SuperAdmin (Value)
			Select Value = ltrim(rtrim(@SuperAdminList))

--Added as part of HC-762
  Declare @CustomPlanWServiceManagersList varchar(5000)  
  Declare @CustomPlanWServiceManagers table 
	(	Id int identity(1,1),	Value varchar(100)	) 
  
  set @CustomPlanWServiceManagersList = (SELECT value  FROM [HyundaiApp].[dbo].[PlanFilterCondition] WHERE [KEY] = 'CustomPlanWServiceManagers')
  
  While (Charindex(@SplitOn,@CustomPlanWServiceManagersList)>0)
		Begin 
			Insert Into @CustomPlanWServiceManagers (value)
			Select 
			Value = ltrim(rtrim(Substring(@CustomPlanWServiceManagersList,1,Charindex(@SplitOn,@CustomPlanWServiceManagersList)-1))) 
			Set @CustomPlanWServiceManagersList = Substring(@CustomPlanWServiceManagersList,Charindex(@SplitOn,@CustomPlanWServiceManagersList)+len(@SplitOn),len(@CustomPlanWServiceManagersList))
		End 
		Insert Into @CustomPlanWServiceManagers (Value)
			Select Value = ltrim(rtrim(@CustomPlanWServiceManagersList))
--End			   

--Check if request for EMPLOY or NON-EMPLOY (Vendor , Supplier etc.) 

		IF(@UserId IS NOT NULL AND @Role IS NOT NULL ) -- EMPLOYEE
		BEGIN 
		PRINT 'EMPLOYEE LOGIN CHECK SUCCESS'

		--For HC-762 isCustomPlanWServiceManager
		IF EXISTS( SELECT 1 FROM @CustomPlanWServiceManagers WHERE VALUE = @UserId )
			 BEGIN
			 DELETE FROM #PLANLIST WHERE PlanName NOT IN ( 'PLAN W')
			 END
		--End
		ELSE
			BEGIN
				--IF EXISTS( SELECT 1 FROM PlanFilterCondition WHERE [KEY] ='ExcludeEmployeeFromPlanE' AND
				-- VALUE = SUBSTRING(@UserId, 1, 4))
				IF EXISTS( SELECT 1 FROM @ExcludeEmployeeFromPlanE WHERE VALUE = SUBSTRING(@UserId, 1, 4))
			 BEGIN
			 DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN E','PLAN O')
				IF NOT EXISTS( SELECT 1 FROM @PlanWServiceMangers WHERE	VALUE = @UserId)
				DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN W')
			 END
					 		
				IF EXISTS ( SELECT 1 FROM @SuperAdmin WHERE VALUE <> @UserId AND UPPER(@ROLE) <> 'PLANADMIN' )
			BEGIN
				--REMOVE PLAN_M/PLAN_V/PLAN_K/PLAN_I
				DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN M', 'PLAN V', 'PLAN K','PLAN I')			
				 IF NOT EXISTS( SELECT 1 FROM @PlanWServiceMangers WHERE VALUE = @UserId)
				DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN W')
			END

				--isDSMPlanAUser
				IF EXISTS ( SELECT 1 FROM DBO.fnHCircle_GetDSM(@UserId) ) 
		 --REMOVE PLAN_A from #PLANLIST
		 DELETE FROM #PLANLIST WHERE PlanName = 'PLAN A'

				DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN Z', 'PLAN M')
				--SELECT * from #PLANLIST
			END		
		END

		IF(@CompanyID IS NOT NULL AND @GlobalID IS NOT NULL ) -- NON-EMPLOYEE (Vendor,Supplier etc ) 
		BEGIN
		PRINT 'VENDOR LOGIN CHECK SUCCESS'
		
		--isCompanyAffiliate 
		IF NOT EXISTS ( SELECT * FROM DBO.fnHCircle_GetPlanByCompanyGlobalID(@GlobalID, 'PLAN O') ) 
		 --REMOVE PLAN_O 
		 DELETE FROM #PLANLIST WHERE PlanName = 'PLAN O'
		 		
		IF NOT EXISTS( SELECT 1 FROM @MplanDealers WHERE VALUE = @CompanyID)
		IF NOT EXISTS( SELECT 1 FROM @MRegionplanDealers WHERE VALUE = @CompanyID)
		--REMOVE PLAN_M
		DELETE FROM #PLANLIST WHERE PlanName = 'PLAN M'
				
		IF EXISTS( SELECT 1 FROM @MRegionplanDealers WHERE VALUE = @CompanyID)
		DELETE FROM #PLANLIST WHERE PlanName IN ('PLAN V','PLAN A')
				
		IF EXISTS( SELECT 1 FROM @IPlanUser WHERE VALUE = @CompanyID)
		DELETE FROM #PLANLIST WHERE PlanName = 'PLAN A'
		ELSE
		DELETE FROM #PLANLIST WHERE PlanName = 'PLAN I'

		IF ((LEN(@CompanyID) > 5 ) AND CHARINDEX('CID',UPPER(@CompanyID)) > 0)
		DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN M', 'PLAN V', 'PLAN Z')
		ELSE
		DELETE FROM #PLANLIST WHERE PlanName = 'PLAN A'

		/* IN existing implementation , we are removing below plans for VENDOR without any additional condition.
		   So following the same here too
		   Remove PLAN_E, PLAN_W, PLAN_K
		*/
		DELETE FROM #PLANLIST WHERE PlanName IN ( 'PLAN E', 'PLAN W', 'PLAN K')

		END

SELECT * FROM #PLANLIST

DROP TABLE #PLANLIST

END
GO
/****** Object:  StoredProcedure [profile].[sp_RelationshipExclusion]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================================================
-- Author:		Bhagyashree Rajput
-- Create date: 19/09/2024
-- Description:	Retrieves filtered list of Relationship Codes by Plan type from the database
-- Exec [profile].[sp_RelationshipExclusion] 'Plan E', 'PlanAdmin'
-- ================================================================================
CREATE PROCEDURE [profile].[sp_RelationshipExclusion]
	@PlanType varchar(24),
	@UserRole varchar(24)
AS
BEGIN
	IF @UserRole != 'PlanAdmin'
	BEGIN
		IF @PlanType = 'Plan O' 
			 SELECT * from profile.RelationShip (NoLock) where RelationShipPID NOT IN (
			 SELECT Value FROM [dbo].[RelationshipExclusionCondition] (nolock) WHERE [KEY] = 'ExcludeRelationShipForPlanO')
		ELSE 
			 SELECT * from profile.RelationShip (NoLock) where RelationShipPID NOT IN (
			 SELECT Value FROM [dbo].[RelationshipExclusionCondition] (nolock) WHERE [KEY] = 'ExcludeRelationShipForOthers')
	END
	ELSE
	BEGIN	--For PlanAdmin
		IF @PlanType = 'Plan E'	
			 SELECT * from profile.RelationShip (NoLock) where RelationShipPID NOT IN (
			 SELECT Value FROM [dbo].[RelationshipExclusionCondition] (nolock) WHERE [KEY] = 'ExcludeRelationShipForAdmin_PlanE') 
		ELSE 
			 SELECT * from profile.RelationShip (NoLock)
	END
END
GO
/****** Object:  StoredProcedure [profile].[sp_UpdateCompany]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [mig].[sp_PZEV_Update] 
Create proc [profile].[sp_UpdateCompany]
 @CompanyPID int,
 @Flag char(1) 
AS
BEGIN
if @Flag='D'
	update 	profile.T_Company set IsActive=0 where companyPID=@CompanyPID
else if @Flag='A'
	update 	profile.T_Company set IsActive=1 where companyPID=@CompanyPID
END
GO
/****** Object:  StoredProcedure [profile].[usr_AdminUpdateUser]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jay Hein
-- Create date: 12/10/2009
-- Description:	Updates the user information in the database from Update User
--				If the password is not to be updated, set to null
-- =============================================
CREATE PROCEDURE [profile].[usr_AdminUpdateUser]
	@UserPID int,
	@Password varchar(46),
	@Enabled bit,
	@NeedsApproval bit,
	@AffiliateAdmin	bit,
	@PlanAdmin bit,
	@Emailid varchar(128),
	@FName varchar(30),
	@LName varchar(30)
AS
BEGIN
	DECLARE @TMPRolePID int, @UserRolePID int
	
	-- Update the user. If the password is null, don't update it
	IF NOT Exists (Select UserPID FROM [profile].T_User WHERE UserPID = @UserPID)
	BEGIN
		-- User not found
		raiserror( 'Invalid User', 15,1)
		RETURN
	END
	
	IF @Password is not null
	BEGIN
		-- Update the password also
		UPDATE [profile].T_User
			SET	[Password] = @Password,
				[Enabled] = @Enabled,
				[NeedsApproval] = @NeedsApproval
		WHERE	UserPID = @UserPID
	END
	ELSE
	BEGIN
		-- Do Not update the password
		UPDATE [profile].T_User
			SET	[Enabled] = @Enabled,
				[NeedsApproval] = @NeedsApproval
		WHERE	UserPID = @UserPID

	END
		UPDATE [profile].T_Profile
			SET	Email = @Emailid,
				[FirstName]=@FName,
				[LastName]=@LName
		WHERE	[GlobalRefID]= (select globalid from [profile].T_User WHERE	UserPID = @UserPID) 

	
	-- The affiliate administrator Role
	EXEC [profile].usr_AssignRole @UserPID, 'AffilAdmin', @AffiliateAdmin
	
	-- The plan administrator role
	EXEC [profile].usr_AssignRole @UserPID, 'PlanAdmin', @PlanAdmin
	
END

GO
/****** Object:  StoredProcedure [profile].[usr_ApproveDisapproveUser]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jay Hein
-- Create date: 12/10/2009
-- Description:	Approves or disapproves a user. If the user is to be approved, the needs approval is
--				set to false. If the user is disapproved, the enabled and needs approval is set to false.
--				If both the approve and disapprove is set, the user is approved.
-- =============================================
CREATE PROCEDURE [profile].[usr_ApproveDisapproveUser]
	@UserPID int,
	@Approve bit,
	@Disapprove bit
AS
BEGIN
	
	-- Update the user. If the password is null, don''t update it
	IF NOT Exists (Select UserPID FROM [profile].T_User WHERE UserPID = @UserPID)
	BEGIN
		-- User not found
		raiserror( 'Invalid User', 15,1)
		RETURN
	END
	
	IF @Approve > 0
	BEGIN
		-- Approve the user
		UPDATE	[profile].T_User
			SET	NeedsApproval = 0
		WHERE UserPID = @UserPID
	END
	ELSE IF @Disapprove > 0
	BEGIN
		-- Disapprove the user
		UPDATE [profile].T_User
			SET	[Enabled] = 0,
				NeedsApproval = 0
		WHERE UserPID = @UserPID
	END
END
GO
/****** Object:  StoredProcedure [profile].[usr_AssignRole]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Author:		Jay Hein
-- Create date: 11-30-2009
-- Description:	Creates or deletes a role assignment for a user
-- =============================================
CREATE PROCEDURE [profile].[usr_AssignRole]
(
	@UserPID int,
	@Role varchar(16),
	@Assign bit
)

AS
BEGIN
	-- Declare the return variable here
	DECLARE @TMPRolePID int, @UserRolePID int
	
	-- Get the PID of the role and see if user is in the role
	SELECT	@TMPRolePID = Rol.Role_PID, @UserRolePID = Rui.Role_PID
	FROM	[profile].Roles Rol
	LEFT JOIN [profile].Role_User Rui ON Rui.UserPID = @UserPID
		AND	Rui.Role_PID = Rol.Role_PID
	WHERE	Rol.[Role] = @Role
	
	IF @UserRolePID is null AND @Assign > 0
	BEGIN
		-- Create the affiliate admin role for the user
		INSERT INTO	[profile].Role_User
					(	Role_PID,
						UserPID,
						IsActive	)
			VALUES	(	@TMPRolePID,
						@UserPID,
						1	)
	END
	ELSE IF @UserRolePID is not null AND @Assign = 0
	BEGIN
		-- Remove the affiliate admin role for the user
		DELETE FROM [profile].Role_User
			WHERE	Role_PID = @TMPRolePID
				AND	UserPID = @UserPID
	END
	
END

GO
/****** Object:  StoredProcedure [profile].[usr_GetUserByPartialHMMAID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Erik Mildner
-- Create date: 3/6/2019
-- Description:	Get HMMA user based off partial ID
-- =============================================
CREATE PROCEDURE [profile].[usr_GetUserByPartialHMMAID]
		@HMMAPrefixUserID nvarchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT top 1 tu.UserID FROM profile.T_User tu
	WHERE  @HMMAPrefixUserID = right(tu.userid,6)
	and left(tu.UserID,3) = 'hmm'
	and tu.IsActive = 1
	ORDER BY tu.UserPID desc

END
GO
/****** Object:  StoredProcedure [profile].[usr_GetUserInformationByUserID]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jay Hein
-- Create date: 11/02/2009
-- Description:	Retrieves user information from the database
-- =============================================
CREATE PROCEDURE [profile].[usr_GetUserInformationByUserID]
	@UserID varchar(128)
AS
BEGIN
	-- Get the pid of the user
	DECLARE @UserPID int
	
	SELECT top 1 @UserPID = UserPID FROM profile.T_User
		WHERE UserID = @UserID and isactive=1 and enabled=1 
		order by userpid

	-- Result Set 1. User Information
	SELECT	UserPID,
			GlobalID,
			companyPID,
			UserID,
			[Password],
			[Enabled],
			lLockedOut,
			nBadLoginCount,
			lockoutExpires,
			MustChangePassword,
			IsActive,
			UpdateSync,
			NeedsApproval
	FROM	profile.T_User
	WHERE	UserPID = @UserPID

	-- Result Set 2. Roles for user
	SELECT	profile.Role_User.UserPID,
			profile.Role_User.Role_PID,
			profile.Roles.Role
	FROM	profile.Role_User
	INNER JOIN profile.Roles ON profile.Role_User.Role_PID = profile.Roles.Role_PID
	WHERE	(profile.Role_User.UserPID = @UserPID) AND (profile.Role_User.IsActive = 1)

	-- Result Set 3. User Profile
	SELECT * FROM profile.usr_Profile
	WHERE	UserPID = @UserPID
	
END
GO
/****** Object:  StoredProcedure [profile].[usr_RemoveUser]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jay Hein
-- Create date: 11/20/2009
-- Description:	Deletes a user and all references to the user
-- =============================================
CREATE PROCEDURE [profile].[usr_RemoveUser]
	@UserID varchar(128)
AS
BEGIN

	DECLARE @UserPID int, @GlobalRefID uniqueidentifier
	
	-- Get the user PID
	SELECT		@UserPID = Usr.UserPID,
				@GlobalRefID = Prof.GlobalRefID
	from		[profile].T_User Usr
	LEFT JOIN	[profile].T_Profile Prof ON Prof.GlobalRefID = Usr.GlobalID
	WHERE Usr.UserID = @UserID
	
	IF @UserPID is null
	BEGIN
		-- User not found
		raiserror('User was not found in database.', 15, 1)
		return
	END
	ELSE
	BEGIN
		-- Remove all role associations
		DELETE FROM	profile.Role_User
			WHERE	UserPID = @UserPID
			
		-- Remove the Profile
		DELETE FROM [profile].T_Profile
			WHERE	GlobalRefID = @GlobalRefID
			
		-- Remove the user
		DELETE FROM profile.T_User
			WHERE UserPID = @UserPID
	END
	
END

GO
/****** Object:  DdlTrigger [Tg_CaptureFunctionChangeChanges]    Script Date: 3/14/2025 4:20:22 AM ******/
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
/****** Object:  DdlTrigger [Tg_CaptureProcedureChangeChanges]    Script Date: 3/14/2025 4:20:22 AM ******/
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
/****** Object:  DdlTrigger [Tg_HyundaiAppCaptureTablesChangeChanges]    Script Date: 3/14/2025 4:20:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		Nick Nguyen
-- Create date: 3/15/2018
-- Description:	Capture all change in all database
-- =============================================
create TRIGGER [Tg_HyundaiAppCaptureTablesChangeChanges]
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
DISABLE TRIGGER [Tg_HyundaiAppCaptureTablesChangeChanges] ON DATABASE
GO
/****** Object:  DdlTrigger [Tg_HyundaiAppCaptureViewsChangeChanges]    Script Date: 3/14/2025 4:20:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [Tg_HyundaiAppCaptureViewsChangeChanges]
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
DISABLE TRIGGER [Tg_HyundaiAppCaptureViewsChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_CaptureFunctionChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_CaptureProcedureChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_HyundaiAppCaptureTablesChangeChanges] ON DATABASE
GO
ENABLE TRIGGER [Tg_HyundaiAppCaptureViewsChangeChanges] ON DATABASE
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the exclusion Type. This is hard sequenced.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'ExclusionType', @level2type=N'COLUMN',@level2name=N'ExclusionTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Type of the exclusion.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'ExclusionType', @level2type=N'COLUMN',@level2name=N'ExclusionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the types of the exclusions for eligible vehicles.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'ExclusionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the exclusion.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'VehicleExclusions', @level2type=N'COLUMN',@level2name=N'ExclusionPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the vehicle on the exclusion list.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'VehicleExclusions', @level2type=N'COLUMN',@level2name=N'VehicleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the exclusion Type. This is hard sequenced.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'VehicleExclusions', @level2type=N'COLUMN',@level2name=N'ExclusionTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this exclusion is active or false if not.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'VehicleExclusions', @level2type=N'COLUMN',@level2name=N'isActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains a list of vehicles that are excluded from the eligible vehicles for the plans.' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'TABLE',@level1name=N'VehicleExclusions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Transaction PID of the log.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog', @level2type=N'COLUMN',@level2name=N'TransactionPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time of the transfer.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog', @level2type=N'COLUMN',@level2name=N'TransferTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of pin modifications transferred to DCS.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog', @level2type=N'COLUMN',@level2name=N'NbrPinsToDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of PIN''s transferred from DCS' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog', @level2type=N'COLUMN',@level2name=N'NbrPinsFromDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the transfer was successful or False if not.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog', @level2type=N'COLUMN',@level2name=N'TransferSuccessful'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the log of the DCS transfer operations.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'DCSTransferLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINDealerSelection', @level2type=N'COLUMN',@level2name=N'PinPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Code of the selected Dealer in the DealerInfo table in the HyundaiUSA database.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINDealerSelection', @level2type=N'COLUMN',@level2name=N'DealerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of selected dealers for a PIN.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINDealerSelection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'PinPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Auto generated Pin Code' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'PinCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the sponsor of this Pin' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'SponsorPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan this PIN was created under.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'PlanPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the PIN.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'PinStatusPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Reference Identifier of the buyer. This corresponds to the GlobalRefID in the profile.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'BuyerRef'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Date the PIN was issued.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'IssueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Date the plan expires.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'ExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the User that created the plan. Unless an administrator created the plan on behalf of someone, this will always be the sponsor.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the pin detail was sent to the RDR system.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'SentToRDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if active or false if not. Being not Active is the same as being deleted.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'isActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the PIN Detail row was last modified.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'''E'' for Employee, ''C'' for Company' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail', @level2type=N'COLUMN',@level2name=N'SubmittedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the PIN detail information' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'PinPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Code for the dealer making the sale' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'DealerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The RDR Date of the sale.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'RDRDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the sale.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The plan type for the sale.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'PlanType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The VIN # of the vehicle sold.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'VIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Model Year of the vehicle' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'ModelYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The AS400 code of the model purchased.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'ModelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The AS-400 Code for the package selected.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'Packagecode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The invoice amount of the vehicle.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'InvoiceAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first name of the buyer.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'BuyerFirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Last name of the buyer.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'BuyerLastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Notes for descrepency report.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the sales information when a PIN has been used to purchase a vehicle.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINSale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status codes for a pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinStatus', @level2type=N'COLUMN',@level2name=N'PinStatusPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Status code of the PIN.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinStatus', @level2type=N'COLUMN',@level2name=N'PinStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Description of the Pin status.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PinStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINVehicleSelectionCache', @level2type=N'COLUMN',@level2name=N'PinPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chosen vehicle Map PID. Null if vehicle is not chosen.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINVehicleSelectionCache', @level2type=N'COLUMN',@level2name=N'MapVehiclePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The MAP PID of the chosen package for the vehicle trim. Null if not chosen.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINVehicleSelectionCache', @level2type=N'COLUMN',@level2name=N'MapPackagePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The MAP PID of the chosen color. Null if no color is chosen.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINVehicleSelectionCache', @level2type=N'COLUMN',@level2name=N'MapColorPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the vehicle selections for a consumer with his/her pin.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'PINVehicleSelectionCache'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The internal PID for the coupon.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'CouponPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The int ID of the vehicle pertaining to the coupon. This links to the VehicleArchive table in the HyundaiUSA database.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'VehicleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Effective date of the coupon.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'EffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The expiration date of the coupon.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'ExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cash amount of the coupon.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'IncentiveCashAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any special text that goes on the coupon.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'SpecialText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the coupon is to include a picture of the vehicle.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'IncludePicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this is active or false if not.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon', @level2type=N'COLUMN',@level2name=N'isActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the special coupon incentives for certain plans.' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'TABLE',@level1name=N'SpecialCoupon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the contact.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyContact', @level2type=N'COLUMN',@level2name=N'ContactPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the contact information about contacts for a company.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the relation.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'RelationPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the company relationship.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'RelationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the company relation.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'RelationDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The default role for a user associated with this company.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'DefaultRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user can sign-up to this company or false if not. If false is one of the internal Hyundai companies reserved for Hyundai user id''s with an auto sign-up.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'SignUpAllowed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the relation is active or false if not.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation', @level2type=N'COLUMN',@level2name=N'isActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the relationship information between the company and Hyundai.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'CompanyRelation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan type. This corresponds to a direct enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'DealerEarnings', @level2type=N'COLUMN',@level2name=N'PlanTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earnings percent. This number is actually in decimal and must be multipled by 100 to get percent.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'DealerEarnings', @level2type=N'COLUMN',@level2name=N'EarningsPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the earnings percentage goes into effect.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'DealerEarnings', @level2type=N'COLUMN',@level2name=N'EffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the dealer earnings information for a plan type.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'DealerEarnings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the disclaimer.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Disclaimers', @level2type=N'COLUMN',@level2name=N'DisclaimerPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the disclaimer.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Disclaimers', @level2type=N'COLUMN',@level2name=N'DisclaimerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the disclaimer' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Disclaimers', @level2type=N'COLUMN',@level2name=N'DisclaimerDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text for the disclaimer.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Disclaimers', @level2type=N'COLUMN',@level2name=N'DisclaimerText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the disclaimer statements used in the different parts of the Application.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Disclaimers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the GL Code type' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'GLCodes', @level2type=N'COLUMN',@level2name=N'GLPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the GL Code Type' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'GLCodes', @level2type=N'COLUMN',@level2name=N'GLCodeTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the GL Code Type' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'GLCodes', @level2type=N'COLUMN',@level2name=N'GLCodeTypeDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general ledger code' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'GLCodes', @level2type=N'COLUMN',@level2name=N'GLCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the General Ledger Codes for Dealer Payments.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'GLCodes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan type. This corresponds to a direct enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this plan goes into effect.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The termination date of the plan. When this date is reached the plan is closed.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanTermDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the RDR Sale Type.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'RdrSaletype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The discount percentage of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanDiscount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the discount goes into effect.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'DiscountDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days from when a pin is generated until it expires.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PinExpireDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a customer cash (rebate) incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'CustCash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a Dealer Cash Incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'DealerCash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a special incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'SpecialIncentive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The pid of the status code. ' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'PlanStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True for the plan to allow using any eligible vehicle coupons or false if not.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'AllowVehicleCoupons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'AcbDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of the discount for the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'AcbAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date of the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'AcbEffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Expiration date of the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan', @level2type=N'COLUMN',@level2name=N'AcbExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the information about the HyundaiAPP Plans' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Plan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the archive member of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanArchivePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan type. This corresponds to a direct enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this plan goes into effect.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The termination date of the plan. When this date is reached the plan is closed.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanTermDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the RDR Sale Type.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'RdrSaletype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The discount percentage of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanDiscount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the discount goes into effect.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'DiscountDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days from when a pin is generated until it expires.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PinExpireDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a customer cash (rebate) incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'CustCash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a Dealer Cash Incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'DealerCash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if this plan has a special incentive.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'SpecialIncentive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The pid of the status code. ' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'PlanStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True for the plan to allow using any eligible vehicle coupons or false if not.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'AllowVehicleCoupons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'AcbDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of the discount for the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'AcbAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date of the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'AcbEffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Expiration date of the across the board discount.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'AcbExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Discount dollar amount to apply to the purchase in addition to the discount percentage.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'DiscountAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time of the modification of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Archived versions of the HyundaiInnerCircle Plans. This maintains a history of changes when a plan is updated.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanArchive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the company relationship.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanEligibility', @level2type=N'COLUMN',@level2name=N'RelationPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan type the related employees are eligible for.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanEligibility', @level2type=N'COLUMN',@level2name=N'PlanTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if active false if not.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanEligibility', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the eligibilty of employees of specific company relationship types to certain plans.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanEligibility'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan the sponsors are part of.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsors', @level2type=N'COLUMN',@level2name=N'PlanPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the relation containing the sponsor type for the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsors', @level2type=N'COLUMN',@level2name=N'RelationPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum number of pins a given sponsor is allowed to use in a year for the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsors', @level2type=N'COLUMN',@level2name=N'PinLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the sponsors for the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan the sponsors are part of.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive', @level2type=N'COLUMN',@level2name=N'PlanPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the archive member of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive', @level2type=N'COLUMN',@level2name=N'PlanArchivePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the relation containing the sponsor type for the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive', @level2type=N'COLUMN',@level2name=N'RelationPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum number of pins a given sponsor is allowed to use in a year for the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive', @level2type=N'COLUMN',@level2name=N'PinLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the sponsor information was updated.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the Archived sponsors for the archived plans.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanSponsorsArchive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The pid of the status code. This corresponds to an enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanStatusCodes', @level2type=N'COLUMN',@level2name=N'StatusPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Status Code for the plans' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanStatusCodes', @level2type=N'COLUMN',@level2name=N'StatusCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the status code definitions for the plans.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanStatusCodes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the plan type. This corresponds to a direct enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes', @level2type=N'COLUMN',@level2name=N'PlanTypePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type name of the plan.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes', @level2type=N'COLUMN',@level2name=N'PlanType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the plan type.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes', @level2type=N'COLUMN',@level2name=N'PlanTypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prefix for the PIN code attached to this plan type. This is used in PIN code number generation.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes', @level2type=N'COLUMN',@level2name=N'PinCodePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum (initial) number of the PIN code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes', @level2type=N'COLUMN',@level2name=N'PinCodeMinNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the types of plans.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'PlanTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the RDR Sale Type.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'RDRSaleType', @level2type=N'COLUMN',@level2name=N'RDRSalePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Actual RDR Sale Code' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'RDRSaleType', @level2type=N'COLUMN',@level2name=N'RDRSaleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the sale code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'RDRSaleType', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the RDR sale code is active or false if inactivated.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'RDRSaleType', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the RDR sale type codes.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'RDRSaleType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The internal PID of the Role' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Role_User', @level2type=N'COLUMN',@level2name=N'Role_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the User assigned to this role.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Role_User', @level2type=N'COLUMN',@level2name=N'UserPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the User is attached to the role or false if the attachment is to be deleted.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Role_User', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the roles a specific User is a member of.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Role_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The internal ID of the Role' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Role_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual name of the Role' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the Role' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the role is active or false if is to be deleted.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the Roles a party may have in the application.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'Roles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the state code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'State_Codes', @level2type=N'COLUMN',@level2name=N'StatePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The short (2 character) version of the state code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'State_Codes', @level2type=N'COLUMN',@level2name=N'StateShortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the state' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'State_Codes', @level2type=N'COLUMN',@level2name=N'StateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A list of U.S. State Codes' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'State_Codes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the company' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'companyPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Global ID of the company. This is used for locating shared elements that are associated with the company.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'GlobalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The relation of the company to Hyundai. This corresponds directly to an enum in code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'companyRelation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the company' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'companyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the company.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'companyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the company is active or false if not. If is set to not active, all of the users under the company will also be inactivated.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the information about the companies the users are part of.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the profile Entry.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'ProfilePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The global reference ID of the owner of this profile.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'GlobalRefID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user''s first name' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The middle initial of the person.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'MiddleInitial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user''s Last name' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street address first line.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street address second line.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The City' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID code of the state.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'StateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Zipcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the user.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The business phone number.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Phone1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s home phone number' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Phone2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Person''s fax number' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the profile is active or false if not. If not, it will be scheduled for deletion.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_Profile', @level2type=N'COLUMN',@level2name=N'isActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the user.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'UserPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Global ID of the user. This is used for locating shared elements that are associated with the user.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'GlobalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PID of the company the User Belongs to.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'companyPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user of HyundaiApp. For Employees this is the Domain logon id of the user. For Affiliates, this is the user''s email address.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The password of the user (Hash Encrypted). This is null for employees, which are verified via active directory.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user  is enabled for log on' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user is locked out due to an excessive number of failed logins or false if not. ' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'lLockedOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of incorrect login attempts' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'nBadLoginCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time the lockout of the user expires.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'lockoutExpires'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user must change his/her password before proceeding.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'MustChangePassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user is active or false if is to be deleted.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the user needs approval or false if not.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'NeedsApproval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the logon information for users in HyundaiAPP' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'T_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the message' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'MessagePID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the message was created.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'MessageTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Familiar ID of the application' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'Appl_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The severity of the message' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'Severity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the message' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'MessageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the message' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'tblMessageLog', @level2type=N'COLUMN',@level2name=N'MessageText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The internal PID of the pattern.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'UserIdPatterns', @level2type=N'COLUMN',@level2name=N'PatternPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The prefix for the Internal User ID.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'UserIdPatterns', @level2type=N'COLUMN',@level2name=N'IDPrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The default company a user with this ID prefix is assigned to.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'UserIdPatterns', @level2type=N'COLUMN',@level2name=N'DefaultCompany'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the patterns for deciphering the user ID for all internal Hyundai Users.' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'TABLE',@level1name=N'UserIdPatterns'
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
         Begin Table = "Veh"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Trim"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 121
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pkg"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Col"
            Begin Extent = 
               Top = 126
               Left = 228
               Bottom = 241
               Right = 416
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
      Begin ColumnWidths = 10
         Width = 284
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
    ' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'As400Map'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'As400Map'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'As400Map'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
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
         Begin Table = "VWCCMP (Byo)"
            Begin Extent = 
               Top = 6
               Left = 418
               Bottom = 227
               Right = 570
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 6435
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2085
         Width = 2400
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2850
         Alias = 2625
         Table = 3120
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
' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToColorMap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToColorMap'
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
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 276
               Bottom = 118
               Right = 446
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
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4125
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3300
         Width = 3300
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
' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToPackageMap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToPackageMap'
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
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "M"
            Begin Extent = 
               Top = 6
               Left = 297
               Bottom = 118
               Right = 467
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
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 4245
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToTrimMap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToTrimMap'
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
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "M"
            Begin Extent = 
               Top = 6
               Left = 297
               Bottom = 118
               Right = 467
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
      Begin ColumnWidths = 9
         Width = 284
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
' , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToTrimMap_HyundaiFleet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Byo', @level1type=N'VIEW',@level1name=N'AS400ToTrimMap_HyundaiFleet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[23] 2[16] 3) )"
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
         Begin Table = "VPKGDS (Byo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 181
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VWMCMP (Byo)"
            Begin Extent = 
               Top = 6
               Left = 228
               Bottom = 214
               Right = 380
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "M"
            Begin Extent = 
               Top = 186
               Left = 38
               Bottom = 298
               Right = 208
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
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 5805
         Alias = 2520
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1170
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'As400ToVehicleMap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'As400ToVehicleMap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[11] 2[36] 3) )"
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
         Begin Table = "PinDetail (PIN)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sheet2$"
            Begin Extent = 
               Top = 6
               Left = 228
               Bottom = 121
               Right = 385
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Profile (profile)"
            Begin Extent = 
               Top = 6
               Left = 423
               Bottom = 121
               Right = 575
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PinStatus (PIN)"
            Begin Extent = 
               Top = 6
               Left = 613
               Bottom = 121
               Right = 765
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 9
               Left = 786
               Bottom = 185
               Right = 949
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_User (profile)"
            Begin Extent = 
               Top = 155
               Left = 466
               Bottom = 270
               Right = 653
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
      Begin ColumnWidths = 9
         Width = 284
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetRDRReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Width = 1500
         Width = 1785
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 3570
         Width = 1005
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetRDRReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetRDRReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[14] 2[13] 3) )"
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
         Begin Table = "PinDetail (PIN)"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 344
               Right = 409
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Plan (profile)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 308
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Profile (profile)"
            Begin Extent = 
               Top = 6
               Left = 447
               Bottom = 320
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_User (profile)"
            Begin Extent = 
               Top = 10
               Left = 657
               Bottom = 307
               Right = 844
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 319
               Left = 615
               Bottom = 477
               Right = 778
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2235
         Width = 2295
         Width = 1710
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
      End
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PinUsageMgmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PinUsageMgmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PinUsageMgmt'
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
         Begin Table = "Role_User (profile)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Roles (profile)"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
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
         Begin Table = "Plan (profile)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlanStatusCodes (profile)"
            Begin Extent = 
               Top = 138
               Left = 450
               Bottom = 223
               Right = 602
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
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_active_plan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_active_plan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
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
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 25
               Left = 73
               Bottom = 200
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CompanyRelation (profile)"
            Begin Extent = 
               Top = 49
               Left = 352
               Bottom = 164
               Right = 504
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
      Begin ColumnWidths = 9
         Width = 284
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Company_Relation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Company_Relation'
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
         Begin Table = "T_User (profile)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Role_User (profile)"
            Begin Extent = 
               Top = 6
               Left = 263
               Bottom = 121
               Right = 415
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2430
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetAllUsersIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetAllUsersIdList'
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
         Begin Table = "PinDetail (PIN)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_active_plan"
            Begin Extent = 
               Top = 6
               Left = 228
               Bottom = 121
               Right = 409
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Profile (profile)"
            Begin Extent = 
               Top = 6
               Left = 447
               Bottom = 121
               Right = 599
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
      Begin ColumnWidths = 9
         Width = 284
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetUser_PINCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetUser_PINCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[11] 2[14] 3) )"
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
         Begin Table = "T_User (profile)"
            Begin Extent = 
               Top = 11
               Left = 216
               Bottom = 204
               Right = 403
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Profile (profile)"
            Begin Extent = 
               Top = 38
               Left = 718
               Bottom = 237
               Right = 870
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PinDetail (PIN)"
            Begin Extent = 
               Top = 122
               Left = 447
               Bottom = 336
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 114
               Left = 5
               Bottom = 282
               Right = 167
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
      Begin ColumnWidths = 9
         Width = 284
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
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PinCreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PinCreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PinCreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[14] 2[46] 3) )"
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
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VehicleModel (Byo)"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 197
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SpecialCoupon (PIN)"
            Begin Extent = 
               Top = 4
               Left = 37
               Bottom = 210
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlanTypes (profile)"
            Begin Extent = 
               Top = 294
               Left = 38
               Bottom = 423
               Right = 213
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SpecialCoupon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SpecialCoupon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
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
         Begin Table = "vw_active_plan"
            Begin Extent = 
               Top = 0
               Left = 96
               Bottom = 260
               Right = 331
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlanSponsors (profile)"
            Begin Extent = 
               Top = 58
               Left = 387
               Bottom = 201
               Right = 539
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 95
               Left = 764
               Bottom = 273
               Right = 946
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CompanyRelation (profile)"
            Begin Extent = 
               Top = 22
               Left = 587
               Bottom = 178
               Right = 739
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2955
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2010
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
         Ta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_user_company_aff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ble = 1170
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_user_company_aff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_user_company_aff'
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
         Begin Table = "Role_User (profile)"
            Begin Extent = 
               Top = 28
               Left = 175
               Bottom = 193
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_User (profile)"
            Begin Extent = 
               Top = 43
               Left = 357
               Bottom = 239
               Right = 544
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Company (profile)"
            Begin Extent = 
               Top = 174
               Left = 619
               Bottom = 341
               Right = 782
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T_Profile (profile)"
            Begin Extent = 
               Top = 9
               Left = 713
               Bottom = 174
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Roles (profile)"
            Begin Extent = 
               Top = 85
               Left = 0
               Bottom = 200
               Right = 152
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
      Begin ColumnWidths = 9
         Width = 284
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
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Column = 1440
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_UserProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
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
         Begin Table = "VehicleExclusions (Byo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 291
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "As400ToVehicleMap"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 282
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Plan (profile)"
            Begin Extent = 
               Top = 16
               Left = 500
               Bottom = 145
               Right = 705
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
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VehExclusion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VehExclusion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[12] 2[12] 3) )"
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
         Begin Table = "AS400ToColor (Byo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AS400ToTrim (Byo)"
            Begin Extent = 
               Top = 37
               Left = 347
               Bottom = 231
               Right = 569
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AS400ToVehicle (Byo)"
            Begin Extent = 
               Top = 15
               Left = 643
               Bottom = 223
               Right = 914
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
         Width = 2385
         Width = 3015
         Width = 3855
         Width = 1500
         Width = 2010
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VehicleInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VehicleInfo'
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
         Begin Table = "AS400"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HUSA"
            Begin Extent = 
               Top = 6
               Left = 301
               Bottom = 114
               Right = 471
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
      Begin ColumnWidths = 10
         Width = 284
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
' , @level0type=N'SCHEMA',@level0name=N'mig', @level1type=N'VIEW',@level1name=N'vw_Tb_400_VWVM2P_VINMaster_Search'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'mig', @level1type=N'VIEW',@level1name=N'vw_Tb_400_VWVM2P_VINMaster_Search'
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
         Begin Table = "Pdet"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pst"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 99
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pln"
            Begin Extent = 
               Top = 102
               Left = 227
               Bottom = 210
               Right = 407
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ptype"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Usr"
            Begin Extent = 
               Top = 210
               Left = 228
               Bottom = 318
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cmp"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cmr"
            Begin Extent = 
               Top = 318
               Left = 238
               Bottom = 426
               Right = 389
            End
            DisplayFlags = 280
            TopColumn = 0' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'VIEW',@level1name=N'PinManagement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         End
         Begin Table = "Prof"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Psale"
            Begin Extent = 
               Top = 426
               Left = 227
               Bottom = 534
               Right = 383
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VehSel"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Veh"
            Begin Extent = 
               Top = 534
               Left = 233
               Bottom = 642
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pkg"
            Begin Extent = 
               Top = 642
               Left = 38
               Bottom = 750
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dlr"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 639
               Right = 189
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
' , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'VIEW',@level1name=N'PinManagement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'PIN', @level1type=N'VIEW',@level1name=N'PinManagement'
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
         Begin Table = "Comp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 201
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Rel"
            Begin Extent = 
               Top = 21
               Left = 387
               Bottom = 193
               Right = 608
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2055
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
' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'comp_GetCompanies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'comp_GetCompanies'
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
         Begin Table = "Usr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cmp"
            Begin Extent = 
               Top = 6
               Left = 263
               Bottom = 121
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Crl"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Prof"
            Begin Extent = 
               Top = 126
               Left = 228
               Bottom = 241
               Right = 380
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         GroupBy = 13' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'GetUsersForUpdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'50
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'GetUsersForUpdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'GetUsersForUpdate'
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
         Begin Table = "Usr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cmp"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 114
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Crl"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Prof"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
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
' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'GetUsersNeedingApproval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'GetUsersNeedingApproval'
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
         Begin Table = "Dlr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 177
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pltp"
            Begin Extent = 
               Top = 16
               Left = 373
               Bottom = 157
               Right = 601
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
' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'Mstr_DealerEarnings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'Mstr_DealerEarnings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[22] 2[18] 3) )"
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
         Begin Table = "Usr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 255
               Right = 311
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Prof"
            Begin Extent = 
               Top = 6
               Left = 349
               Bottom = 230
               Right = 827
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
      Begin ColumnWidths = 9
         Width = 284
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
         Alias = 2640
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
' , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'usr_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'profile', @level1type=N'VIEW',@level1name=N'usr_Profile'
GO
USE [master]
GO
ALTER DATABASE [HyundaiApp] SET  READ_WRITE 
GO
