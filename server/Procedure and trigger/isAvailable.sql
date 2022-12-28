SET SERVEROUTPUT ON;
DROP PROCEDURE OrderEligibility;

create or replace procedure OrderEligibility(A in int)

	IS
	
	quan int;
	oquan int;
	
	quan1 int;
	quan2 int;
	
	quan3 int;
	quan4 int;
----------------------------------------------------------------------------------



BEGIN
	
		
		SELECT quantity into quan from product where product_id = A;
		SELECT order_quantity into oquan from orders where product_id = A;
		
		IF quan = 0
		
			then DBMS_OUTPUT.PUT_LINE('out of stock');
		
		elsif
			oquan > quan or oquan=quan  then DBMS_OUTPUT.PUT_LINE('in sufficient in stock please wait some moment');
			
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			DBMS_OUTPUT.PUT_LINE('taking product from warhouse');
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			
			update product set quantity = (oquan + 1) where product_id = A;
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
			
		ELSE
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
		end if;
		



-------------------------------------------------------------------------------------------

	/*
		
		SELECT quantity into quan1 from product1@site_link where product_id = A;
		SELECT order_quantity into quan2 from orders1@site_link where product_id = A;
		
		IF quan1 = 0
		
			then DBMS_OUTPUT.PUT_LINE('out of stock');
		
		elsif
			quan2 > quan1 or quan2=quan1  then DBMS_OUTPUT.PUT_LINE('in sufficient in stock please wait some moment');
			
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			DBMS_OUTPUT.PUT_LINE('taking product from warhouse');
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			
			update product1@site_link set quantity = (quan2 + 1) where product_id = A;
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
			
		ELSE
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
		end if;
		
-----------------------------------------------------------------------------------------------------



		SELECT quantity into quan3 from product2@site_link where product_id = A;
		SELECT order_quantity into quan4 from orders2@site_link where product_id = A;
		
		IF quan3 = 0
		
			then DBMS_OUTPUT.PUT_LINE('out of stock');
		
		elsif
			(quan4 > quan3) or (quan4=quan3)  then DBMS_OUTPUT.PUT_LINE('in sufficient in stock please wait some moment');
			
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			DBMS_OUTPUT.PUT_LINE('taking product from warhouse');
			
			DBMS_OUTPUT.PUT_LINE('.....................');
			DBMS_OUTPUT.PUT_LINE('........................');
			DBMS_OUTPUT.PUT_LINE('...........................');
			
			
			update product2@site_link set quantity = (quan4 + 1) where product_id = A;
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
			
		ELSE
			
			DBMS_OUTPUT.PUT_LINE('Your order has been placed thank you!');
		end if;
		*/
	
end OrderEligibility;
/
	

BEGIN

	OrderEligibility(101);


end;
/