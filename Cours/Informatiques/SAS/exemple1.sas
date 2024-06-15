/* To perform the requested tasks in SAS, you can use the following code snippets: */

/* Create the "eleves" table: */
data eleves;
    input nom $10 sexe $1 age taille poids;
    datalines;
Albert M 14 155 52.5
Louis M 15 132 35.5
Marc M 13 145 50
Valérie F 12 126 28.7
;
run;

proc import datafile="/home..."
out=eleves(rename=(VAR1=nom,VAR2=sexe,VAR3=age,VAR4=taille,VAR5=poids)) dbns=csv replace;
  delimiter=" ";
  getnames=no
run;

/* Display the created table: */
proc print data=eleves;
run;

/* Create a copy of the "eleves" table named "eleves2": */
data eleves2;
  set eleves;
run;

/* Add a new column "IMC" to the table "eleves2": */
data eleves2;
  set eleves;
  IMC = poids / ((taille / 100) ** 2);
run;

/* Create a new table "garçon" containing only boys: */
data garçon;
  set eleves;
  if sexe = 'M';
run;

/* Create a new table "fusion" to merge "eleves" and "eleves2": */
data fusion;
  set eleves eleves2;
run;

/* Sort the table "eleves" in alphabetical order of names: */
proc sort data=eleves;
  by nom;
run;

/* Apply the GLM procedure to create the model poids ~ taille age: */
proc glm data=eleves;
  model poids = taille age;
  /*output out=sortie1*/
run;
quit;

/* Calculate the correlation between pairs of variables: */
proc corr data=eleves /*plots=matrix /*graph*/;
  var age taille poids;
run;

/* Establish a multiple regression model with additional output: */
proc reg data=eleves outest=sortie /*enregistre sortie*/;
  model poids = taille age;
  /*output out=reg_out p=predicted r=residual*/;
  covout /*optenir matrice cov*/;
run;
quit;

/* Export the data from the WORK space to CSV format: */
proc export data=eleves
  outfile='/home/.../eleves.csv'
  dbms=csv
  replace;
run;

/* Make sure to adjust the file path in the last step to match the desired export location on your system. */