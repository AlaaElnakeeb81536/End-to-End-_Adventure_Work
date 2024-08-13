--drop and then create 
IF object_id('fact_sales', 'U') is not null
drop table fact_sales;
go 


create table fact_sales(

product_key int not null,
customer_key int not null,
territory_key int not null,
date_key int not null,
sales_order_id VARCHAR(50) NOT NULL,
line_number INT NOT NULL,
quantity INT,
unit_price MONEY,
unit_cost MONEY,
tax_amount MONEY,
freight MONEY,
extended_sales MONEY,
extened_cost MONEY,
created_at  DATETIME NOT NULL DEFAULT(Getdate()),

constraint pk_fact_sales primary key(sales_order_id,line_number), 
constraint fk_fact_sales_dim_product foreign key(product_key) references dim_product(product_key),
constraint fk_fact_sales_dim_customer foreign key(customer_key) references dim_customer(customer_key),
constraint fk_fact_sales_dim_territory foreign key(territory_key) references dim_territory(territory_key),
constraint fk_fact_sales_dim_date foreign key(date_key) references dim_date(date_key),

)

-- create indexes

--product
IF EXISTS (SELECT *
           FROM   sys.indexes
           WHERE  NAME = 'fact_sales_dim_product'
                  AND object_id = Object_id('fact_sales'))
  DROP INDEX fact_sales.fact_sales_dim_product;

CREATE INDEX fact_sales_dim_product
  ON fact_sales(product_key);

 --territory 
if exists(select * from sys.indexes 
where name='dim_territory' and object_id=object_id('fact_sales'))
drop index fact_sales.fact_sales_dim_terrority
go 
create index fact_sales_dim_terrority on fact_sales(territory_key)

--customer
if exists(select * from sys.indexes where name='dim_customer' and object_id=object_id('fact_sales'))
drop index fact_sales.fact_sales_dim_customer
go 
create index fact_sales_dim_customer on fact_sales(customer_key)

--date
if exists(select * from sys.indexes where name='dim_date' and object_id=object_id('fact_sales'))
drop index fact_sales.fact_sales_dim_date
go 
create index fact_sales_dim_date on fact_sales(date_key)



