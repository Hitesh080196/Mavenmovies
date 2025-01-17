use mavenmovies;

-- 1. identify the primary keys and foreign keys in maven movies db. Discuss the differences 
-- Primary key is a unique and not null value which can only be one in a certain table
-- and a foreign key is column in a table which is a primary key in another table.   

-- 2. List all details of actors
select * from actor;

-- 3. List all customer information from DB.
select * from customer;

-- 4. List different countries. 
select country from country;

-- 5. Display all active customers. 
select concat(first_name , " " , last_name ) as Active_Customer from customer where active = 1; 

-- 6.  List of all rental IDs for customer with ID 1.
select customer_id as Rental_IDs from rental where staff_id = 1;

-- 7. Display all the films whose rental duration is greater than 5 . 
select title as Film,rental_duration from film where rental_duration>5;

-- 8.  List the total number of films whose replacement cost is greater than $15 and less than $20. 
select count(title) as Total_Fims from film where replacement_cost > 15 and replacement_cost <20;

-- 9. Display the count of unique first names of actors. 
select count(distinct(first_name)) as Unique_Names from actor;

-- 10.  Display the first 10 records from the customer table . 
select * from customer limit 4;

-- 11. Display the first 3 records from the customer table whose first name starts with ‘b’. 
select concat(first_name , ' ' , last_name) as Customer from customer where first_name like 'b%' limit 3;

-- 12. Display the names of the first 5 movies which are rated as ‘G’. 
select title as Movies, rating from film where rating = 'G' limit 5;  

-- 13. Find all customers whose first name starts with "a". 
select concat(first_name, " " , last_name) as Customer from customer where first_name like "a%";

-- 14.  Find all customers whose first name ends with "a". 
select concat(first_name , " " , last_name) as Customer from customer where first_name like "%a";

-- 15.  Display the list of first 4 cities which start and end with ‘a’ . 
select city from city where city like ('a%a') limit 4;

-- 16.  Find all customers whose first name have "NI" in any position. 
select customer_id,concat(first_name , " " , last_name) as Customer from customer where first_name like "%ni%";

-- 17.  Find all customers whose first name have "r" in the second position .
select customer_id,concat(first_name , " " , last_name) as Customer from customer where first_name like "_r%";

-- 18.  Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select concat(first_name , " " , last_name) as Customer from customer where first_name like "a____%";

-- 19.  Find all customers whose first name starts with "a" and ends with "o". 
select concat(first_name," ",last_name) as Customer from customer where first_name like "a%o";

-- 20.  Get the films with pg and pg-13 rating using IN operator. 
select title as Film,rating from film where rating in ('PG', 'PG-13');

-- 21.  Get the films with length between 50 to 100 using between operator. 
select title as Film, length from film where length between 50 and 100 order by length asc;

-- 22. Get the top 50 actors using limit operator. 
select actor_id as ID ,concat(first_name, " " , last_name) as Top_50_Actor from actor limit 50; 

-- 23.  Get the distinct film ids from inventory table. 
select distinct(film_id) from inventory;

