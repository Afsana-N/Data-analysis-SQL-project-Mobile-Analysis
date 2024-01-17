create schema Mobile;

use Mobile;

 select*from mobile_Analysis;
 
 ---CHECK mobile features and price list --
 
 select phone_name, price from mobile_Analysis; 
 
 --FInd out the 5 most expensive phones--
 
 select*from mobile_Analysis
 order by price desc
 limit 5;
 
 ---FIND out most cheapest phones (Asc)-----
 
select*from mobile_Analysis
 order by price asc
 limit 5;
 
 ---LIST of top 5 samsung phones with price and all features (desc) --
 
 select * from mobile_Analysis where brands="samsung"
 order by price desc
 limit 5;
 
-- Must have android phone list then top 5 high price android phones (desc)---
 
 select * from mobile_Analysis where Operating_System_Type="Android"
 order by price desc
 limit 5;
 
 -- Must have android phone list then top 5 high price android phones (Asc)---

 select * from mobile_Analysis where Operating_System_Type="Android"
 order by price asc
 limit 5;
 
 
 select*from mobile_Analysis;
 
 --- MUST HAVE IOS phones top 5 by price (desc) ---
 
 select * from mobile_Analysis where Operating_System_Type="iOS"
 order by price desc
 limit 5;
 
- MUST HAVE IOS phones cheapest top 5 by price (Asc)--

select * from mobile_Analysis where Operating_System_type="iOS"
 order by price asc
 limit 5;
 
 select* from mobile_Analysis;
 
 -- which phone support 5G and also top 5 phone with 5G support---
 
 select* from mobile_Analysis where 5g_availability ="yes"
 order by price 
 limit 5;
 
 ---Total price of all  mobiles based on brand  name ---
 
 select Brands,sum(price) from mobile_Analysis group by brands;
 
 
