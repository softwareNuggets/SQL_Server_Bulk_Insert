use mydb;
drop table bulk_load_numbers
truncate table bulk_load_numbers
create table bulk_load_numbers
(
	id				int identity(1,1) not null,
	field_bit		bit not null,
	field_tiny		tinyint not null,
	field_smallint	smallint not null,
	field_int		int not null,
	field_bigint	bigint not null,
	field_float		float not null,
	field_real		real not null,
	field_numeric	numeric(10,2) not null,
	field_decimal	decimal(10,2) not null
	
)

--bit			1 = true, 0 = false
--tinyint		0-255
--smallint		-32768 to 32767
--int			-2,147,483,648 to 2,147,483,647
--bigint		-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
--float			(4 bytes) 7 digits of precision
--real			(8 bytes) 15 digits of precision
--decimal		p[,s]  
--numeric		p[,s]   numeric is functionally identical to decimal

bulk insert MyDb.dbo.bulk_load_numbers
from 'C:\YOUTUBE\SQL\bulk_insert\numbers.csv'
with
(
KEEPNULLS,
CODEPAGE			= 'RAW',
FORMAT				= 'CSV',
FIRSTROW			= 1,
FIELDTERMINATOR		= ',',
ROWTERMINATOR		= '\n'
)

select *
from bulk_load_numbers