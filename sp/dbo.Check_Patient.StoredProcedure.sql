USE [Bishvilaych]
GO
/****** Object:  StoredProcedure [dbo].[Check_Patient]    Script Date: 27/12/2018 23:05:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Check_Patient](@id varchar(9),@myOut int out) as
begin
if (EXISTS(select [Id] from [dbo].[Patiants] where [dbo].[Patiants].[Id]=@id))
begin
declare @a int
 exec openPatiant @id,@a out
 set @myOut=0
end

else
set @myOut=1
end


GO
