SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE mypack AS

	FUNCTION check_payment(A1 IN Integer)
	RETURN Integer;
END mypack;
/

CREATE OR REPLACE PACKAGE BODY mypack AS

	FUNCTION check_payment(A1 IN Integer)
	RETURN Integer
	IS 
	
	b Integer;
	
	BEGIN
		select emp_pay into b from employee where emp_id = A1;
		return b;
	END check_payment;
	
END mypack;
/


accept x number prompt 'Please enter employee id to check payment: '

DECLARE
	D Integer;
BEGIN
	D := &x;
	D := mypack.check_payment(D);
	DBMS_OUTPUT.PUT_LINE('Your payment is : '||D);
	
	EXCEPTION 
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Not Found');

END;
/
