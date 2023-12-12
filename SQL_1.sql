--Remember to ask how to find mode and the payment table doesen't corresponde with the question

--Question 1 answer 2
select first_name, last_name
from actor
where last_name like 'Wahlberg';

--Question 2 real answer 0
select count(amount)
from payment
where amount between 3.99 and 5.99;

--Question 3 the most film the store has is 8 and multiple film_id's have 8
select film_id, count(film_id) 
from inventory
group by film_id
order by film_id;


--Question 4 answer 0
select last_name
from customer
where last_name like 'William';

--Question 5 staff_id 1 8,040
select staff_id, count(staff_id) 
from rental
group by staff_id
order by staff_id

--Question 6 answer 378
select district 
from address
group by district
order by district 

--Question 7 answer film_id 508 with 15 actors
select film_id, count(film_id) 
from film_actor
group by film_id 
order by film_id 

--Question 8 answer 13
select last_name, store_id
from customer
where last_name like '%es';

--Question 9
select amount, count(amount) 
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

--Question 10 answer 5 ratings PG-13 with 224
select rating, count(rating) 
from film f 
group by rating
order by rating 
