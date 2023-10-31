data st;
input id name $ mlat domain$;
datalines;
1 janani 8 it
1 varshitha 8 ece
3 shruthi 7 bcom
;
run;

proc sql;
create table student as 
select * from st;
quit;

proc print data=student;
run;

proc sql;
select * from student;
quit;

proc sql;
select name,mlat from student;
quit;

proc sql;
select make,type,origin
from
SASHELP.CARS
;
quit;

proc sql;
create table coach as
select 
id as student_id,
name as student_name,
mlat*0.2 as mlat_test
from student;
quit;

proc sql;
update student
set mlat=mlat*0.2;
quit;



proc print data=student;
run;