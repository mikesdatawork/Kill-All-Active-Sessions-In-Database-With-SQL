![MIKES DATA WORK](https://raw.githubusercontent.com/mikesdatawork/images/master/git_mikes_data_work_banner_01.png "Mikes Data Work")    
# Kill All Active Sessions In Database With SQL
**Post Date: April 9, 2014 **  
![#](images/##############?raw=true "#")    

## Contents    
- [About Process](##About-Process)  
- [SQL Logic](#Logic)  
- [Build Info](#Build-Info)  
- [Author](#Author)  
- [License](#License)       

## About-Process 

I usually write this ahead of any database restores I might want to run.
---
## Logic
```SQL
use master;
set nocount on
declare @my_database_name varchar(255) declare @kill_all_connections_to_database varchar(max)
set @my_database_name = ‘MyDatabaseName’ — put your database name in here. set @kill_all_connections_to_database = ”
select @kill_all_connections_to_database = @kill_all_connections_to_database + ‘kill ”’ + cast(spid as varchar(4)) + ‘; ‘ + char(10)
from sysprocesses where db_name(dbid) = @my_database_name
exec (@kill_all_connections_to_database)
go
```

[![WorksEveryTime](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://shitday.de/)

## Build-Info

| Build Quality | Build History |
|--|--|
|<table><tr><td>[![Build-Status](https://ci.appveyor.com/api/projects/status/pjxh5g91jpbh7t84?svg?style=flat-square)](#)</td></tr><tr><td>[![Coverage](https://coveralls.io/repos/github/tygerbytes/ResourceFitness/badge.svg?style=flat-square)](#)</td></tr><tr><td>[![Nuget](https://img.shields.io/nuget/v/TW.Resfit.Core.svg?style=flat-square)](#)</td></tr></table>|<table><tr><td>[![Build history](https://buildstats.info/appveyor/chart/tygerbytes/resourcefitness)](#)</td></tr></table>|

## Author

- ** Github Gist **
- ** Twitter **
- ** Wordpress ** "MikesDataWork"

[![Gist](https://img.shields.io/badge/Gist-MikesDataWork-<COLOR>.svg)](https://gist.github.com/mikesdatawork)
[![Twitter](https://img.shields.io/badge/Twitter-MikesDataWork-<COLOR>.svg)](https://twitter.com/mikesdatawork)
[![Wordpress](https://img.shields.io/badge/Wordpress-MikesDataWork-<COLOR>.svg)](https://mikesdatawork.wordpress.com/)

---
## License
[![LicenseCCSA](https://img.shields.io/badge/License-CreativeCommonsSA-<COLOR>.svg)](https://creativecommons.org/share-your-work/licensing-types-examples/)

![Mikes Data Work](https://raw.githubusercontent.com/mikesdatawork/images/master/git_mikes_data_work_banner_02.png "Mikes Data Work")

