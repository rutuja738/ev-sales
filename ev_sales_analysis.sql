
use electric_vehicle_analyis;

-- xxxxxxxxxxxxxxxxxxxxxx KPI xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx ---- 
-- -------1) Total Revenue ----------------------------------------------------------------
select sum(Revenue) as Total_Revenue from Sales;

-- 2) Total unit sold ---------------------------------------
select sum(Units_sold) as Total_Sold from Sales;

-- 3) Average Selling Price of Models -----------------------
select avg(price) as average_price from Models;

-- 4) Total EV models  -----------------------------------------------------
select count(*) as total_models from Models;

-- 5) Total Manufactures --------------------------------------------
select count(*) as total_manufacturer from Manufacturers;

-- 6) Total charging station ------------------------------------
select count(*) as total_charging_station from Charging_Station;

-- 7) Avreage battery capacity -----------------------------------------
select Round(avg(battery_capacity),2) as avg_battery_capacity from Models;

-- 8) Average Driving range ---------------------------
select Round(avg(range_km),0) as Driving_Range from Models;

-- 9) Revenue per unit solds --------------------------------------------------------
select Round(sum(Revenue)/sum(units_sold),2) as Revenue_per_unit from Sales;

-- 10) Highest Revenue Generated ---------------------------------------------
select max(revenue) as Highest_Revenue from Sales;


-- 11) Top 10 Most Expensive EV Models -----------------------------------
select model_name,price
from Models
order by price desc
limit 10;

-- 12) Top 5 selling Models -----------------------------------------------------
select m.model_name,
s.units_sold
from Sales s
Join Models m
ON s.model_id=m.model_id
ORDER BY s.units_sold Desc
limit 5;

-- 13) top 5 revenue generating models -------------
select m.model_name,
s.revenue
from Sales s
JOIN Models m
ON s.model_id = m.model_id
ORDER BY s.revenue Desc
limit 5;

-- xxxxxxxxxxxxxxxxxxxxxxxxxxx Business Insights XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX--
-- 14) Finds which vehicle type earns the most revenue.(Revenue by vechile type)
select m.Vehicle_type,
sum(s.revenue) as Total_Revenue
from Sales s
JOIN Models m
ON s.model_id= m.model_id
GROUP BY m.vehicle_type;

-- 15)Shows the states with the highest EV sales.(Units sold by state)
select st.state_name,
sum(s.units_sold) as Total_units
from Sales s
JOIN States st
ON s.state_id=st.state_id
GROUP BY st.state_name
ORDER BY Total_units DESC;

-- 17)Tracks EV sales performance month by month.(Monthly sales trends)
select MONTHNAME(sale_date) as Month,
sum(units_sold) as Units_sols
from Sales
GROUP BY MONTH(sale_date), MONTHNAME(sale_date)
ORDER BY MONTH(sale_date);

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX Other Queries XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- 1. [WHERE Clause ]--------------------------------------------------------------------------
-- 1) Find all SUV models ---
select * from Models
where Vehicle_type="SUV";

-- 2) Find models priced above ₹50 Lakhs --
select model_name,Price from Models
where Price>50000000;

-- 3)Find sales where units sold are greater than 100 ---
select * from Sales
where Units_sold>100;

-- 2.[ ORDER BY] --------------------------------------------------------------------------------
-- 1) Highest Price Models ----
select model_name,Price FROM Models
ORDER BY price DESC;

-- 2)Lowest Range Models ------
select model_name, range_km from Models
ORDER BY range_km ASC;

-- 3. [HAVING] -----------------------------------------------------------------------------------
-- 1) Show states where more than 100 units were sold 
select state_id,
sum(units_sold) as Total_Units
FROM Sales
Group By state_id
having sum(units_sold)>100;

-- 2)Shows only the vehicle types that have more than 5 models. 
Select vehicle_type,
COUNT(*) as Total_Models
from Models
GROUP BY vehicle_type
HAVING COUNT(*)>5;

-- 4.[IN Operator] -----------------------------------------------------------------------------
-- 1)Find all manufacturers that belong to India, USA, or China.
select * from Manufacturers
where country in ('india','USA','China');

-- 5.[NOT IN Operator] --------------------------------------------------------------
-- 1) Find all EV models that are not SUVs.
select * from Models
where vehicle_type not in ('SUV');

-- 6.[BETWEEN] --------------------------------------------------------------------------
-- 1)Display all EV models whose price is between ₹20,00,000 and ₹50,00,000.
select model_name,price
from Models
where price between  2000000  and 5000000;

-- 7.[LIKE] -------------------------------------------------------------------
-- 1)Find all manufacturers whose names start with the letter 'T'.
select * from Manufacturers
where Manufacturer_name like "T%";

-- 2) find name manufacturers whoes name end with A
select Manufacturer_name from Manufacturers
where Manufacturer_name like "%A";

-- 8.[DISTINCT] ----------------------------------------------------------------------
-- 1)Display all unique vehicle types available in the Models table.
select DISTINCT vehicle_type from Models;

-- 9.[LIMIT]-----------------------------------------------------------------------------
-- 1)Display the top 10 most expensive EV models. -------------------
select model_name, price from Models
ORDER BY price DESC
limit 10;

-- 10.[offset] ------------------------------------------------------------------------
-- 1)Display EV models ranked from 11th to 15th by price.
select model_name,price
from Models
ORDER BY price DESC
limit 5 offset 10;

-- 11.[SUM()] ---------------------------------------------------------------------------
--  1)Calculate the total revenue generated from EV sales.
select sum(revenue) as Total_Revenue from Sales;

-- 12.[AVG] -------------------------------------------------------------------------------
-- 1)Find the average price of EV models.
select Avg(price) as average_price from Models;

-- 13.[Count] --------------------------------------------------------------------------------
-- Count the total number of EV models.
select COUNT(*) as Total_Models from Models;

-- 14.[MAX] ---------------------------------------------------------------------------------
-- 1)Find the highest-priced EV model.
select max(price) as Highest_price from Models;

-- 15.[MIN] ---------------------------------------------------------------------------------
-- 1)Find the lowest-priced EV model.
select min(price) as lowest_price from Models;

-- 16.[UPPERCASE] ---------------------------------------------------------------------------
-- 1)Display all manufacturer names in uppercase.
select upper(Manufacturer_name) as Manufacturer from Manufacturers;

-- 17.[lower] ---------------------------------------------------------------------------
-- 1)Display all manufacturer names in lowercase.
select lower(Manufacturer_name) as Manufacturer from Manufacturers;

-- 18.[length] ---------------------------------------------------------------------------
-- 1)Display the length of each model name.
select model_name,
length(model_name) as Name_Length  from Models;

-- 19.[year] ------------------------------------------------------------------------------
-- 1)Display the sale year for each sale.
select sale_date,
year(sale_date) as Sale_Year
from Sales;

-- 20.[MONTHNAME()] -----------------------------------------------------------------------
select sale_date,
MONTHNAME(sale_date) as sale_year
from Sales;

-- 21.[Round] ------------------------------------------------------------------------------
-- 1)Display the price of each EV model rounded to two decimal places.
select Round(price,2) as Rounded_price from Models;

-- 22.[CASE] -------------------------------------------------------------------------
-- 1)Categorize EV models as Budget, Premium, or Luxury based on price.
select model_name,price,
CASE 
 WHEN price<3000000 THEN 'Budget'
 WHEN price BETWEEN 3000000 and 10000000 THEN 'Premium'
 else 'Luxury'
 END as Price_Category
 from Models;
 
 -- 23.[INNER JOIN] -----------------------------------------------------------------------
 -- 1)Display each EV model along with its manufacturer name.
select 
m.model_name,
ma.Manufacturer_name
from Models m
INNER JOIN Manufacturers ma
ON m.manufacturer_id= ma.Manufacturer_id;

-- 24.[LEFT JOIN] -----------------------------------------------------------------------
-- 1)Display all manufacturers along with their EV models, including manufacturers that have no models.
select 
ma.manufacturer_name,
m.model_name
from Manufacturers ma
LEFT JOIN Models m
ON m.manufacturer_id=ma.manufacturer_id;

-- 25.[RIGHT JOIN] --------------------------------------------------------------------------
-- 1)Display all EV models along with their manufacturer names, including models even if manufacturer details are missing.
select
 ma.manufacturer_name,
 m.model_name
from Manufacturers ma
RIGHT JOIN Models m
ON ma.manufacturer_id=m.manufacturer_id;

-- 2)Display all sales along with the corresponding EV model names, including sales that do not have matching model details.
select 
s.sale_id,
m.model_name,
s.units_sold,
s.revenue
from Models m
RIGHT JOIN Sales s
ON m.model_id=s.model_id;

-- 3)Display all sales with their corresponding state names, including sales that do not have matching state information.
select 
st.state_name,
s.sale_id,
s.revenue
from States st
RIGHT JOIN Sales s
ON st.state_id=s.state_id;

-- 26.[Subquery]----------------------------------------------------------------------------
-- 1)Display all EV models whose price is higher than the average model price.
SELECT model_name,price
from Models
where price>(select avg(price) from Models);

-- rank vehicle within each sale state based on revenue ---
select state_id,
sale_id,
revenue,
rank() over(
partition by state_id
order by revenue desc
) as state_rank
from sales;

-- display the dense rank of each sale based on revenue ---
select sale_id,
revenue,
dense_rank() over(
order by revenue desc
) as revenue_rank
from sales;