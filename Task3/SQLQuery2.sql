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

select customername from Orders where
Order_ID in (select Order_ID from Details where Sub_Category = 'Chairs');

select customername, Sub_Category from Orders as o inner join Details as d
on o.Order_ID = d.Order_ID
where Sub_Category = 'Chairs';

select (select avg(amount) from Details) as average_amt from details;

select (select max(amount) from details) as max_amount from Details;

select max(max_amt) as maximum
from (select category,max(amount) as max_amt,min(amount) as min_amt,count(category) as count_category
from details group by category) as agg_table;

drop index idxx_category on details;
drop index idx_category on details;

create index idx_category
on details(category);
select category,avg(amount) from details group by Category;

create unique index uni_order on orders(order_id);
select order_id from orders;

create index idx_cat_subcat 
on details(category,sub_category);
select category,sub_category from details group by Category,Sub_Category ;
