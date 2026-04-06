CREATE TABLE retail_transactions (
    transaction_id VARCHAR(50),
    date DATE,
    customer_id VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    product_category VARCHAR(100),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    total_amount NUMERIC(10,2)
);