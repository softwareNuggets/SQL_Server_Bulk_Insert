use mydb;
--drop table table_with_34_columns
--truncate table table_with_34_columns
create table table_with_34_columns
(
	id				int identity(1,1) not null,
	field_bit_1		bit,
	field_tinyint_2		tinyint,
	field_tinyint_3		tinyint,
	field_tinyint_4		tinyint,
	field_tinyint_5		tinyint,
	field_tinyint_6		tinyint,
	field_tinyint_7		tinyint,
	field_int_2		int,
	field_int_3		int,
	field_int_4		int,
	field_int_5		int,
	field_int_6		int,
	field_int_7		int,
	field_decimal_1	decimal(10,2),
	field_varchar_1	varchar(10),
	field_varchar_2	varchar(10),
	field_varchar_3	varchar(10),
	field_varchar_4	varchar(10),
	field_varchar_5	varchar(10),
	field_varchar_6	varchar(10),
	field_char_1	char(10),
	field_char_2	char(10),
	field_char_3	char(10),
	field_char_4	char(10),
	field_char_5	char(10),
	field_char_6	char(10),
	field_datetime  datetime,
	field_nchar_1	nchar(10),
	field_nchar_2	nchar(10),
	field_nchar_3	nchar(10),
	field_nchar_4	nchar(10),
	field_nchar_5	nchar(10),
	field_nchar_6	nchar(10)
)

insert into table_with_34_columns(field_bit_1,field_decimal_1,field_nchar_1)
values							 (   'true'     ,32.0           ,'32 nchars');





bulk insert MyDb.dbo.table_with_34_columns
from 'C:\YOUTUBE\SQL\bulk_insert\bunch_of_commas.csv'
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
from table_with_34_columns







insert into table_with_32_columns(field_bit_1,field_decimal_1,field_nchar_1)
values							 (   'true'     ,32.0           ,'32 nchars');

--select *
--from table_with_32_columns



--drop view view_4_of_34
create view view_4_of_34
as
select id,field_bit_1, field_decimal_1, field_nchar_1
from table_with_34_columns





select *
from table_with_34_columns


select *
from view_4_of_34


select *
from table_with_34_columns

select *
from view_4_of_34




bulk insert MyDb.dbo.view_4_of_34
from 'C:\YOUTUBE\SQL\bulk_insert\4of34.csv'
with
(
KEEPNULLS,
CODEPAGE			= 'RAW',
FORMAT				= 'CSV',
FIRSTROW			= 1,
FIELDTERMINATOR		= ',',
ROWTERMINATOR		= '\n'
)
