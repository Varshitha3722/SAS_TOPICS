/* DO INDEX */
data di;
sum = 0;
do var = 1 to 10;
var
sum = sum+var;
end;


/* DO WHILE */
Data dw;
sum = 0;
var = 1;
do while(var<11);
sum = sum+var;
var+1;
end;


/* DO UNTIL */
data du;
sum=0;
var=1;
do until(var > 10);
sum=sum+var;
var+1;
end;
proc print;
run;