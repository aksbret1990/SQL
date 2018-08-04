
--creating backup
go
create schema [schemaname_Backup_20180708]
go

select *
into [Import-201701a].[schemaname_Backup_20180708].tablename
from schemaname.tablename
