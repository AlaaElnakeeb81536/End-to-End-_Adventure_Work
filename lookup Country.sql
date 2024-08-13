
if exists (select * from sys.tables where name='lookup_country')
drop table lookup_country

create table lookup_country(
country_id int not null identity(1,1),
country_name nvarchar(50) not null,
country_code nvarchar(2) not null,
country_region nvarchar(50)
)

insert into lookup_country(
country_name,country_code,country_region)
values
('United States','US','North America'),
('Cananda','CA','North America'),
('France','FR','Europe'),
('Germany' ,'DE','Europe'),
('Australia','AU','Pacific'),
('United Kindom','GB','Europe');