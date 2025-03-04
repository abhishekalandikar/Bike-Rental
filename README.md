📌 Project Overview
The bike rental shop aims to gather data-driven insights to grow the business. The shop owner has hired an SQL specialist to analyze key business metrics, such as:

How many bikes are owned by category?
What was the rental revenue for each month?
Which membership type generates the most revenue?
What are the most rented bike categories?
By extracting and analyzing data from the database, this project helps optimize operations, improve customer experience, and maximize revenue.

📌 Understanding the Database
The bike rental shop database consists of five tables:

1️⃣ Customer Table
Contains details about the customers of the bike rental shop.
Columns:

id → Unique ID of each customer
name → Customer's name
email → Customer's email address
2️⃣ Bike Table
Stores information about the bikes owned by the rental shop.
Columns:

id → Unique ID of the bike
model → Bike model
category → Type of bike (e.g., mountain, road, hybrid, electric)
price_per_hour → Rental price per hour
price_per_day → Rental price per day
status → Availability status (available, rented, out of service)
3️⃣ Rental Table
Tracks bike rentals by customers.
Columns:

id → Unique rental ID
customer_id → ID of the customer who rented the bike
bike_id → ID of the rented bike
start_timestamp → Rental start date and time
duration → Rental duration in minutes
total_paid → Total amount paid for the rental
4️⃣ Membership Type Table
Defines different membership plans available for customers.
Columns:

id → Unique ID of the membership type
name → Name of the membership type
description → Membership description
price → Price of the membership
5️⃣ Membership Table
Stores details of purchased memberships.
Columns:

id → Unique membership ID
membership_type_id → ID of the purchased membership type
customer_id → ID of the customer who purchased the membership
start_date → Membership start date
end_date → Membership end date
total_paid → Total amount paid for the membership
This structured approach allows for effective analysis of rental trends, membership insights, and business growth strategies. 🚴‍♂️📊
