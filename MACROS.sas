/* GLOBAL MACROS */
proc print data=sashelp.cars;
where make='Audi' and type = "Sedan";
title "Sales for &sysdate9 &sysday";
run;

*/ let */
%let make_name="Audi";
%let type_n="Sedan";
proc print data=Sashelp.cars;
where make=&make_name and type=&type_n;
Title "Sale for &sysdate &sysday";
run;

/* user created*/
%macro sr(maken,typen);
proc print data=sashelp.cars;
where make="&maken" and type="&typen";
title "sales for &sysdate and sysday";
run;
%MEND;

%sr(BMW,Sports)
%sr(Audi,Sedan)

/* return */
%macro cc(val);
%if &val = 10 %then %return;
data p;
x=22.3;
run;
%mend cc;
%cc(12);

data an;
call symput('today',
TRIM(put("&sysdate"d,worddate22.)));
run;

%PUT &today;


/*date format*/
data dt;
input @1 d1 mmddyy10. @12 d2 mmddyy10.;
format d1 date11. d2 worddate22.;
datalines;
10/23/2023 11/28/2023
;
proc print data=dt;
run;

data dt;
input @1 d1 mmddyy10. @12 d2 mmddyy10.;
format d1 mmddyy10. d2 mmddyy8.;
datalines;
10/23/2023 11/28/2023
;
proc print data=dt;
run;

data dt;
input @1 d1 mmddyy10. @12 d2 mmddyy10.;
format d1 date11. d2 worddate20.;
datalines;
10/23/2023 11/28/2023
;
proc print data=dt;
run;

data dt;
input @1 d1 mmddyy10. @12 d2 mmddyy10.;
format d1 anydtdte15. d2 worddate20.;
datalines;
10/23/2023 11/28/2023
;
proc print data=dt;
run;

data dt;
input @1 d1 mmddyy10. @12 d2 mmddyy10.;
format d1 date9. d2 worddate20.;
datalines;
10/23/2023 11/28/2023
;
proc print data=dt;
run;
