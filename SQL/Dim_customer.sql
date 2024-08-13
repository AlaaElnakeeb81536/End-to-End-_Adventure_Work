

IF object_id('dim_customer', 'U') is not null
drop table dim_customer;
go 

create table dim_customer
(
 customer_key INT NOT NULL IDENTITY(1, 1),
 customer_id INT NOT NULL,
 customer_name NVARCHAR(150),
 address1  NVARCHAR(100),
 address2  NVARCHAR(100),
 city NVARCHAR(30),
 phone NVARCHAR(25),
 ---birth_date date,
 --marital_status char(10),
 --gender char(1),
 --yearly_income money,
 --education varchar(50),

--metadate
source_system_code tinyint not null,

---slowly changing dimension
start_date datetime not null default(getdate()),
end_date datetime ,
is_current  tinyint not null default(1),

constraint Pk_customer_key primary key(customer_key)

)

--insert unknown record
SET IDENTITY_INSERT dim_customer ON;

INSERT INTO dim_customer (customer_key, customer_id, customer_name, address1, address2, city, phone, source_system_code, start_date, end_date, is_current)
VALUES (0, 0, 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 0, '1900-01-01', null, 1);

SET IDENTITY_INSERT dim_customer OFF;

/*
if exists 
( select * from sys.foreign_keys where name='fk_fact_sales_dim_product' 
and parent_object_id=object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_product; 
*/


if exists 
( select * from sys.tables where name='fact_sales')
alter table fact_sales
add constraint fk_fact_sales_dim_customer
foreign key(customer_key) references dim_customer(customer_key)

-- Create Foreign Keys
/*
IF EXISTS (SELECT *
           FROM   sys.tables
           WHERE  NAME = 'fact_sales'
                  AND type = 'u')
  ALTER TABLE fact_sales
    ADD CONSTRAINT fk_fact_sales_dim_customer FOREIGN KEY (customer_key)
    REFERENCES dim_customer(customer_key);
*/
/*if exists 
( select * from sys.foreign_keys where name='fk_fact_sales_dim_customer' 
and parent_object_id=object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_customer; 
*/

--indexes(p_id,product_category)

if exists(select * from sys.indexes where name='dim_customer' and object_id=object_id('dim_customer'))
drop index dim_customer.index_customer_id
go 
create index index_customer_id on dim_customer(customer_id)


if exists(select * from sys.indexes where name='dim_customer' and object_id=object_id('dim_customer'))
drop index dim_customer.index_customer_city
go 
create index index_customer_city on dim_customer(city)
