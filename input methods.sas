/* list */
data ls;
input id name $ dep $;
datalines;
1 varshitha  IT
2 vikram  EEE
3 shashi    Mech
;
run;

/* named i/p */
data ni;
input
id=  name=  $  course= $ ;
datalines;
id=1 name=vikki course=ST
id=4 name=hardi course=DA
id=9 name=rithu course=AC
;
run;

/* col i/p */
data ci;
input id 1-3 name $ 4-10 position $ 11-20;
datalines;
1  shashi   Manager
2  shilpa   trainer
3  elango tester
;
run;

/* formated i/p */
data fi;
input @1 id @3name $ @12 weight;
datalines;
1 varshitha   50
2 vikram   75
3 hardhik    45
;
run;