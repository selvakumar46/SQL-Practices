set serverout on
begin 
for val in 1..10
loop
if mod(val,2)=0 then
dbms_output.put_line(val);
end if;
end loop;
end;
/



declare 
num1 number:=&number;
num2 number:=&number;
begin
if (num1>num2)then
dbms_output.put_line
else

-------------------------------------------------------------------------------
--for loop
begin
for val in 1..10
loop
if mod(val,2)=0 then
dbms_output.put_line(val);
end if;
end loop;
end;
/
--------------------------------------------------------------------------------
declare
s_id newTable.id%type := 2903;
s_name newTable.name%type;
s_dept newTable.department%type;
begin
select name,department into s_name,s_dept 
from newTable where newTable.id=s_id;
dbms_output.put_line('Name of student is '||s_name);
dbms_output.put_line('Department of student is '||s_dept);
exception
when no_data_found then
dbms_output.put_line('No such student');
when others then
dbms_output.put_line('Invalid choice');
end;
/











--------------------------------------------------
DECLARE
    l_ename emp.ENAME%TYPE;
    l_emp_id emp.emp_id%TYPE := &employee_id;
BEGIN
    -- get the employee name by id
    SELECT ename INTO l_ename
    FROM emp
    WHERE emp_id = l_emp_id;
    -- show the employee name   
    dbms_output.put_line('Employee name is ' || l_ename);
END;
/
DECLARE
    l_ename emp.ENAME%TYPE;
    l_emp_id emp.emp_id%TYPE := &employee_id;
BEGIN
    -- get the employee name by id
    SELECT ename INTO l_ename
    FROM emp
    WHERE emp_id = l_emp_id;

    -- show the employee name   
    dbms_output.put_line('Employee name is ' || l_ename);
 
EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('employee ' || l_emp_id ||  ' does not exist');
			
END;
/
more than one employee'); 
END;
/


-------------------------------------------------------------------------------------------------------------
-


Declare
v_deptno Emp.deptno%type;
v_empno Emp.empno%type;
v_ename  Emp.ename%type;
v_sal        Emp.sal%type;

CURSOR Emp_cursor IS
SELECT Empno, ename , Salary FROM emp
WHERE deptno = v_deptno;
BEGIN
        V_deptno := &deptno;
        OPEN Emp_cursor;
LOOP
FETCH emp_cursor INTO v_empno, v_ename,v_sal;
EXIT WHEN emp_cursor%ROWCOUNT > 5 OR emp_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_empno ||’-’|| v_ename ||’-’||v_sal);

END LOOP;

/
CLOSE emp_cursor;
END;
QL%ROWCOUNT ||' row deleted.');
End;




