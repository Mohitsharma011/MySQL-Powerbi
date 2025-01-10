create database ev_data;
use ev_data;
select * from electric_car_data;

-- 1.Retrieve the Brand and Model of all cars with a TopSpeed_km greater than 200.
select brand,model from electric_car_data
where topspeed_km >200;

-- 2.List all the cars where RapidCharge is available, displaying Brand, Model, and FastCharge_km.
select brand,model,fastcharge_km from electric_car_data
where rapidcharge = "Yes";

-- 3.Retrieve the Brand, Model, and Range_km of cars with an efficiency (Efficiency_wh) below 150 Wh/km.
select brand,model,range_km,efficiency_wh from electric_car_data
where efficiency_wh <150;

-- 4.Find the average PriceEuro of all cars in each Segment.
select segment,round(avg(priceeuro),0) from electric_car_data
group by segment;

-- 5.Display all cars with a PowerTrain of "Electric" and sort them by Range_km in descending order.
select powertrain,range_km from electric_car_data
order by range_km desc;

-- 6.Retrieve the Brand, Model, and Range_km of the top 5 cars with the highest range.
select brand,model,range_km from electric_car_data
order by range_km desc limit 5;

-- 7.List the Segment and the total number of cars (Model) in each segment.
select segment ,count(model) as total_cars from electric_car_data
group by segment;

-- 8.Find the car with the lowest Accel_sec for each BodyStyle.
select bodystyle,min(accel_sec) as fastest_acceleration from electric_car_data
group by bodystyle;

-- 9.Retrieve the Brand and PriceEuro of all cars that support RapidCharge and have a FastCharge_km greater than 300 km.
select brand,priceeuro,rapidcharge,fastcharge_km from electric_car_data 
where rapidcharge="Yes" and fastcharge_km >300;

-- 10.Identify the Brand and Model of cars where the Seats are greater than 5 and the Range_km is over 500.
select brand,model,seats,range_km from electric_car_data 
where seats > 5 and range_km > 500;

-- 11.Calculate the average Efficiency_wh for cars grouped by PlugType and PowerTrain.
SELECT plugtype, powertrain, AVG(efficiency_wh) as average_efficiency from electric_car_data
group by plugtype,powertrain;

-- 12.Retrieve the Segment with the highest total number of cars (Model) where RapidCharge is supported:
select segment,count(model) as total_cars 
from electric_car_data
where rapidcharge ="Yes"
group by segment
ORDER BY total_cars desc
limit 1;














 



