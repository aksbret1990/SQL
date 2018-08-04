
--creating backup
go
create schema [schemaname_Backup]
go

select *
into [databasename].[schemaname_Backup].tablename
from schemaname.tablename
