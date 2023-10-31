DATA st;
input id name $ marks;
datalines;
1 abhi 30
2 boomi 55
3 chitra 81
;

data cst;
set st;
if marks > 80 then remarks ="good";
else if 50<marks<80 then remarks = "average";
else remarks="not good";
run;


data cst;
set st;
if marks > 80 then delete;
else if 50<marks<80 then remarks = "average";
else remarks="not good";
run;