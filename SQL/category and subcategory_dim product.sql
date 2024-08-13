/*
select * from Production.ProductCategory
select * from Production.ProductSubcategory
*/

select sc.ProductSubcategoryID,sc.Name as Subcategory_name ,cat.Name as Category_name
from Production.ProductSubcategory sc
 left join  Production.ProductCategory cat
 on sc.ProductCategoryID = cat.ProductCategoryID

 union all 
select null,null,null
