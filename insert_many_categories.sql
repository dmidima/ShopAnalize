-- ВСТАВКА: клиенты, которые покупают в нескольких категориях
INSERT INTO retail_transactions (transaction_id, date, customer_id, gender, age, product_category, quantity, price_per_unit, total_amount) VALUES

-- CUST999 (Female, 30) - покупает и Beauty, и Clothing, и Electronics
('9001', '2024-01-15', 'CUST999', 'Female', 30, 'Beauty', 2, 50, 100),
('9002', '2024-01-20', 'CUST999', 'Female', 30, 'Clothing', 1, 500, 500),
('9003', '2024-01-25', 'CUST999', 'Female', 30, 'Electronics', 1, 300, 300),

-- CUST998 (Male, 25) - покупает Beauty и Clothing
('9004', '2024-01-10', 'CUST998', 'Male', 25, 'Beauty', 3, 50, 150),
('9005', '2024-01-18', 'CUST998', 'Male', 25, 'Clothing', 2, 300, 600),

-- CUST997 (Female, 40) - покупает Electronics и Beauty
('9006', '2024-01-05', 'CUST997', 'Female', 40, 'Electronics', 2, 500, 1000),
('9007', '2024-01-12', 'CUST997', 'Female', 40, 'Beauty', 4, 50, 200),

-- CUST996 (Male, 35) - покупает Clothing и Electronics
('9008', '2024-01-08', 'CUST996', 'Male', 35, 'Clothing', 3, 300, 900),
('9009', '2024-01-22', 'CUST996', 'Male', 35, 'Electronics', 1, 500, 500),

-- CUST995 (Female, 28) - покупает все три категории
('9010', '2024-01-03', 'CUST995', 'Female', 28, 'Beauty', 2, 25, 50),
('9011', '2024-01-14', 'CUST995', 'Female', 28, 'Clothing', 4, 50, 200),
('9012', '2024-01-28', 'CUST995', 'Female', 28, 'Electronics', 2, 300, 600),

-- CUST994 (Male, 45) - покупает Beauty и Electronics
('9013', '2024-01-07', 'CUST994', 'Male', 45, 'Beauty', 3, 300, 900),
('9014', '2024-01-21', 'CUST994', 'Male', 45, 'Electronics', 2, 500, 1000),

-- CUST993 (Female, 22) - покупает Clothing и Beauty
('9015', '2024-01-11', 'CUST993', 'Female', 22, 'Clothing', 2, 500, 1000),
('9016', '2024-01-26', 'CUST993', 'Female', 22, 'Beauty', 4, 30, 120),

-- CUST992 (Male, 50) - покупает Electronics и Clothing
('9017', '2024-01-02', 'CUST992', 'Male', 50, 'Electronics', 3, 300, 900),
('9018', '2024-01-19', 'CUST992', 'Male', 50, 'Clothing', 2, 500, 1000),

-- CUST991 (Female, 33) - покупает Beauty, Clothing, Electronics (все три)
('9019', '2024-01-09', 'CUST991', 'Female', 33, 'Beauty', 1, 500, 500),
('9020', '2024-01-16', 'CUST991', 'Female', 33, 'Clothing', 3, 50, 150),
('9021', '2024-01-30', 'CUST991', 'Female', 33, 'Electronics', 2, 300, 600),

-- CUST990 (Male, 27) - покупает Beauty и Clothing
('9022', '2024-01-13', 'CUST990', 'Male', 27, 'Beauty', 4, 50, 200),
('9023', '2024-01-27', 'CUST990', 'Male', 27, 'Clothing', 1, 500, 500);