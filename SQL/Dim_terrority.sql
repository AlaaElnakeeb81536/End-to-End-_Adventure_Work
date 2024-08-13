IF object_id('dim_territory', 'U') is not null
drop table dim_territory;
go 

CREATE TABLE dim_territory
  (
     territory_key      INT NOT NULL IDENTITY(1, 1),
     territory_id       INT NOT NULL,
     territory_name     NVARCHAR(50),
     territory_country  NVARCHAR(400),
     territory_group    NVARCHAR(50),

     source_system_code TINYINT NOT NULL,

     start_date         DATETIME NOT NULL DEFAULT (Getdate()),
     end_date           DATETIME,
     is_current         TINYINT NOT NULL DEFAULT (1),
     CONSTRAINT pk_dim_territory PRIMARY KEY CLUSTERED (territory_key)
  );
  --insert unknown record
SET IDENTITY_INSERT dim_territory on 
insert into dim_territory(territory_key,territory_id,territory_name,territory_country,territory_group,source_system_code,start_date,end_date,is_current)
values(0,0,'Unknown','Unknown','Unknown',0,'1900-01-01',null,1)
SET IDENTITY_INSERT dim_territory OFF;

/*
if exists 
( select * from sys.foreign_keys where name='fk_fact_sales_dim_territory' 
and parent_object_id=object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_territory; 
*/

/*
if exists 
( select * from sys.tables where name='fact_sales')
alter table fact_sales
add constraint fk_fact_sales_dim_territory 
foreign key(territory_key) references dim_territory(territory_key)
*/

--indexes(territory_id)

if exists(select * from sys.indexes 
where name='dim_territory' and
object_id=object_id('dim_territory'))
drop index dim_territory.index_territory_id

go 

create index index_territory_id 
on dim_territory(territory_id)


