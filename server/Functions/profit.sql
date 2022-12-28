
set serveroutput on;
drop FUNCTION checkProfit;
CREATE OR REPLACE FUNCTION checkProfit
return Integer
IS
	sum1 int :=0;
	sum2 int :=0;
	
	x int;
	y int;

Begin

	FOR R IN (SELECT final_price from payment) LOOP
		
		sum1:= sum1 + R.final_price;
		
	END LOOP;
	
	
	FOR R IN (SELECT emp_pay from employee) LOOP
		
		sum2:= sum2+ R.emp_pay;
	
	END LOOP;
	


x := sum1 - sum2;
y := sum2 - sum1;


if	sum1 > sum2 THEN
	DBMS_OUTPUT.PUT_LINE('Profit: ' || x);
	return x;
ELSE
	DBMS_OUTPUT.PUT_LINE('loss: ' || y);
	return y;
	
end if;

END checkProfit;
/

DECLARE
 b int;
BEGIN
	
	b := checkProfit;
	
	
end;
/