--create database sales



select * from sales



--Q1 To Find Total Sales?


select round(sum(sales),2) as Total_Sales_in_Dollars from sales



--Q2 To Find Average Sales?


select round(avg(sales),2) as Total_Avg_Sales_in_Dollars from sales



--Q3 To Find Total Number of Items?

select count(Item_Identifier)as Total_Number_of_Items from sales



--Q4 Item Fat Contain?

select distinct(Item_Fat_Content)as Types_of_Fat from sales



--Q5 Item Type Conatin?

select distinct(Item_type) from sales



--Q6 Avg Item Visibility?

select round(avg(Item_Visibility)*100,2) as Avg_Item_Visibility from sales




--Q7 Avg Item Weight?

select round(avg(Item_Weight)*100,2) as Avg_Item_Weight from sales




--Q8 Outlet Size?

select distinct(Outlet_Size) from sales




--Q9 Outlet Location Type?

select distinct(Outlet_Location_Type) from sales




--Q10 Fat Content by Item Type Count?

select Item_Fat_Content,count(Item_Type)as Item_Type_Count from sales 
group by Item_Fat_Content order by Item_Fat_Content desc




--Q11 Number of Item Type Count?

select Item_Type,count(Item_Type) as Item_Per_Count from sales
group by Item_Type order by Item_Type desc




--Q12 Item Per Year By Outlet Establishment Year?

select Outlet_Establishment_Year,count(Outlet_Establishment_Year) as Item_Per_Year from sales
group by Outlet_Establishment_Year order by Item_Per_Year desc




--Q13 Item Type By Outlet Size?

select count(Item_Type)as Types_of_Items,Outlet_Size from sales
group by Outlet_Size order by Outlet_Size desc




--Q14 Item Type By Outlet Type?

select count(Item_Type)as Types_of_Items,Outlet_Type from sales
group by Outlet_Type order by Types_of_Items desc




--Q15 Maximum Sales?

select round(max(Sales),2) as Maximum_Sale from sales




--Q16 Maximum Weight?

select round(max(Item_Weight),2) as Maximum_Weight from sales
select * from sales




--Q17 Maximum Item Visibility?

select round(max(Item_Visibility),2)*100 as Maximum_Item_Visibility from sales




--Q18 Number Of Items Count By Rating?

select count(Item_Type)As Number_of_items,Rating from sales
group by Rating order by Rating desc




--Q19 Number Of Items By Outlet Identifier?

select count(Item_Type) as Number_of_items,Outlet_Identifier from sales
group by Outlet_Identifier order by Number_of_items desc




--Q20 Number Of Outlet  According to Outlet Size?

select distinct(count(Outlet_Size))as Number_of_Outlet_Size,Outlet_Size from sales
group by Outlet_Size order by Outlet_Size desc




--Q21 Number Of Outlet  According to Outlet Type?

select distinct(count(Outlet_Type))as Number_of_Outlet_Type,Outlet_Type from sales
group by Outlet_Type order by Number_of_Outlet_Type desc




--Q22 Number Of Outlet According to Outlet_Location_Type?

select distinct(count(Outlet_Location_Type))as Number_of_Outlet_Location_Type,Outlet_Location_Type from sales
group by Outlet_Location_Type order by Number_of_Outlet_Location_Type desc



--Q23 Number Of Items By Item Type?

select count(Item_Type) as Number_of_Items,Item_Type from sales
group by Item_Type order by Number_of_Items desc























