/* histogram */
proc univariate data=sashelp.cars;
histogram MSRP
/
normal(
mu=est
sigma=est
color=blue
w=5)
barlabel=percent
midpoints = 30000 to 200000 by 10000;
run;

/* barchart */
proc SQL;
create table demo as
select make,model,length,weight,type
from
SASHELP.CARS
where make in('Jeep','Jaguar','Audi','Kia')
;
run;

proc sgplot data=work.demo;
vbar length/group=model;
run;
quit;

/* cluster */
proc sgplot data=work.demo;
vbar length/group=make groupdisplay=cluster;
run;
 
/* stacked */ 
proc sgplot data=work.demo;
vbar length/group=make groupdisplay=stack;
run;

/* pie */
proc template;
define statgraph pie;
begingraph;
layout region;
piechart category= type /
datalabellocation=auto
categorydirection=clockwise
dataskin=sheen
dataskin=pressed
start=180 name='pie';
endlayout;
endgraph;
end;
run;
proc sgrender data=work.demo
template=pie;
run;

/* scatter plot*/

proc sgscatter data=work.demo;
plot length*weight
/datalabel=make group=type grid;
run;

proc sgscatter data=work.demo;
plot length*weight
/datalabel=make group=type ellipse=(alpha=0.05 type=predicted);
run;

proc sgscatter data=work.demo;
matrix length weight
/group=make;

