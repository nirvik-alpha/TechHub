
DROP TABLE product1 CASCADE CONSTRAINTS;
DROP TABLE branch1 CASCADE CONSTRAINTS;
DROP TABLE customer1 CASCADE CONSTRAINTS;
DROP TABLE orders1 CASCADE CONSTRAINTS;
DROP TABLE employee1 CASCADE CONSTRAINTS;
DROP TABLE payment1 CASCADE CONSTRAINTS;


CREATE TABLE product1(
    product_id int,
	product_name varchar(30),
	price number,
	product_type varchar(15),
	quantity int,
	PRIMARY KEY(product_id)
);

CREATE TABLE branch1(
   branch_id int,
   branch_name varchar(15),
   branch_address varchar(80),
   PRIMARY KEY(branch_id)
);

CREATE TABLE customer1(
    customer_id int,
	customer_name varchar(15),
	customer_address varchar(15),
	customer_phone number,
	branch_id int,
	PRIMARY KEY(customer_id),
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE orders1(
    order_id int,
	order_date varchar(20),
	order_quantity int,
	order_type varchar(15),
	customer_id int,
	product_id int,
	branch_id int,
	PRIMARY KEY(order_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(product_id) REFERENCES product(product_id),
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
);


CREATE TABLE employee1(
   emp_id int,
   emp_name varchar(15),
   emp_address varchar(80),
   emp_pay number,
   emp_offday int,
   emp_workhour int,
   PRIMARY KEY(emp_id)
);

CREATE TABLE payment1(
    order_id int,
	discount int,
	due_money int,
	final_price int,
	payment_date varchar(20),
	FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

commit;

/*

insert into branch(branch_id,branch_name,branch_address) values(1,'mohammadpur','3/7 Jamal Super Market, 97 Shaheb Bazar.');
insert into branch(branch_id,branch_name,branch_address) values(2,'Uttara','36 Sonargaon Janapath, Dhaka.');
insert into branch(branch_id,branch_name,branch_address) values(3,'Agargaon','Kusholi Bhaban, 4th Floor, 238/1 Begum Rokeya Sharani,Dhaka-1207');
insert into branch(branch_id,branch_name,branch_address) values(4,'Banani','41 Kamal Ataturk Avenue, Dhaka.');



insert into customer(customer_id,customer_name,customer_address,customer_phone,customer_type,branch_id) values(1000,'Lora','Bangladesh','01679486655','Regular',1);
insert into customer(customer_id,customer_name,customer_address,customer_phone,customer_type,branch_id) values(1000,'Lora','Bangladesh','01679486655','Regular',1);
insert into customer(customer_id,customer_name,customer_address,customer_phone,customer_type,branch_id) values(1000,'Lora','Bangladesh','01679486655','Regular',1);
insert into customer(customer_id,customer_name,customer_address,customer_phone,customer_type,branch_id) values(1000,'Lora','Bangladesh','01679486655','Regular',1);
insert into customer(customer_id,customer_name,customer_address,customer_phone,customer_type,branch_id) values(1000,'Lora','Bangladesh','01679486655','Regular',1);

*/


