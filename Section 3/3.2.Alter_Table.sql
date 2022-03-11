USE bakery_store;

DESCRIBE products;
DESCRIBE customers;
DESCRIBE orders;

# add a column
ALTER TABLE orders
ADD COLUMN qty INT;

# drop a column
ALTER TABLE orders
DROP COLUMN qty;

#drop a primary key
ALTER TABLE products
DROP PRIMARY KEY;

# add a primary key
ALTER TABLE products
ADD PRIMARY KEY (product_id);

# add a foreign key
ALTER TABLE orders
ADD CONSTRAINT fk_productid
FOREIGN KEY(product_id) REFERENCES products(product_id);

# add a foreign key
ALTER TABLE orders
ADD CONSTRAINT fk_custid
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

# add a unique constraint
ALTER TABLE customers
ADD CONSTRAINT u_phno UNIQUE (phone_number);

# add a unique constraint
ALTER TABLE customers
ADD CONSTRAINT u_email UNIQUE (email);

# modify datatype
ALTER TABLE customers
MODIFY email char(100);

ALTER TABLE customers
MODIFY email varchar(100);

# change column name
ALTER TABLE customers
CHANGE `email` `email_address` varchar(100);



