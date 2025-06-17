SELECT *
  FROM [ElevateLabs].[dbo].[superstore];

  select [Product Name] from superstore;

   select distinct [Product Name] from superstore;

   select [Order ID],Quantity from superstore where Quantity > 2;

   select [Order ID],[Ship Mode] from superstore where [Ship Mode] = 'Second Class';

    select [Order ID],[Ship Mode] from superstore where [Ship Mode] != 'Second Class';

	select [Order ID],[Order Date] from superstore where cast([Order Date] as date) <= '2016-11-11' order by [Order Date];
	-- correct date format for SSMS is YYYY-MM-DD 

	select [order id],city,category from superstore where city='Aurora' and category='Technology';

	select [order id],city,state from superstore where [order id] like 'US%';

	select [order id],[customer name] from superstore where [customer name] like '_r%';

	select [sub-category],round(avg(cast(sales as float)),2) as AVGsales from superstore  group by [sub-category] order by [AVGsales] desc;

	select category,sum(cast(sales as float)) as SUMsales, max(cast(sales as float)) as MAXsales,min(cast(sales as float)) as MINsales from superstore group by category ;

	select region,sum(cast(quantity as int)) as totalquant from superstore group by region having sum(cast(quantity as int)) > 10000;

