use mydb;
drop table bulk_load_strings
truncate table bulk_load_strings
create table bulk_load_strings
(
	id int identity(1,1) not null,
	field_char char(2) ,
	field_varchar varchar(10) not null,
	field_nchar nchar(2) not null,
	field_nvarchar nvarchar(10),
	field_uid1	uniqueidentifier,
	field_uid2	uniqueidentifier,
	field_timestamp  timestamp  
)


select *
from bulk_load_strings

bulk insert MyDb.dbo.bulk_load_strings
from 'C:\YOUTUBE\SQL\bulk_insert\string_data.csv'
with
(
KEEPNULLS,
CODEPAGE			= 'RAW',
FORMAT				= 'CSV',
FIRSTROW			= 1,
FIELDTERMINATOR		= ',',
MAXERRORS			= 10,
ROWTERMINATOR		= '\n'
)





drop table bulk_load_strings
truncate table bulk_load_strings
create table bulk_load_strings
(
	id int identity(1,1) not null,
	field_char char(2) ,
	field_varchar varchar(10) not null,
	field_nchar nchar(2) not null,
	field_nvarchar nvarchar(10),
	field_uid1	uniqueidentifier default newSequentialId(),
	field_uid2	uniqueidentifier,
	field_timestamp  timestamp  
)

insert into bulk_load_strings(field_char,field_varchar,field_nchar,field_nvarchar,
			field_uid2)
values('ZZ','Zero','ZZ','zero',newid())

select * from bulk_load_strings

bulk insert MyDb.dbo.bulk_load_strings
from 'C:\YOUTUBE\SQL\bulk_insert\string_data_with_nulls.csv'
with
(
KEEPNULLS,
CODEPAGE			= 'RAW',
FORMAT				= 'CSV',
FIRSTROW			= 1,
FIELDTERMINATOR		= ',',
MAXERRORS			= 10,
ROWTERMINATOR		= '\n'
)