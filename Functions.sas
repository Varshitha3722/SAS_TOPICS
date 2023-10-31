/* math */
Data n;
a1=20;a2=89;a3=78;a4=90;a5=-4;
max_v=max(a1,a2,a3,a4,a5);
min_v=min(a1,a2,a3,a4,a5);
med_v=median(a1,a2,a3,a4,a5);
ran_v=ranuni(0);
sart_v=sort(sum(a1,a2,a3,a4,a5));
run;

/* date */
data dt;
input @1 date1 date9. @11 date2 date9.;
format date1 date9. date2 date9.;
yr=intck('year',date1,date2);
mnt=intck('month',date1,date2);
we=weekday(date1);
to=today();
tm=time();
datalines;
10jan2021 25dec2023
20jun2021 30nov2023
;
run;

/* char */
data ch;
n1=scan("welcome to SAS",3);
n2=lowcase("VARSHITHA");
n3=upcase("dataanalyst");
n4=reverse("data");
run;

/* num */
data n;
r_v=round(3.6789);
int_v=int(5.6);
c_v=ceil(23.43);
f_v=floor(12.34);
run;

/* misc */
data zip;
st=zipstate(10001);
run;


/* loan */
data lo;
py=mort(20000,.,.10/12,10);
run;
