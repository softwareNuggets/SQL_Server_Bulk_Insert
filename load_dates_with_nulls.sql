use mydb;
--drop table bulk_load_dates
--truncate table bulk_load_dates
create table bulk_load_dates
(
	id int not null,
	field_date date ,
	field_datetime datetime not null,
	field_datetime2 datetime2 not null,
	field_time time,
	field_smalldatetime smalldatetime not null,
	field_datetimeoffset datetimeoffset not null
)

--date		(0001-01-01) to (9999-12-31)

--datetime  (1754-01-01  hh:mm:ss.nnn) to (9999-12-31 hh:mm:ss.nnn)

--datetime2 (0001-01-01  hh:mm:ss.nnnnnnn) to (9999-12-31 hh:mm:ss.nnnnnnn)

--time		(00:00:00.0000000) to (23:59:59.9999999)

--smalldatetime	 (1900-01-01 00:00:00) to (2079-12-31 23:59:59)

--datetimeoffset (0001-01-01  hh:mm:ss.nnnnnnn -14:00 to 14:00) to 
--		  			9999-12-31 hh:mm:ss.nnnnnnn -14:00 to 14.00)


insert into bulk_load_dates(
	id,
	field_date,
	field_datetime,
	field_datetime2,
	field_time,
	field_smalldatetime,
	field_datetimeoffset)
values
(1,	
	'2022-11-08',		
	'2022-11-08 18:30:15.123',	
	'2022-11-08 20:30:15.1234567',
	'20:30:15.1234567',	
	'1901-01-01 20:30:00',		
	'2022-11-08 18:00:00.1234567 +04:00')




select *
from bulk_load_dates


bulk insert MyDb.dbo.bulk_load_dates
from 'C:\YOUTUBE\SQL\bulk_insert\dates_with_nulls.csv'
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
