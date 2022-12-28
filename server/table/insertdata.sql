

DROP SEQUENCE system.product_sequence; 
DROP SEQUENCE system.branch_sequence; 
DROP SEQUENCE system.customer_sequence; 
DROP SEQUENCE system.orders_sequence; 
DROP SEQUENCE system.employee_sequence; 
DROP SEQUENCE system.payment_sequence; 

	
Create sequence product_sequence1 start with 1
increment by 1
minvalue 1
maxvalue 10000;

Create sequence product_sequence2 start with 1
increment by 1
minvalue 1
maxvalue 10000;

	
Create sequence customer_sequence1 start with 2001
increment by 1
minvalue 2001
maxvalue 10000;

Create sequence customer_sequence2 start with 2001
increment by 1
minvalue 2001
maxvalue 10000;


Create sequence orders_sequence start with 3001
increment by 1
minvalue 3001
maxvalue 10000;

Create sequence employee_sequence start with 4001
increment by 1
minvalue 4001
maxvalue 10000;


Create sequence payment_sequence start with 3001
increment by 1
minvalue 3001
maxvalue 50000;


insert into product(product_id,product_name,price,product_type,quantity) values(product_sequence1.nextval,'lenovo',50000,'laptop',10);
insert into product(product_id,product_name,price,product_type,quantity) values(product_sequence1.nextval,'asus ',55000,'laptop',8);
insert into product(product_id,product_name,price,product_type,quantity) values(product_sequence1.nextval,'acer',57000,'laptop',7);


insert into branch(branch_id,branch_name,branch_address) values(1,'IDB','3/7 Jamal Super Market, 97 Shaheb Bazar.');
insert into branch(branch_id,branch_name,branch_address) values(2,'Multiplan','36 Sonargaon Janapath, Dhaka.');


insert into customer(customer_id,customer_name,customer_address,customer_phone) values(customer_sequence1.nextval,'rafid','Dhanmondi','01679486655');
insert into customer(customer_id,customer_name,customer_address,customer_phone) values(customer_sequence1.nextval,'sakib','Gulshan','01679486655');
insert into customer(customer_id,customer_name,customer_address,customer_phone) values(customer_sequence1.nextval,'rahat','Banani','01679486655');
insert into customer(customer_id,customer_name,customer_address,customer_phone) values(customer_sequence1.nextval,'safin','Modhubag','01679486655');


insert into employee(emp_id,emp_name,emp_address,emp_pay,emp_offday,emp_workhour) values(employee_sequence.nextval,'jalil','Dhaka','30000',2,5);
insert into employee(emp_id,emp_name,emp_address,emp_pay,emp_offday,emp_workhour) values(employee_sequence.nextval,'fahim','sylhet','35000',2,5);
insert into employee(emp_id,emp_name,emp_address,emp_pay,emp_offday,emp_workhour) values(employee_sequence.nextval,'saud','Barisal','25000',2,5);


insert into orders(order_id,order_date,order_quantity,order_type,customer_id, product_id, branch_id) values(orders_sequence.nextval,'5.10.2022',2,'online',customer_sequence2.nextval, product_sequence2.nextval,1);
insert into orders(order_id,order_date,order_quantity,order_type,customer_id, product_id, branch_id) values(orders_sequence.nextval,'7.10.2022',3,'offline',customer_sequence2.nextval,product_sequence2.nextval,2);
insert into orders(order_id,order_date,order_quantity,order_type,customer_id, product_id, branch_id) values(orders_sequence.nextval,'6.10.2022',4,'online',customer_sequence2.nextval, product_sequence2.nextval,1);


insert into payment(order_id,discount,due_money,final_price,payment_date) values(payment_sequence.nextval,10,4000,10000,'20.12.2022');
insert into payment(order_id,discount,due_money,final_price,payment_date) values(payment_sequence.nextval,11,3000,15000,'20.12.2022');
insert into payment(order_id,discount,due_money,final_price,payment_date) values(payment_sequence.nextval,6,4500,20000,'20.12.2022');

commit;