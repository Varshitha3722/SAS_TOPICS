/* Reading dataset */
data rd;
infile
"/home/u63645353/sasuser.v94/reading inputs/dataset.csv" dlm=",";
input color $ diameter label $ ;
run;

FILENAME REFFILE '/home/u63645353/sasuser.v94/reading inputs/dataset.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;



/* Writing dataset */
proc export data = sashelp.air
outfile = '/home/u63645353/sasuser.v94/AIR.csv'
dbms = dlm;
delimiter= ',';
run;

/*OPERATIONS*/

data b1;
input id name $ marks;
datalines;
1 varshitha 40
2 vikram 50
;
run;

data b2;
input id name $ score;
datalines;
1 shilpa 60
2 shashi 40
;
run;

data dept;
input id department $;
format department $mm.;
datalines;
1 EEE 
2 ECE
;
proc print data = dept;
run;


/* Concat */
data concat;
set b1(Rename=(marks=score)) b2;
run;

/* Sorting */
proc sort data=concat;
by name;
run;

/* merge */
data mer;
merge b2 dept;
by id;
proc print data = mer;
run;

/* Subseting Observation */
data ss;
set concat;
if score > 40 then delete;
run;

/* Subseting variable */
data ss1;
set mer;
keep name department;
run;

/* creating custom formating */
proc format;
value $mm  'EEE' = 'Electrical and Electronics Engineering'
           'ECE' = 'Electronics and Communication Engineering'
           'MECH' = "Mechanical Engineering"
           'CSE' = 'Computer Science Engineering'
            'IT' = 'Inforamtion Technology';

proc print data = dept;
format department $mm.;
run;