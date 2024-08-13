/*select * from Production.ProductDescription
select * from Production.ProductModel
select * from Production.ProductModelProductDescriptionCulture
*/

select PM.ProductModelID,
PD.Description as Product_Description,
PM.Name as model_name

from Production.ProductModel as PM left join
Production.ProductModelProductDescriptionCulture PMC on PM.ProductModelID=PMC.ProductModelID

left join Production.ProductDescription PD
on PMC.ProductDescriptionID=PD.ProductDescriptionID
where PMC.CultureID='en' or  PMC.CultureID is null

union all  
select null,null,null