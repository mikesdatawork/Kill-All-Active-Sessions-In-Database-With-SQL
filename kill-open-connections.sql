use master;
set nocount on
declare @my_database_name varchar(255) declare @kill_all_connections_to_database varchar(max)
set @my_database_name = 'MyDatabaseName' -- put your database name in here. 
set @kill_all_connections_to_database = ''
select @kill_all_connections_to_database = @kill_all_connections_to_database + 'kill ''' + cast(spid as varchar(4)) + '; ' + char(10)
from sysprocesses where db_name(dbid) = @my_database_name
exec (@kill_all_connections_to_database)
go
