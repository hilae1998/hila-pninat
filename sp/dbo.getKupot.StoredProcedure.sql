USE [Bishvilaych]
GO
/****** Object:  StoredProcedure [dbo].[getKupot]    Script Date: 27/12/2018 23:05:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getKupot] 
as
begin
     select*
	 from [dbo].[Kupot]
end


GO
