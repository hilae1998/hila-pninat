USE [Bishvilaych]
GO
/****** Object:  StoredProcedure [dbo].[GetAllMedicines]    Script Date: 27/12/2018 23:05:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllMedicines](@MyId nvarchar(9))as
--שליפת כל התרופות לפי ת.ז של המטופל
begin

   select [dbo].[Medicines].[Code],[dbo].[Medicines].[Medicine],[dbo].[Medicines].[Vitamin],[dbo].[Medicines].[Active],
[dbo].[Medicines].[GivenKind],[dbo].[Medicines].[Quantity],[dbo].[Medicines].[Days],[dbo].[Medicines].[GivenOn],
[dbo].[Medicines].[Text],[dbo].[Medicines].[By],[dbo].[Medicines].[PatiantCode]
   from [dbo].[Medicines] join [dbo].[Patiants]
   on[dbo].[Medicines].[PatiantCode]=[dbo].[Patiants].[Code]
   where [dbo].[Patiants].[Id]=@MyId

end


GO
