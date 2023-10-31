/* output delivery system */
ods pdf file='/home/u63645353/sasuser.v94/demo.pdf' style=EGDefault;
proc print data=sashelp.cars;
run;
ods pdf close;

ods html file='/home/u63645353/sasuser.v94/demo.html' style=EGDefault;
proc print data=sashelp.cars;
run;
ods html close;


ods rtf file='/home/u63645353/sasuser.v94/demo.rtf' style=EGDefault;
proc print data=sashelp.cars;
run;
ods rtf close;