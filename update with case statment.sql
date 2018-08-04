--update c 
set c.name = 
(
case
		when xl.[CustomerType] = 'Residential' then concat(xl.FirstName,' ', xl.LastName) 
		when xl.[CustomerType] = '' and CHARINDEX(',',xl.Customer) <> 0 then concat(xl.FirstName,' ', xl.LastName)
		else c.name end
)
from 
	[schemaname].CustomerTable c
join 
	[databasename].[schemaname].[tablename] xl ON c.importid = xl.listid
--