USE [Bishvilaych]
GO
/****** Object:  StoredProcedure [dbo].[Check_Customers]    Script Date: 10/07/2018 10:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Check_Customers](@id varchar(9),@myOut int out) as
begin
if EXISTS(select [id] from [dbo].[Customers] where [dbo].[Customers].[id]=@id)
begin
set @myOut=0
end
else
begin
set @myOut=1
end
end