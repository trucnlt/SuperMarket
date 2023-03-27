select *
from Portfolio..spmk

-- Infor of Product line is Sport and travel in Yangon
select City, [Product line], Quantity, Total, [ gross margin percentage ], [gross income]
from Portfolio..spmk
where City ='Yangon' and [Product line] ='Sports and travel'


-- show information aout Food and beverages in Mandalay
select *
From Portfolio..spmk
where City='Mandalay'  and [Product line]='Food and beverages'

-- total unit price in each city
select City, sum([Unit price]) 
from Portfolio..spmk 
group by City
 

 -- total quantity by Food and beverages in Mandalay
 Select  City, sum(Quantity) as Total
 from Portfolio..spmk
 wHERE City='Mandalay' and [Product line]='Food and beverages'
 group by City
  
  --Normal customer in 3 cities
 Select City, [Customer type], Gender, [Product line], [Unit price], Total
 from Portfolio..spmk
 where [Customer type] = 'Normal'

 select COUNT(Quantity)
 from Portfolio..spmk
 group by City

 --Total paid in each city

 select City,SUM(Total) as Total_Paid
 from Portfolio..spmk
 group by City
 order by Total_Paid

 -- Quantity of Each city about Sport and travel
 select City, count(Quantity) as Total_Q
 from  Portfolio..spmk
 where [Product line]='Sports and travel'
 group by City
  
-- Information all of Invoices in Yangon from 1/1/2019 to 1/2/2019 
Select *
from  Portfolio..spmk
where City='Yangon' and Date between '2019-01-01' and '2019-02-01'
 

 --Quantity of Invoice in each day in Febuary
 select Date , COUNT(Quantity) as Dayb
 From Portfolio..spmk
 group by Date
 order by DAyb desc


