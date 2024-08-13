
--drop and then create 
IF object_id('dim_product', 'U') is not null
drop table dim_product;
go 

create table dim_product
(
product_key int not null identity(1,1) ,
product_id int not null,
product_name nvarchar(50),
product_description nvarchar(400),
product_category nvarchar(50),
product_subcategory nvarchar(50),
color nvarchar(15),
model_name nvarchar(50),
reorder_point smallint,
standard_cost money,

--metadate
source_system_code tinyint not null,

---slowly changing dimension
start_date datetime not null default(getdate()),
end_date datetime ,
is_current  tinyint not null default(1),

constraint Pk_product_key primary key(product_key)

)

--insert unknown record
SET IDENTITY_INSERT dim_product on 
insert into dim_product(product_key,product_id,product_name,product_description,product_category,product_subcategory,color,
model_name,reorder_point,standard_cost,source_system_code,start_date,end_date,is_current) values
(0,0,'Unknown','Unknown','Unknown','Unknown','Unknown','Unknown',0,0,0,'1900-01-01',null,1)
SET IDENTITY_INSERT dim_customer OFF;


/*
if exists 
( select * from sys.foreign_keys where name='fk_fact_sales_dim_product' 
and parent_object_id=object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_product; 
*/

/*
if exists 
( select * from sys.tables where name='fact_sales')
alter table fact_sales
add constraint fk_fact_sales_dim_product 
foreign key(product_key) references dim_product(product_key)
*/

--indexes(cust_id,city)

if exists(select * from sys.indexes where name='dim_product' and object_id=object_id('dim_product'))
drop index dim_product.index_product_id
go 
create index index_product_id on dim_product(product_id)


if exists(select * from sys.indexes where name='dim_product' and object_id=object_id('dim_product'))
drop index dim_product.index_product_category
go 
create index index_product_category on dim_product(product_id)

