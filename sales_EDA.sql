-- Customers table
create table customers (
    customer_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100),
    phone varchar(15),
    address text,
    city varchar(50),
    country varchar(50),
    join_date date
);

insert into customers (first_name, last_name, email, phone, address, city, country, join_date)
values
('john', 'doe', 'john.doe@example.com', '555-1234', '123 elm st', 'new york', 'usa', '2023-01-15'),
('jane', 'smith', 'jane.smith@example.com', '555-5678', '456 oak st', 'los angeles', 'usa', '2023-02-20'),
('alice', 'johnson', 'alice.johnson@example.com', '555-8765', '789 pine st', 'chicago', 'usa', '2023-03-01'),
('bob', 'brown', 'bob.brown@example.com', '555-4321', '101 maple st', 'miami', 'usa', '2023-01-30'),
('mary', 'davis', 'mary.davis@example.com', '555-0000', '102 birch st', 'houston', 'usa', '2023-04-12'),
('james', 'wilson', 'james.wilson@example.com', '555-1122', '103 cedar st', 'dallas', 'usa', '2023-02-17'),
('linda', 'martinez', 'linda.martinez@example.com', '555-2233', '104 spruce st', 'phoenix', 'usa', '2023-03-09'),
('michael', 'garcia', 'michael.garcia@example.com', '555-3344', '105 willow st', 'san diego', 'usa', '2023-05-01'),
('elizabeth', 'hernandez', 'elizabeth.hernandez@example.com', '555-4455', '106 oak st', 'austin', 'usa', '2023-06-14'),
('william', 'lopez', 'william.lopez@example.com', '555-5566', '107 pine st', 'denver', 'usa', '2023-07-08'),
('sophia', 'gonzalez', 'sophia.gonzalez@example.com', '555-6677', '108 maple st', 'boston', 'usa', '2023-08-03'),
('david', 'moore', 'david.moore@example.com', '555-7788', '109 cedar st', 'seattle', 'usa', '2023-09-19'),
('emily', 'taylor', 'emily.taylor@example.com', '555-8899', '110 birch st', 'san francisco', 'usa', '2023-07-15'),
('daniel', 'anderson', 'daniel.anderson@example.com', '555-9900', '111 spruce st', 'portland', 'usa', '2023-10-05'),
('grace', 'thomas', 'grace.thomas@example.com', '555-1234', '112 oak st', 'washington dc', 'usa', '2023-06-20'),
('henry', 'jackson', 'henry.jackson@example.com', '555-5678', '113 willow st', 'las vegas', 'usa', '2023-04-25'),
('isabella', 'white', 'isabella.white@example.com', '555-6789', '114 maple st', 'detroit', 'usa', '2023-03-12'),
('charles', 'lee', 'charles.lee@example.com', '555-7890', '115 cedar st', 'salt lake city', 'usa', '2023-02-02'),
('amelia', 'walker', 'amelia.walker@example.com', '555-8901', '116 birch st', 'charlotte', 'usa', '2023-01-10'),
('samuel', 'young', 'samuel.young@example.com', '555-9012', '117 spruce st', 'orlando', 'usa', '2023-11-01');

-- Products table
create table products (
    product_id serial primary key,
    name varchar(100),
    category varchar(50),
    price decimal(10, 2),
    stock_quantity int
);

insert into products (name, category, price, stock_quantity)
values
('laptop', 'electronics', 1200.99, 50),
('smartphone', 'electronics', 799.99, 150),
('desk chair', 'furniture', 250.00, 100),
('coffee maker', 'appliances', 99.99, 200),
('headphones', 'electronics', 150.00, 80),
('led tv', 'electronics', 500.00, 40),
('couch', 'furniture', 800.00, 30),
('microwave', 'appliances', 120.00, 60),
('refrigerator', 'appliances', 1500.00, 10),
('dining table', 'furniture', 400.00, 20),
('keyboard', 'electronics', 50.00, 120),
('printer', 'electronics', 120.00, 60),
('blender', 'appliances', 85.00, 50),
('toaster', 'appliances', 40.00, 200),
('gaming console', 'electronics', 450.00, 40),
('washing machine', 'appliances', 700.00, 20),
('sofa bed', 'furniture', 600.00, 25),
('vacuum cleaner', 'appliances', 180.00, 50),
('monitor', 'electronics', 250.00, 90),
('desk lamp', 'furniture', 75.00, 150);

-- Orders table
create table orders (
    order_id serial primary key,
    customer_id int references customers(customer_id),
    order_date date,
    total_amount decimal(10, 2)
);

insert into orders (customer_id, order_date, total_amount)
values
(1, '2023-01-20', 1500.00),
(2, '2023-02-15', 800.00),
(3, '2023-03-25', 1200.00),
(4, '2023-01-30', 250.00),
(5, '2023-04-10', 700.00),
(6, '2023-05-20', 900.00),
(7, '2023-06-10', 600.00),
(8, '2023-05-05', 1350.00),
(9, '2023-07-01', 400.00),
(10, '2023-06-15', 550.00),
(11, '2023-08-10', 1200.00),
(12, '2023-07-25', 750.00),
(13, '2023-09-01', 950.00),
(14, '2023-07-30', 1800.00),
(15, '2023-10-10', 300.00),
(16, '2023-11-01', 1300.00),
(17, '2023-09-12', 650.00),
(18, '2023-08-25', 1000.00),
(19, '2023-10-05', 750.00),
(20, '2023-11-05', 1100.00);

-- Employees table
create table employees (
    employee_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    job_title varchar(100),
    hire_date date,
    salary decimal(10, 2)
);

insert into employees (first_name, last_name, job_title, hire_date, salary)
values
('sarah', 'kim', 'sales manager', '2020-01-15', 60000),
('mark', 'lee', 'developer', '2021-02-01', 70000),
('lucy', 'chen', 'data analyst', '2022-03-10', 55000),
('david', 'martin', 'marketing coordinator', '2020-04-15', 48000),
('emily', 'garcia', 'hr manager', '2021-05-10', 65000),
('daniel', 'taylor', 'designer', '2020-08-05', 62000),
('hannah', 'moore', 'product manager', '2019-11-12', 75000),
('tyler', 'jones', 'developer', '2022-07-01', 71000),
('amy', 'wilson', 'operations manager', '2021-09-03', 70000),
('michael', 'martinez', 'finance analyst', '2019-10-25', 67000),
('jessica', 'clark', 'customer support', '2021-01-17', 45000),
('james', 'rodriguez', 'developer', '2020-03-20', 68000),
('laura', 'lee', 'sales associate', '2021-04-10', 40000),
('kevin', 'white', 'network engineer', '2020-12-02', 75000),
('karen', 'brown', 'product designer', '2022-01-18', 72000),
('jack', 'davis', 'marketing specialist', '2021-06-25', 55000),
('chloe', 'garcia', 'hr coordinator', '2020-05-30', 49000),
('william', 'adams', 'business analyst', '2021-08-15', 62000),
('madeline', 'young', 'quality assurance', '2019-09-10', 54000),
('george', 'harris', 'security officer', '2020-11-05', 43000);


-- List of all Customers
select * from customers;

-- List of Products in the Electronics Category
select * from products
where category = 'electronics';

-- Find Products with Low Stock (Less than 20 units)
select name, stock_quantity from products
where stock_quantity < 20;

-- Top 5 Most Expensive Products
select name, price from products
order by price desc limit 5;

-- Employees and Their Job Titles
select first_name, last_name, job_title from employees;

-- Total Salary Expense for All Employees
select sum(salary) as total_salary_expense from employees;

-- Employees with a Salary Greater Than $60,000
select first_name, last_name, salary
from employees
where salary > 60000;

-- Total Amount Spent by Each Customer (Bar Chart)
select c.first_name, c.last_name, sum(o.total_amount) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id
order by total_spent desc;

-- Monthly Sales Revenue (Line Chart)
select to_char(order_date, 'YYYY-MM') as month, sum(total_amount) as total_revenue
from orders
group by to_char(order_date, 'YYYY-MM')
order by month;

--  Number of Orders by Each Customer (Bar Chart)
select c.first_name, c.last_name, count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id
order by total_orders desc;

--  Top 5 Most Expensive Products (Bar Chart)
select name, price
from products
order by price desc limit 5;

-- Average Order Value (Single Metric / KPI)
select avg(total_amount) as avg_order_value
from orders;

-- Sales Revenue per Month (Line Chart)
select to_char(order_date, 'YYYY-MM') as month, sum(total_amount) as total_revenue
from orders
group by to_char(order_date, 'YYYY-MM')
order by month;

-- Number of Orders Each Month (Line Chart)
select to_char(order_date, 'YYYY-MM') as month, count(order_id) as total_orders
from orders
group by to_char(order_date, 'YYYY-MM')
order by month;

-- Employee Salary Distribution (Histogram)
select salary from employees;

-- Customer Distribution by Region (Pie Chart)
select city, count(customer_id) as total_customers
from customers
group by city
order by total_customers desc;

-- Employee Hiring Trends (Line Chart)
select extract(year from hire_date) as hire_year, count(employee_id) as total_hired
from employees
group by hire_year
order by hire_year;

-- Customer Count by City (Bar Chart)
select c.city, count(c.customer_id) as total_customers
from customers c
group by c.city
order by total_customers desc;

-- Total Orders and Revenue by Year (Bar Chart or Line Chart)
select extract(year from o.order_date) as year, count(o.order_id) as total_orders, sum(o.total_amount) as total_revenue
from orders o
group by year
order by year;

-- Most Common Product Categories (Pie Chart)
select p.category, count(p.product_id) as total_products
from products p
group by p.category
order by total_products desc;

-- most bought categories
select p.category as product_category, sum(o.total_amount) as total_sales
from orders o
join products p on o.total_amount between p.price * 0.5 and p.price * 2  -- Approximate logic to link orders to categories
group by p.category
order by total_sales desc limit 5;
