CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  mobile_number VARCHAR(20) NOT NULL,
  create_dt DATE DEFAULT NULL
);

CREATE TABLE accounts (
  customer_id INT NOT NULL,
  account_number INT AUTO_INCREMENT PRIMARY KEY,
  account_type VARCHAR(100) NOT NULL,
  branch_address VARCHAR(200) NOT NULL,
  create_dt DATE DEFAULT NULL
);

INSERT INTO customer(name, email, mobile_number, create_dt)
    VALUES ('Eazy Bytes', 'tutor@eazybytes.com', '9898989898', current_date());

INSERT INTO accounts(customer_id, account_number, account_type, branch_address, create_dt)
    VALUES (1, 186576453, 'Savings', '123 Main Street, New York', current_date())
