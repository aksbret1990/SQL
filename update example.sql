

--update co 
set co.Value = concat('715',co.Value)
--select co.Value, concat('715',co.Value)
from
	schemaname.contacttable as co
where
	co.TYPE = 0
	AND LEN(co.[value]) < 10
--







