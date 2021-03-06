USE [MuOnline]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[ArcaBattleInfoDelete]
as       
BEGIN  
 DECLARE @return int
 SET @return = 0  
 Set  nocount on

 begin transaction  

delete ARCA_BATTLE_MEMBER_JOIN_INFO
delete ARCA_BATTLE_GUILD_JOIN_INFO
delete ARCA_BATTLE_WIN_GUILD_INFO


IF ( @@Error  <> 0 )
 BEGIN	
	rollback transaction
	SET @return = -1
	SELECT @return
 END 
ELSE
 BEGIN
	commit transaction
	SELECT @return
 END
END





GO

