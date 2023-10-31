/*DATASTEP*/
Data detail;
input id name $ course $ age;
label id = "Student id" name = "student name";
datalines;
1 vikki DA 20
2 hardhik ds 2
3 varshiths ap 25
4 shashi me 23
;
run;
/*procstep*/
proc means;
run;
/*output step*/
proc print data=detail;
where age<20;
run;




/* String concatination */
DATA st1;
length string $ 11 string $ 5;
string1="Hello";
string2="Hardhik";
sc=string1 || string2;
subs1=substrn(string1,1,5);
sub2=substrn(sc,2);
run;

/*trimn*/
Data st2;
Length str1 $ 9;
str1="Hardhik";
ls1=lengthc(str1);
ls2=lengthc(trimn(str1));
run;

/*Arrays*/
DATA arry;
input a1 $ a2 $ a3 $;
array st(3) $ a1-a3;
if "vikki" in st then available='yes'; else available='no';
datalines;
hardhik shilpa vikki
laksmi shashi hamsa
;
run;

/*Numeric*/
data nm;
input x 5.;
format x 5.2;
datalines;
7568
5.20
.2053
12.48
;
run;