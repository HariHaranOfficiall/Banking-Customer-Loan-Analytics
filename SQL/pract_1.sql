use locall;

-- Create Database
CREATE DATABASE CafeDB;
USE CafeDB;

-- Create Table
CREATE TABLE CafeSales (
    SaleID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ItemName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(8,2),
    PaymentMethod VARCHAR(20),
    StaffName VARCHAR(50),
    SaleDate DATE
);


INSERT INTO CafeSales VALUES
(1, 'Amit', 'Coffee', 2, 180.00, 'Cash', 'Ravi', '2025-01-01'),
(2, 'Priya', 'Tea', 1, 50.00, 'UPI', 'Anjali', '2025-01-02'),
(3, 'Rahul', 'Burger', 2, 240.00, NULL, 'Ravi', '2025-01-03'),
(4, 'Sneha', 'Pizza', NULL, 350.00, 'Card', 'Deepa', '2025-01-04'),
(5, 'Kiran', 'Sandwich', 1, NULL, 'Cash', 'Anjali', '2025-01-05'),
(6, 'Meena', 'Coffee', 3, 270.00, 'UPI', NULL, '2025-01-06'),
(7, 'Arjun', 'Tea', NULL, 100.00, 'Cash', 'Ravi', '2025-01-07'),
(8, 'Divya', 'Cake', 2, 300.00, NULL, 'Deepa', '2025-01-08'),
(9, NULL, 'Coffee', 1, 90.00, 'Card', 'Anjali', '2025-01-09'),
(10, 'Nikhil', NULL, 2, 400.00, 'Cash', 'Ravi', '2025-01-10'),
(11, 'Pooja', 'Pizza', 1, 350.00, 'UPI', NULL, '2025-01-11'),
(12, 'Ramesh', 'Burger', 2, NULL, 'Card', 'Deepa', '2025-01-12'),
(13, 'Sita', 'Tea', 4, 200.00, 'Cash', 'Anjali', NULL),
(14, 'Vijay', 'Coffee', 2, 180.00, NULL, 'Ravi', '2025-01-14'),
(15, 'Anu', 'Cake', NULL, NULL, 'UPI', 'Deepa', '2025-01-15'),
(16, NULL, 'Sandwich', 3, 450.00, 'Cash', NULL, '2025-01-16'),
(17, 'Rohan', 'Coffee', 2, 180.00, 'Card', 'Anjali', NULL),
(18, 'Kavya', NULL, 1, 120.00, 'UPI', 'Deepa', '2025-01-18'),
(19, 'Manoj', 'Pizza', 2, 700.00, NULL, 'Ravi', '2025-01-19'),
(20, 'Neha', 'Tea', NULL, 150.00, 'Cash', NULL, '2025-01-20');


select * from cafesales
where customername is not null
and itemname in('coffee','tea','pizza','burger')
and quantity >=2
and price between 150 and 500
and paymentmethod in('case','upi')
and staffname in('ravi','anjali')
and saledate between '2025-01-01' and '2025-01-15'
and customername like 'a%' or customername like 'p%'
and itemname like '%e%';


select * from cafesales
where paymentmethod is null or price is null or quantity is null
and customername is not null
and saleid >5
and itemname is not null
and staffname in('ravi','deepa');



select * from cafesales
where staffname in('ravi','deepa')
and paymentmethod is not null
and price>150
and quantity between 1 and 3
and itemname in('coffee','cake','sandwich')
and customername like "%a%"
and saledate is not null;

select * from cafesales
where price>300
and quantity >2
and itemname in('pizza','burger','cake')
and paymentmethod in('cash','card','upi')
and customername is not null and staffname is not null
and saledate between '2025-01-05' and '2025-01-20';


select * from cafesales
where customername like 's%' or customername like 'r%'
and itemname in('coffee','tea')
and price between 100 and 300
and quantity >1
and paymentmethod in('card','upi')
and staffname is not null and saledate is not null;

-- 1.Premium Sales Report



