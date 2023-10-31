/*  Arithmetic */
data a;
input @1 n1 5. @6 n2 4.;
add_=n1+n2;
sub_=n1-n2;
mul_=n1*n2;
div_=n1/n2;
exp_=n1**n2;
datalines;
123456789
987643210
;
run;

/*logical opr*/
Data a;
input @1 n1 3. @6 n2 4.;
not_ = ~(n2>n1);
datalines;
123456789
987643210
;
run;

Data and1;
input @1 n1 2. @2 n2 2. @3 n3 2.;
and_ = ((n2>n1) &  (n3>n1));
datalines;
456784
386666
381244
;
run;


Data or1;
input @1 n1 2. @2 n2 2. @3 n3 2.;
or_ = ((n2>n1) |  (n3>n1));
datalines;
456784
386666
381244
;
run;


/* Comparision opr */
Data a;
input @1 n1 5. @6 n2 4.;
e1=(n1=9876);
e2=(n2>=4867);
e3=(n1<=9876);
datalines;
123456789
987654231
;
run;


/* min/max */
data a;
input @1 n1 5. @6 n2 4. ;
min1=min(n1,n2);
max1=max(n1,n2);
datalines;
123456789
987654231
;
run;


/* concatination */
DATA st1;
length string $ 11 string $ 5;
string1="Hello";
string2="Hardhik";
sc=string1 || string2;
subs1=substrn(string1,1,5);
sub2=substrn(sc,2);
run;
