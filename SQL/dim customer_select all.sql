select p.BusinessEntityID,
cast(  isnull(p.FirstName,'') +' '+ISNULL(p.MiddleName,'') +' '+ISNULL(p.LastName,'')  as nvarchar(150)) as Customer_name
,a2.AddressLine1, a2.AddressLine2,a2.City
,pp.PhoneNumber as phone
from Person.Person as p
left join Person.BusinessEntityAddress a1 
on a1.BusinessEntityID=p.BusinessEntityID  and a1.AddressTypeID = 2 
left join  Person.Address a2
on a1.AddressID=a2.AddressID 
left join person.PersonPhone pp on pp.BusinessEntityID=p.BusinessEntityID

