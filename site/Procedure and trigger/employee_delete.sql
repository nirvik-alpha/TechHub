CREATE OR REPLACE PROCEDURE employeeDelete(A1 IN int)
IS

a employee.emp_id%TYPE;
a2 employee1.emp_id%TYPE;
a3 employee2.emp_id%TYPE;


BEGIN
	select count(emp_id) into a from employee WHERE aid = A1;
	select count(emp_id) into a2 from employee1@site_link WHERE aid = A1;
	select count(emp_id) into a3 from employee2@site_link WHERE aid = A1;
	
	if a=1 then 		
		delete from employee where aid = A1;
	end if;	
	
	IF a2=1 then 		
		delete from employee1@site_link where aid = A1;
	end if;	
	
	IF a3 = 1 then
		delete from employee2@site_link where aid = A1;
	end if;
	
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('No Data Found');
			
		WHEN TOO_MANY_ROWS THEN
			DBMS_OUTPUT.PUT_LINE('Too Many Rows');
END employeeDelete;
/

----------------------------------------------------------------------------------