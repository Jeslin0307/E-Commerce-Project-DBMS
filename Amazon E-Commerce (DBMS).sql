CREATE DATABASE amazon;
USE amazon;

CREATE TABLE Customer (
    C_id INT PRIMARY KEY,
    C_name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(20) UNIQUE,
    address VARCHAR(100)
);

DESC Customer;

INSERT INTO Customer(C_id, C_name, email, phone, address)
VALUES
(101, 'Walsh', 'walsh@gmail.com', '1357924680', 'street1'),
(102, 'Jeslin', 'jeslin@gmail.com', '2468013579', 'street2');

INSERT INTO Customer(C_id, C_name, email, phone, address)
VALUES
(103, 'Joia', 'joia@gmail.com', '1256903478', 'street3');

INSERT INTO Customer(C_id, C_name, email, phone, address)
VALUES
(104, 'Augustine', 'august@gmail.com', '3478125690', 'street4');

ALTER TABLE Customer
ADD PRIMARY KEY (C_id);

UPDATE Customer
SET address = 'street1'
WHERE C_id = 101;

DELETE FROM Customer
WHERE C_id = 103;

SELECT * FROM Customer;