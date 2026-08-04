select top 5*
from dbo.ecommerce;

    --QUESTION 1
    select COUNT(order_id) AS Total_Orders
    from dbo.ecommerce

	--QUESTION 2
   select ROUND(SUM(payment_value),2) AS Total_Revenue
   from dbo.ecommerce

    --QUESTION 3
   select ROUND(AVG(payment_value),2) AS Avg_Order
   from dbo.ecommerce;
   
    --QUESTION 4
     select top 1
	 product_category_name,ROUND(SUM(payment_value),0) AS Total_Sales
	 from dbo.ecommerce
	 GROUP BY product_category_name
	 ORDER BY Total_Sales DESC;
	 --QUESTION 5
     select top 1 payment_type,COUNT(*) AS Total_Transactions
	 from dbo.ecommerce
	 GROUP BY payment_type
	 ORDER BY Total_Transactions DESC;
	 --QUESTION 6
      select top 1 customer_state,COUNT(DISTINCT order_id) AS Total_Orders
	  from dbo.ecommerce
	  GROUP BY customer_state
	  ORDER BY Total_Orders DESC

	  --QUESTION 7
      select top 1 seller_state,ROUND(SUM(payment_value),2) AS Revenue
	  from dbo.ecommerce
	  GROUP BY seller_state
	  ORDER BY Revenue DESC

	 --QUESTION 8
      select month_of_purchase,ROUND(SUM(payment_value),2) AS Sales
	  from dbo.ecommerce
	  GROUP BY month_of_purchase
	  ORDER BY MIN(order_purchase_timestamp);
	 --QUESTION 9
      select ROUND(AVG(freight_value),2) AS Avg_Freight_Cost
	  from dbo.ecommerce
	  
	 --QUESTION 10
       select top 5 product_id,product_category_name ,price
	   from dbo.ecommerce
	   ORDER BY price DESC

	 --QUESTION 11
       select ROUND(AVG(DATEDIFF(DAY,order_purchase_timestamp,
	   order_delivered_customer_date)),2) AS Avg_Delivery_Date 
	   from dbo.ecommerce

     --QUESTION 12
       select COUNT(*) AS Late_Orders
	   from dbo.ecommerce
	   WHERE order_delivered_customer_date > order_estimated_delivery_date;

	 --QUESTION 13
       select day_of_purchase,COUNT(DISTINCT order_id) AS Total_Orders
	   from dbo.ecommerce
	   GROUP BY day_of_purchase
	   ORDER BY Total_Orders DESC;

	  --QUESTION 14
       select year_of_purchase,ROUND(SUM(payment_value),0) AS Total_Sales
	   from dbo.ecommerce
	   GROUP BY year_of_purchase
	   ORDER BY Total_Sales DESC;

	  --QUESTION 15
        select product_category_name,ROUND(SUM(payment_value),0) AS Revenue,
		RANK() OVER(ORDER BY SUM(payment_value)DESC) AS Revenue_Rank
		from dbo.ecommerce
		GROUP BY product_category_name;