select * from dbo.Details 

select * from dbo.Orders 

select * from dbo.Details
inner join dbo.Orders
on Details.Order_ID = Orders.Order_ID
order by details.Order_ID;

select * from dbo.Details
left join dbo.Orders
on Details.Order_ID = Orders.Order_ID
order by details.Order_ID;

select * from dbo.Details
right join dbo.Orders
on Details.Order_ID = Orders.Order_ID
order by details.Order_ID;

