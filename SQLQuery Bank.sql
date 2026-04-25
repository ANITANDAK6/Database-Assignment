/*
CREATE DATABASE Bank;
GO
USE Bank;
*/



DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Accounts ;
DROP TABLE IF EXISTS Products;

CREATE TABLE Users(Id INT PRIMARY KEY,user_name VARCHAR(20), user_phone_number VARCHAR(30),email VARCHAR(50), address VARCHAR(100), age INT,NIN VARCHAR(20) );
CREATE TABLE Accounts(Id INT PRIMARY KEY,account_name VARCHAR(30),account_number VARCHAR(20),account_type VARCHAR(20),account_balance DECIMAL );
CREATE TABLE Products (Id INT PRIMARY KEY,product_name VARCHAR(20),product_description VARCHAR(50),card_number VARCHAR(20),bank_name VARCHAR(20),card_holder_name VARCHAR(40),pin VARCHAR(4),expiry_date DATE );

USE Bank;
GO

INSERT INTO Users (id, user_name, user_phone_number, email, address, age, NIN)
VALUES
(1, 'John Doe', '08012345678', 'john@email.com', 'Lagos', 28, '123456789101'),
(2, 'Alice Sam', '08023456789', 'alice@email.com', 'Abuja', 32, '234567891011'),
(3, 'Bob Smith', '08034567890', 'bob@email.com', 'Kano', 45, '4567890111'),
(4, 'Maria john', '08045678901', 'maria@email.com', 'Ibadan', 22, '456789011213'),
(5, 'Jame ibok', '08056789012', 'james@email.com', 'Port Harcourt', 35, '567890121314'),
(6, 'victoria', '08067890123', 'victoria@email.com', 'Enugu', 29, '678901231415'),
(7, 'David Obi', '08078901234', 'david@email.com', 'Benin City', 41, '789012341415'),
(8, 'Abasiama Christ', '08089012345', 'Abasiama@email.com', 'Kaduna', 26, '890123451617'),
(9, 'Emmanuel Udoka', '08090123456', 'Emmanuel@email.com', 'Owerri', 38, '901234561819'),
(10, 'Victor Ita', '08001234567', 'victor@email.com', 'Abeokuta', 31, '012345671819');

SELECT * FROM users;


UPDATE users
SET user_phone_number = '08099999999'
WHERE id = 1;

DELETE FROM users
WHERE id = 1;


INSERT INTO Accounts(id, account_number, account_name, account_type, account_balance)
VALUES
(1, '0123456789', 'John Doe', 'Savings', 50000.00),
(2, '0234567890', 'Alice Sam', 'Current', 120000.00),
(3, '0345678901', 'Bob Smith', 'Savings', 75000.00),
(4, '0456789012', 'Maria John', 'Fixed Deposit', 200000.00),
(5, '0567890123', 'James Ibok', 'Savings', 35000.00),
(6, '0678901234', 'Victoria', 'Current', 90000.00),
(7, '0789012345', 'David Obi', 'Savings', 15000.00),
(8, '0890123456', 'Abasiama Christ', 'Current', 250000.00),
(9, '0901234567', 'Emmanuel Udoka', 'Savings', 60000.00),
(10, '0012345678', 'Victor Ita', 'Fixed Deposit', 500000.00);

SELECT * FROM accounts;

UPDATE accounts
SET account_balance = 75000.00
WHERE id = 1;

DELETE FROM accounts
WHERE id = 1;



INSERT INTO Products (id, product_name, product_description, card_number, bank_name, card_holder_name, pin, expiry_date)
VALUES
(1, 'ATM Card', 'Debit Card', '1234567890123456', 'First Bank', 'John Doe', '1234', '2027-12-31'),
(2, 'ATM Card', 'Credit Card', '2345678901234567', 'GTBank', 'Alice Sam', '2345', '2026-11-30'),
(3, 'ATM Card', 'Debit Card', '3456789012345678', 'Access Bank', 'Bob Smith', '3456', '2028-10-31'),
(4, 'ATM Card', 'Credit Card', '4567890123456789', 'Zenith Bank', 'Maria John', '4567', '2027-09-30'),
(5, 'ATM Card', 'Debit Card', '5678901234567890', 'UBA', 'James Ibok', '5678', '2026-08-31'),
(6, 'ATM Card', 'Debit Card', '6789012345678901', 'First Bank', 'Victoria', '6789', '2028-07-31'),
(7, 'ATM Card', 'Debit Card', '7890123456789012', 'GTBank', 'David Obi', '7890', '2027-06-30'),
(8, 'ATM Card', 'Credit Card', '8901234567890123', 'Access Bank', 'Abasiama Christ', '8901', '2026-05-31'),
(9, 'ATM Card', 'Debit Card', '9012345678901234', 'Zenith Bank', 'Emmanuel Udoka', '9012', '2028-04-30'),
(10, 'ATM Card', 'Credit Card', '0123456789012345', 'UBA', 'Victor Ita', '0123', '2027-03-31');

SELECT * FROM products;

UPDATE products
SET expiry_date = '2029-12-31'
WHERE id = 1;

DELETE FROM products
WHERE id = 1;








