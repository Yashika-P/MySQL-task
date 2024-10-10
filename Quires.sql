CREATE DATABASE ecommerce;
use ecommerce;
CREATE TABLE customers(customer_id INT PRIMARY KEY auto_increment,
first_name VARCHAR(50),
email VARCHAR(100),
address VARCHAR(100)
) ENGINE = InnoDB;
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"kalai","kalai118@gmail.com","no:13 gopal nayakar street");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"nalinkumar","nalinkumar90@gmail.com","no:12 kamarajar street");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"yashika","yashika116@gmail.com","no:10 ksp mahal street");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"nivetha","nivetha78@gmail.com","no:23 rajastreet");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"alfertregan","alfertregan78@gmail.com","no:54 church street");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"harini","harini092gmail.com","no:108 school road");
INSERT INTO customers (customer_id,first_name,email,address) VALUES(NULL,"akaash","akaash09@gmail.com","no;18 thiruvika street");
SELECT * FROM customers;
CREATE TABLE products (product_id INT PRIMARY KEY,
product_name VARCHAR(100),
product_description VARCHAR(300),
price DECIMAL(10,2)
) ENGINE = InnoDB;
INSERT INTO products (product_id,product_name,product_description,price) VALUES("101","lipstick","Regular lipstick is a suitable blend of oils, fats, and waves, coated with long-lasting perfume and flavors.","200");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("102","foundataion","A foundation is a liquid, cream, or powder makeup applied to the face to make the user’s complexion even and to cover flaws.","250");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("103","shampoo","These shampoos are devoid of chemicals, parabens, and fragrances","350");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("104","eyeprotector","multifunctional eye cream brightens dark spots while also providing SPF 30 protection against sun damage","440");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("105","moisturizer","This moisturizer composes of hyaluronic acid and glycerin to help the skin look young and hydrated","500");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("106","cleanser","Our cleansers are appropriate for every skin tone and remove the bacteria, pollutants, and dirt sticking on the skin","350");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("107","exfoliator","Helps with skin cell turnover","700");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("108","face serum","Concentrated solution with active ingredients","560");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("109","face oil","Hydrates and nourishes the skin","200");
INSERT INTO products (product_id,product_name,product_description,price) VALUES("110","sunscreen","Protects against UV damage","150");
SELECT * FROM products;
CREATE TABLE orders(order_id INT PRIMARY KEY,
customer_id INT,
order_date VARCHAR(30),
total_amount DECIMAL(10,2),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
) ENGINE = InnoDB;
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("1","1","09/10/2024","1500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("2","2","27/08/2024","2500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("3","3","12/10/2024","3000");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("4","4","25/04/2024","1700");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("5","5","11/10/2024","2800");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("6","6","05/10/2024","560");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("7","7","23/08/2024","8900");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("8","8","06/04/2024","1250");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("9","9","14/08/2024","6450");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("10","10","30/10/2024","2450");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("11","11","16/10/2024","1340");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("12","12","23/08/2024","6500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("13","13","27/04/2024","1900");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("14","14","13/04/2024","6500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("15","15","29/10/2024","4500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("16","16","10/10/2024","1800");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("17","17","19/08/2024","2450");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("18","18","25/08/2024","5420");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("19","19","03/08/2024","1500");
INSERT INTO orders(order_id,customer_id,order_date,total_amount) VALUES("20","20","02/08/2024","6000");
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM products LIMIT 5;
SELECT orders.order_id, customers.customer_name, orders.order_date
FROM orders
INNER JOIN customers ON orders.customer_id=customers.customer_id;
SELECT AVG(Price)
FROM Products;




 