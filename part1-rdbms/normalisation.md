## Normalization Justification

Normalization means dividing one large table into smaller related tables so repeated information is reduced and data stays accurate. In the retail transaction table, customer details, product details, and sales representative details appear repeatedly in many rows, which can create anomalies.

## Insert Anomaly
Insert anomaly happens when new information cannot be added unless some unrelated data is also available. For example, if we want to add a new product in column Product_Name and Product_Price, but no customer has ordered it yet, we cannot insert it because Order_ID and Customer_ID are also required in the same row. Similarly, a new sales representative cannot be added until an order exists.

Example: If Product_Name = "Printer" and Product_Price = 12000, but there is no order, the row cannot be inserted properly.

## Update Anomaly
Update anomaly happens when same data is repeated in many rows and every row must be updated.

Example: If Sales_Rep_Name = "Rahul" appears in rows 2, 5, and 8, and Rahul’s email changes, every row must be updated. If one row remains old, inconsistent data appears. Product price also creates update anomaly when same product exists in multiple rows.

## Delete Anomaly
Delete anomaly happens when deleting one row removes other useful data.

Example: If row 7 contains the only order for Product_Name = "Mixer", deleting that row also removes all information about that product. If that row also contains one sales representative’s only record, their details are lost too.
