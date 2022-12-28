SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
a employee.emp_id%TYPE:=&X;
b employee.emp_name%TYPE:='&X';
c employee.emp_address%TYPE:='&X';
d employee.emp_pay%TYPE:='&X';
e employee.emp_offday%TYPE:='&X';
f employee.emp_workhour%TYPE:='&X';

BEGIN

INSERT INTO employee VALUES(a,b,c,d,e,f);


END;
/

CREATE OR REPLACE TRIGGER inserted 
AFTER INSERT
ON employee
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted successfully !');
END;
/

