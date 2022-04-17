USE premier_products;
#1.	Print all rows and columns of the dataset
select * from customer, order_line, orders, part, sales_rep; 
#2.	All rows, last name , first name, sales rep number, city from sales rep table 
select last_name, first_name, sales_rep_num, city from sales_rep;
#3.	Select order and customer number from orders
select order_num, customer_num from orders;
#4.	Select only two rows from order line
select * from order_line limit 2 ;
#5.	Select all of the entries from customer where sales rep num=20
select * from customer where sales_rep_num=20;
#6.	Select only customer name, balance, credit limit from customer where sales rep num=20
select customer_name, balance, credit_limit from customer where sales_rep_num=20;
#7.	Select part num, num ordered, quoted price and total price where total price is
# (num_ordered * quoted_price) where only 1 num ordered and the order number is 21617
select part_num, num_ordered, quoted_price, (num_ordered * quoted_price) as total_price from order_line where num_ordered=1 and order_num=21617;
#8.	Show all the orders from order date between '2010-10-20’ and '2010-10-22'
select * from orders where 2010-10-20<order_date<2010-10-22;
#9.	List all of parts where the part description starts with ‘D’ and end with  ‘er’
select * from part where part_description like 'D%' and part_description like '%er';
#10.	Show total balance from customer
select (sum(balance)) from customer;
#11.	Show minimum balance from customer
select (min(balance)) from customer;
#12.	Count number of customers in customer table
select count(customer_name) from customer;
#13.	Select order number where the quote price is more than 500 but less than 1000
select order_num from order_line where 500<quoted_price<1000;
#14.	Create a new table of customer name, last name, and first name from customer 
#and sales rep table by matching up their primary key
create table new_table as select customer_name, last_name, first_name from customer, sales_rep 
where customer.sales_rep_num=sales_rep.sales_rep_num;
