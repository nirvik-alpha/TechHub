--clear screen;

set serveroutput on;
set verify off;

----------------------------------------------

declare

-----------for product table-----------------
	pid    product.product_id%TYPE;
	pname  product.product_name%TYPE;
	prc    product.price%TYPE;
	pt     product.product_type%TYPE;
	qn     product.quantity%TYPE;

	
	
BEGIN

---------------product------------

	DBMS_OUTPUT.PUT_LINE('product id'||'  '||'product name'||'  ' || 'price'||'  ' || 'product_type' ||'  ' || 'quantity');
	
	FOR R IN (SELECT product_id, product_name, price, product_type,quantity  from product) LOOP
	  pid   := R.product_id;
	  pname := R.product_name; 
	  prc   := R.price;
	  pt    := R.product_type;
	  qn    := R.quantity;
	  
	  
	  
	  DBMS_OUTPUT.PUT_LINE(pid ||'  '|| pname||'  '|| prc ||'  '|| pt  ||'  '|| qn );
	  
	  
	END LOOP;
END;
/


declare
	cid   customer.customer_id%TYPE;
	cname customer.customer_name%TYPE;
	cadd  customer.customer_address%TYPE;
	cphn  customer.customer_phone%TYPE;
	
	
	

BEGIN

---------------Customer------------

	DBMS_OUTPUT.PUT_LINE('Customer id'||'  '||'customer name'||'  ' || 'customer address'||'  ' || 'phone' );
	
	FOR R IN (SELECT customer_id, customer_name, customer_address, customer_phone from customer) LOOP
	  cid   := R.customer_id;
	  cname := R.customer_name; 
	  cadd   := R.customer_address;
	  cphn    := R.customer_phone;
	
	  
	  
	  DBMS_OUTPUT.PUT_LINE(cid ||'  '|| cname||'  '|| cadd ||'  '|| cphn);
	  
	  
	END LOOP;
END;
/

declare
	oid   	orders.order_id%TYPE;
	odate 	orders.order_date%TYPE;
	oq   	orders.order_quantity%TYPE;
	otyp  	orders.order_type%TYPE;
	ciddd	orders.customer_id%TYPE;
	piddd	orders.product_id%TYPE;
	biddd	orders.branch_id%TYPE;

BEGIN

---------------Order------------

	DBMS_OUTPUT.PUT_LINE('order id'||'  '||'order date'||'  ' || 'order quantity'||'  ' || 'order type' ||'  '|| 'customer_id' ||'  ' || 'product_id' ||' '|| 'branch_id' );
	
	FOR R IN (SELECT order_id, order_date, order_quantity, order_type, customer_id, product_id, branch_id   from orders) LOOP
	  oid      := R.order_id;
	  odate    := R.order_date; 
	  oq       := R.order_quantity;
	  otyp     := R.order_type;
	  ciddd    := R.customer_id;
	  piddd    := R.product_id;
	  biddd    := R.branch_id;
	  
	  
	  DBMS_OUTPUT.PUT_LINE(oid ||'  '|| odate||'  '|| oq ||'  '|| otyp ||'  '|| ciddd ||' '||piddd || ' '||biddd);
	  
	  
	END LOOP;
END;
/

declare
	bid   branch.branch_id%TYPE;
	bname branch.branch_name%TYPE;
	badd  branch.branch_address%TYPE;
	

BEGIN

---------------branch------------

	DBMS_OUTPUT.PUT_LINE('branch id'||'  '||'branch name'||'  ' || 'branch address' );
	
	FOR R IN (SELECT branch_id, branch_name, branch_address  from branch) LOOP
	  bid   := R.branch_id;
	  bname := R.branch_name; 
	  badd  := R.branch_address;
	   
	  DBMS_OUTPUT.PUT_LINE(bid ||'  '|| bname||'  '|| badd);
	  
	  
	END LOOP;
END;
/


declare
	emd 	employee.emp_id%TYPE;
	ename 	employee.emp_name%TYPE;
	eadd 	employee.emp_address%TYPE;
	epay 	employee.emp_pay%TYPE;
	eoff 	employee.emp_offday%TYPE;
	ework 	employee.emp_workhour%TYPE;
	
BEGIN

---------------employee------------

	DBMS_OUTPUT.PUT_LINE('employee id'||'  '||'employee name'||'  ' || 'employee address' ||' '|| 'payment'||'  '||'offday'||'  ' || 'workhour' );
	
	FOR R IN (SELECT emp_id, emp_name, emp_address , emp_pay , emp_offday , emp_workhour from employee) LOOP
	  emd   := R.emp_id;
	  ename := R.emp_name; 
	  eadd  := R.emp_address;
	  epay   := R.emp_pay;
	  eoff := R.emp_offday; 
	  ework  := R.emp_workhour;
	   
	  DBMS_OUTPUT.PUT_LINE(emd ||'  '|| ename||'  '|| eadd || ' '|| epay ||'  '|| eoff||'  '|| ework);
	  
	  
	END LOOP;
END;
/




declare
	oidd  	payment.order_id%TYPE;
	dis   	payment.discount%TYPE;
	due   	payment.due_money%TYPE;
	fprice  payment.final_price%TYPE;
	pdate  	payment.payment_date%TYPE;

BEGIN

---------------payment------------

	DBMS_OUTPUT.PUT_LINE('OrderID'||' '|| 'discount'||'  ' || 'due_money' ||' '|| 'final_price'||'  '||'payment_date');
	
	FOR R IN (SELECT order_id, discount, due_money , final_price , payment_date from payment) LOOP
	
	  oidd 	 	:= R.order_id;
	  dis  		:= R.discount; 
	  due  		:= R.due_money;
	  fprice   	:= R.final_price;
	  pdate 	:= R.payment_date; 
	   
	  DBMS_OUTPUT.PUT_LINE( oidd ||' '|| dis||'  '|| due || ' '|| fprice ||'  '|| pdate);
	  
	  
	END LOOP;
END;
/
